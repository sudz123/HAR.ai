# Converts the mbr data to pickle files

import os
import pickle

Acts = ['Approaching', 'Departing', 'Kicking', 'Pushing', 'Handshaking', 'Hugging', 'Exchanging', 'Punching']

maxframes = 0
for act in Acts:
    with open(act+'/frames.txt', 'r') as frames_file:
        lines = frames_file.readlines()
        for line in lines:
            rel = line.split()
            maxframes = max(maxframes, int(rel[1]))
print (maxframes)

for act in Acts:
    files = os.listdir(act)
    files.sort()
    for txt_file in files:
        if txt_file == 'frames.txt':
            continue
        with open(os.path.join(act, txt_file), 'r') as act_file:
            cur = []
            lines = act_file.readlines()
            for i in range(int(len(lines)/11)):
                j = i * 11
                cur.append([])
                for k in range(1, 6):
                    cur[-1].append([])
                    data = lines[j + k].split(',')
                    for m in range(1, 10):
                        if m == 5:
                            continue
                        cur[-1][-1].append(float(data[m]))

            for i in range(int(len(lines)/6), maxframes):
                cur.append([])
                for k in range(1, 6):
                    cur[-1].append([0, 0, 0, 0, 0, 0, 0, 0])
            pfile = open(act+'_tracking_v3.pickle', 'wb')
            pickle.dump(cur, pfile)
            pfile.close()
