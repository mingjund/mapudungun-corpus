import os

for old_dir, new_dir in [("../TRANSCRIPTION/", "../transcription-clean/"),
                         ("../TRANSLATION/", "../translation-clean/")]:
    for file in os.listdir(old_dir):
        with open(old_dir+file, 'r', encoding='iso-8859-1') as f0:
            text =f0.read()
        with open(new_dir+file, 'w', encoding='utf8') as f1:
            f1.write(text)

