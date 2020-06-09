# mapudungun-corpus

This repository contains the cleaned version of the Mapudungun dataset collected for the AVENUE project by CMU, the Chilean Ministry of Education, and the Instituto de Estudios Indígenas at Universidad de La Frontera.

You can download the raw audio data for all files from [here](http://tts.speech.cs.cmu.edu/mapudungun/AUDIO.zip).

The `TRANSCRIPTION` and `TRANSLATION` directories include the original transcriptions and translations.
The `transcription-clean` and `translation-clean` directories include cleaned versions with additional annotations removed, in order to be used for speech recognition, synthesis, and machine translation experiments. The necessary scripts for producing these clean versions are available in the `data-cleaning` directory.

The training, dev, and test dataset splits for our baseline experiments are listed under `dataset_splits`.

# Baseline Results 

# Citation

If you use the original raw data, please use the following citation:
~~~
@dataset{mapudungun,
	title={Mapudungun Speech Corpus},
	author={Luis Caniupil, Flor Caniupil; Héctor Painequeo; Rosendo Huisca; Hugo Carrasco; Rodolfo M Vega; Lori Levin; Jaime Carbonell}
}
~~~

If you use the cleaned dataset or if you compare to our baseline results, please use the following citation:
~~~
@misc{duan2019mapudungun,
	author={Mingjun Duan, Carlos Fasola, Sai Krishna Rallabandi, Rodolfo M. Vega, Antonios Anastasopoulos, Lori Levin, and Alan W Black}
	title={A Resource for Computational Experiments on Mapudungun},
	note={preprint},
	year={2019}
}
~~~


