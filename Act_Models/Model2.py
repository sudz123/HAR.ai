# LSTM model using 6 body parts including torso
def create_model(s1, s2, s3, num_classes):
    Xc = Input(shape=s1)
    Xw = Input(shape=s2)
    Xsk = Input(shape=s3)
    
    rnn = CuDNNGRU(32, kernel_regularizer=l2(0.1), return_sequences=True)
    X = []

    for i in range(6):
        for j in range(6):
            x = Lambda(lambda x: x[:, :, i, j, :])(Xc)
            x = rnn(x)
            x = BatchNormalization()(x)
            x = Activation('relu')(x)
            X.append(x)
    
    X.append(Xw)
    X = Concatenate()(X)
    
    X = CuDNNGRU(64, kernel_regularizer=l2(0.1), return_sequences=True)(X)
    X = BatchNormalization()(X)
    X = Activation('relu')(X)
    
    X_sklstm = []
    rnnsk = CuDNNGRU(32, kernel_regularizer=l2(0.1), return_sequences=True)
    for i in range(6):
        x = Lambda(lambda x: x[:, :, i, :] )(Xsk)
        x = rnnsk(x)
        x = BatchNormalization()(x)
        x = Activation('relu')(x)
        X_sklstm.append(x)
       
    X_sklstm = Concatenate()(X_sklstm)
    X_sklstm = CuDNNGRU(64, kernel_regularizer=l2(0.1), return_sequences=True)(X_sklstm)
    X_sklstm = BatchNormalization()(X_sklstm)
    X_sklstm = Activation('relu')(X_sklstm)
    
    X_all = [X, X_sklstm]
    X = Concatenate()(X_all)
    X = CuDNNGRU(64, kernel_regularizer=l2(0.1))(X)
    X = BatchNormalization()(X)
    X = Activation('relu')(X)
    
    X = Dense(64, kernel_regularizer=l2(0.1))(X)
    X = BatchNormalization()(X)
    X = Activation('relu')(X)
    X = Dense(64, kernel_regularizer=l2(0.1))(X)
    X = BatchNormalization()(X)
    X = Activation('relu')(X)
    Y = Dense(num_classes, activation='softmax')(X)
    
    return Model(inputs=[Xc, Xw, Xsk], outputs=Y)