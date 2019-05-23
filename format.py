# Converts the TAG data to pickle files

import pickle

Acts = ['Approaching', 'Departing', 'Kicking', 'Pushing', 'Handshaking', 'Hugging', 'Exchanging', 'Punching']
top_dict = {ch:i for i, ch in enumerate(['X', 'DR', 'PO', 'EQ', 'PP', 'PPI'], start=0)}
dist_dict = {ch:i for i, ch in enumerate(['X', 'Away', 'Near', 'Close', 'Conn'], start=0)}

maxframes = 46

for act in Acts:
    file = open(act+'_ExtC9_cw.txt', 'r')
    lines = file.readlines()
    file.close()

    examples = {'topc':[], 'topw':[]}
    for line in lines:
        rels = line.split()
        topc, topw = [], []
        frames = int(rels[0])
        a = 1
        for i in range(frames):
            topc.append(list())
            for j in range(6):
                if j < 5:
                    topc[i].append(list())
                for k in range(6):
                    rel = rels[a].split('-')
                    a += 1
                    if j == 5 or k == 5:
                        continue

                    if top_dict[rel[0]] != 0:
                        topc[i][j].append([int(i == top_dict[rel[0]]) for i in range(5)])
                    else:
                        topc[i][j].append([0 for i in range(5)])

                    if dist_dict[rel[2]] != 0:
                        topc[i][j][k].extend([int(i == dist_dict[rel[2]]) for i in range(4)])
                    else:
                        topc[i][j][k].extend([0 for i in range(4)])

        for i in range(frames, maxframes):
            topc.append(list())
            for j in range(5):
                topc[i].append(list())
                for k in range(5):
                    topc[i][j].append([0 for i in range(9)])


        for i in range(frames):
            rel = rels[a].split('-')
            a += 1
            if top_dict[rel[0]] != 0:
                topw.append([int(i == top_dict[rel[0]]) for i in range(5)])
            else:
                topw.append([0 for i in range(5)])
            if dist_dict[rel[2]] != 0:
                topw[i].extend([int(i == dist_dict[rel[2]]) for i in range(4)])
            else:
                topw[i].extend([0 for i in range(4)])

        for i in range(frames, maxframes):
            topw.append([0 for i in range(9)])


        examples['topc'].append(topc)
        examples['topw'].append(topw)

    print(act, len(examples['topw']))
    file = open(act+'_v3.pickle', 'wb')
    pickle.dump(examples, file)
    file.close()
