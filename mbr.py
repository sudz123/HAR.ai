# Converts the skeletal data to minimum boudning rectangle for
# head, both arms and both legs

import json
import os
import re

def get_mbr(part, X, Y, C):
    part_index = {'head':[14, 15, 16, 17], 'larm': [2, 3, 4], 'rarm': [5, 6, 7], 'lleg': [8, 9, 10], 'rleg': [11, 12, 13]}
    curx, cury = [], []
    if part == 'head' and C[0] != 0:
        curx.append(X[0])
        cury.append(Y[0])

    for i in part_index[part]:
        if C[i] > 0:
            curx.append(X[i])
            cury.append(Y[i])

    if len(curx) > 1:
        xmin, xmax = min(curx), max(curx)
    else:
        xmin, xmax = 0, 0

    if len(cury) > 1:
        ymin, ymax = min(cury), max(cury)
    else:
        ymin, ymax = 0, 0

    return [xmin, ymin, xmax, ymax]

Acts = ['Approaching', 'Departing', 'Kicking', 'Pushing', 'Handshaking', 'Hugging', 'Exchanging', 'Punching']
for act in Acts:
    print (act)
    os.system('mkdir '+os.path.join('tracking_data', act))
    with open(os.path.join('tracking_data', os.path.join(act, 'frames.txt')), 'w') as frames_file:
        examples = os.listdir(act)
        examples.sort()
        for ex in examples:
            file_dir = os.path.join(act, ex)
            all_files = os.listdir(os.path.join(file_dir))
            r = re.compile(r'.*json')
            all_files = list(filter(r.match, all_files))
            all_files.sort()
            with open(os.path.join('tracking_data', os.path.join(act, ex+'.txt')), 'w') as text_file:
                frame = 0
                for f in all_files:
                    with open(os.path.join(file_dir, f)) as json_file:
                        data = json.load(json_file)
                        sk_dict = []
                        for sk in data["people"]:
                            pose = sk["pose_keypoints_2d"]
                            X, Y, C = [], [], []
                            for i in range(len(pose)):
                                if i % 3 == 0:
                                    X.append(pose[i])
                                elif i % 3 == 1:
                                    Y.append(pose[i])
                                else:
                                    C.append(pose[i])

                            sk_dict.append(get_mbr('head', X, Y, C))
                            sk_dict.append(get_mbr('larm', X, Y, C))
                            sk_dict.append(get_mbr('rarm', X, Y, C))
                            sk_dict.append(get_mbr('lleg', X, Y, C))
                            sk_dict.append(get_mbr('rleg', X, Y, C))

                        if len(sk_dict) == 5:
                            zeros = [0, 0, 0, 0]
                            for _ in range(5):
                                sk_dict.append(zeros)
                        elif len(sk_dict) == 0:
                        	zeros = [0, 0, 0, 0]
                        	for _ in range(10):
                        		sk_dict.append(zeros)

                        text_file.write('Frame:%d\n' % (frame + 1))
                        text_file.write('1,%d,%d,%d,%d,' % tuple([skd for skd in sk_dict[0]]))
                        text_file.write('1,%d,%d,%d,%d\n' % tuple([skd for skd in sk_dict[5]]))
                        text_file.write('2,%d,%d,%d,%d,' % tuple([skd for skd in sk_dict[1]]))
                        text_file.write('2,%d,%d,%d,%d\n' % tuple([skd for skd in sk_dict[6]]))
                        text_file.write('3,%d,%d,%d,%d,' % tuple([skd for skd in sk_dict[2]]))
                        text_file.write('3,%d,%d,%d,%d\n' % tuple([skd for skd in sk_dict[7]]))
                        text_file.write('4,%d,%d,%d,%d,' % tuple([skd for skd in sk_dict[3]]))
                        text_file.write('4,%d,%d,%d,%d\n' % tuple([skd for skd in sk_dict[8]]))
                        text_file.write('5,%d,%d,%d,%d,' % tuple([skd for skd in sk_dict[4]]))
                        text_file.write('5,%d,%d,%d,%d\n' % tuple([skd for skd in sk_dict[9]]))
                        for _ in range(5):
                        	text_file.write('0,0,0,0,0,0,0,0,0,0\n')
                        frame += 1

            frames_file.write('%s.txt: %d\n' % (ex, frame))
