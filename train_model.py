# Runs all the selected neural network models

from keras.models import Model, load_model
from keras.layers import CuDNNLSTM, CuDNNGRU, Input, Dropout
from keras.layers import Dense, Concatenate, Lambda, Flatten
from keras.layers import Activation, BatchNormalization, Bidirectional
from keras.regularizers import l2
from keras.utils import to_categorical, plot_model
import keras.backend as K
import tensorflow as tf
import numpy as np
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score
import random
import pickle
import Act_Models
from google.colab import drive
drive.mount('/content/drive', force_remount=True)



Acts_all = ['Approaching', 'Departing', 'Kicking', 'Pushing', 'Punching', 'Handshaking', 'Exchanging', 'Hugging']


file = open('drive/My Drive/Colab Notebooks/SBUKIv2/tracking.pickle', 'rb')
sk = pickle.load(file)
file.close()


X = {}
for act in Acts_all:
    file = open('drive/My Drive/Colab Notebooks/SBUKIv2/'+act+'.pickle', 'rb')
    data_dict = pickle.load(file)
    file.close()
    data_dict['topc'] = np.asarray(data_dict['topc'])
    data_dict['topw'] = np.asarray(data_dict['topw'])
    X[act] = data_dict
    sk[act] = np.asarray(sk[act], dtype=np.float64)
#     sk[act] /= 640.0
    for i in range(0, 8, 2):
        sk[act][:, :, :, i] /= 640.0
        sk[act][:, :, :, i + 1] /= 480.0

    
for act in Acts_all:
    print(act, len(X[act]['topc']))



# import the test data
ws = [1920.0, 1280.0]
hs = [1080.0, 720.0]
vn = 2

file = open('drive/My Drive/Colab Notebooks/SBUKIv3/Approaching_v'+str(vn)+'.pickle', 'rb')
Xv2 = pickle.load(file)
Xv2c = np.asarray(Xv2['topc'])
Xv2w = np.asarray(Xv2['topw'])
file.close()

file = open('drive/My Drive/Colab Notebooks/SBUKIv3/Approaching_tracking_v'+str(vn)+'.pickle', 'rb')
Xv2sk = np.asarray(pickle.load(file))
Xv2sk = np.expand_dims(Xv2sk, axis=0)
for i in range(0, 8, 2):
        sk[act][:, :, :, i] /= ws[vn-2]
        sk[act][:, :, :, i + 1] /= hs[vn-2]
file.close()

print(Xv2c.shape, Xv2w.shape, Xv2sk.shape)



# train the model
itrs = 5
n = 5
results = {'softmax_train' : [], 'softmax_test' : [], 'random_forest_train' : [], 'random_forest_test' : []}
models = []

for _ in range(itrs):
    it = 0
    Xc_train, Xc_test, Xw_train, Xw_test, Xsk_train, Xsk_test, Y_train_rf, Y_test_rf = [], [], [], [], [], [], [], []
    for act in Acts_all:
        Xc_train.extend(X[act]['topc'])
        Xc_test.extend(X2[act]['topc'])
        Xw_train.extend(X[act]['topw'])
        Xw_test.extend(X2[act]['topw'])
        Xsk_train.extend(sk[act])
        Xsk_test.extend(sk2[act])
        Y_train_rf.extend([it for i in range(len(X[act]['topc']))])
        Y_test_rf.extend([it for i in range(len(X2[act]['topc']))])
        it += 1

    Xc_train = np.asarray(Xc_train)
    Xw_train = np.asarray(Xw_train)
    Xc_test = np.asarray(Xc_test)
    Xw_test = np.asarray(Xw_test)
    Xsk_train = np.asarray(Xsk_train)
    Xsk_test = np.asarray(Xsk_test)
    Y_train_rf = np.asarray(Y_train_rf)
    Y_test_rf = np.asarray(Y_test_rf)
    Y_train = to_categorical(Y_train_rf, len(Acts_all))
    Y_test = to_categorical(Y_test_rf, len(Acts_all))

    perm = np.random.permutation(Xc_train.shape[0])
    Xc_train = Xc_train[perm]
    Xsk_train = Xsk_train[perm]
    Xw_train = Xw_train[perm]
    Y_train = Y_train[perm]
    Y_train_rf = Y_train_rf[perm]

    perm = np.random.permutation(Xc_test.shape[0])
    Xc_test = Xc_test[perm]
    Xsk_test = Xsk_test[perm]
    Xw_test = Xw_test[perm]
    Y_test = Y_test[perm]
    Y_test_rf = Y_test_rf[perm]

    model = Act_Models.Model4.create_model(Xc_train.shape[1:], Xw_train.shape[1:], Xsk_train.shape[1:], len(Acts_all))
    model.compile(optimizer='adam', loss='categorical_crossentropy', metrics=['accuracy'])
    model.fit([Xc_train, Xw_train, Xsk_train], Y_train, batch_size=16, epochs=80)
    
    model_history = model.evaluate([Xc_train, Xw_train, Xsk_train], Y_train)
    results['softmax_train'].append(model_history[1])
    print(model_history)
    
    predictions = model.predict([Xc_test, Xw_test, Xsk_test])
    predictions = np.argmax(predictions, axis=-1)
    acc = {act:0 for act in Acts_all}
    for i in range(len(predictions)):
        if predictions[i] == Y_test_rf[i]:
            acc[Acts_all[Y_test_rf[i]]] += 1
    for act in Acts_all:
        print ('%s: %.3f' % (act, acc[act]/len(X2[act]) * 100))

    eval_history = model.evaluate([Xc_test, Xw_test, Xsk_test], Y_test)
    results['softmax_test'].append(eval_history[1])
    print (eval_history[1])

    rand_model = Model(inputs = model.input, outputs = model.layers[-2].output)
    train_features = rand_model.predict([Xc_train, Xw_train, Xsk_train])
    test_features = rand_model.predict([Xc_test, Xw_test, Xsk_test])
    
    clf = RandomForestClassifier(n_estimators=100)

    clf.fit(train_features, Y_train)
    train_out = clf.predict(train_features)
    train_acc = accuracy_score(Y_train, train_out)
    results['random_forest_train'].append(train_acc)
    print(train_acc)

    test_out = clf.predict(test_features)
    test_acc = accuracy_score(Y_test, test_out)
    results['random_forest_test'].append(test_acc)
    print(test_acc)
    
    acc = {act:0 for act in Acts_all}
    predictions = np.argmax(test_out, axis=-1)
    for i in range(len(predictions)):
        if predictions[i] == Y_test_rf[i]:
            acc[Acts_all[Y_test_rf[i]]] += 1
    for act in Acts_all:
        print ('%s: %.3f' % (act, acc[act]/len(X2[act]) * 100))
    
    
    total = 0
    acc = {act:0 for act in Acts_all}
    for i in range(len(test_features)):
        dist = []
        for j in range(len(train_features)):
            dist.append(np.linalg.norm(test_features[i] - train_features[j]))
        sortind = np.argsort(dist)
        topind = sortind[:10]
        counter = [0] * 8
        for ind in topind:
            counter[np.argmax(Y_train[ind])] += 1

        if np.argmax(counter) == Y_test_rf[i]:
            total += 1
            acc[Acts_all[Y_test_rf[i]]] += 1

    print("Test Accuracy with Siamese:", total/len(test_features) * 100)
    for act in Acts_all:
        print ('%s: %.3f' % (act, acc[act]/len(X2[act]) * 100))
    
    models.append(model)
