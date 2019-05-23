# Bidirectional LSTM model using 5 body parts only
def create_model(s1, s2, s3, num_classes):
    Xc = Input(shape=s1)
    Xw = Input(shape=s2)
    Xsk = Input(shape=s3)
    
    rnn = [Bidirectional(CuDNNLSTM(32, kernel_regularizer=l2(0.1), return_sequences=True)) for _ in range(5)]
    X = []

    for i in range(5):
        for j in range(5):
            x = Lambda(lambda x: x[:, :, i, j, :])(Xc)
            x = rnn[j](x)
            x = BatchNormalization()(x)
            x = Activation('relu')(x)
            X.append(x)
    
    X.append(Xw)
    X = Concatenate()(X)
    
    X = Bidirectional(CuDNNLSTM(64, kernel_regularizer=l2(0.1), return_sequences=True))(X)
    X = BatchNormalization()(X)
    X = Activation('relu')(X)
    
    X_sklstm = []
    rnnsk = [Bidirectional(CuDNNLSTM(32, kernel_regularizer=l2(0.1), return_sequences=True)) for _ in range(5)]
    for i in range(5):
        x = Lambda(lambda x: x[:, :, i, :] )(Xsk)
        x = rnnsk[i](x)
        x = BatchNormalization()(x)
        x = Activation('relu')(x)
        X_sklstm.append(x)
       
    X_sklstm = Concatenate()(X_sklstm)
    X_sklstm = Bidirectional(CuDNNLSTM(64, kernel_regularizer=l2(0.1), return_sequences=True))(X_sklstm)
    X_sklstm = BatchNormalization()(X_sklstm)
    X_sklstm = Activation('relu')(X_sklstm)
    
    X_all = [X, X_sklstm]
    X = Concatenate()(X_all)
    X = Bidirectional(CuDNNLSTM(64, kernel_regularizer=l2(0.1)))(X)
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