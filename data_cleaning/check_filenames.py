import os

wav_files = set(f.split('.')[0] for f in (os.listdir('../AUDIO/AUDIO Lafkenche/') + os.listdir('../AUDIO/AUDIO Nguluche/') + os.listdir('../AUDIO/AUDIO Pewenche/')))
trl_files = set(f.split('.')[0] for f in os.listdir('../TRANSCRIPTION/') if f.endswith('.trl'))
mar_files = set(f.split('.')[0] for f in os.listdir('../TRANSCRIPTION/') if f.endswith('.mar'))
txt_files = set(f.split('.')[0] for f in os.listdir('../TRANSLATION/'))

missing_wav = [file+'.wav' for file in set(list(trl_files - wav_files) + list(txt_files - wav_files))]
missing_trl = [file+'.trl' for file in set(list(wav_files - trl_files) + list(txt_files - trl_files))]
missing_txt = [file+'.txt' for file in set(list(wav_files - txt_files) + list(trl_files - txt_files))]

empty_mar = {
'nmlch-lfjhc2',
'nmlch-lflql1',
'nmlch-lfmcnB2',
'nmlch-lfrq',
'nmlch-lflql2',
'nmlch-nfmqA1',
'nmlch-nmkcnA1',
'nmlch-lfmlq1',
'nmlch-pfcmcB1',
'nmlch-nmjcmA1',
'nmlch-nfmcB1',
'nmlch-nfmqA2',
'nmlch-lfmcnA1',
'nmlch-lmjhB1',
'nmlch-nfmam2',
'nmlch-lfmcnA2',
'nmlch-pmareA1',
'nmlch-lfjhc1',
'nmlch-lfmlq2',
}

missing_files = missing_wav + missing_trl + missing_txt + [file+'.mar empty' for file in empty_mar]
print('missing files:')
print('\n'.join(missing_files))

complete_sets = wav_files.intersection(trl_files, mar_files, txt_files) - empty_mar
print(len(complete_sets), 'complete file sets')

with open('missing_files.txt', 'w') as f:
    f.write('\n'.join(missing_files))

with open('complete_file_sets.txt', 'w') as f:
    f.write('\n'.join(complete_sets))
