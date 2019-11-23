
au=../AUDIO
trl=../TRANSLATION
trs=../TRANSCRIPTION

echo "Rename files..."
mv $au/AUDIO\ Nguluche/nfmcp-nfemm1\ .wav $au/AUDIO\ Nguluche/nfmcp-nfemm1.wav
mv $au/AUDIO\ Nguluche/nmdch_nmdch.wav $au/AUDIO\ Nguluche/nmdch-nmdch.wav

mv $trl/nmlch-nfmp_2.txt $trl/nmlch-nfpm_2.txt

mv $trl/nmlch-\ nmjm1.txt $trl/nmlch-nmjm1.txt
mv $trl/nmlch-\ nmjm2.txt $trl/nmlch-nmjm2.txt

mv $trs/nmlch-nmjnn2..mar $trs/nmlch-nmjnn2.mar
mv $trs/nmlch-nmjnn2..trl $trs/nmlch-nmjnn2.trl
mv $trs/nmlch-nmjnn2..trl.set $trs/nmlch-nmjnn2.trl.set

mv $au/AUDIO\ Nguluche/nmlch_nmlch.wav $au/AUDIO\ Nguluche/nmlch-nmlch.wav

mv $trl/nmlch-pfbncA2.txt $trl/nmlch-pfbnc2.txt
mv $trl/nmlch-pfbncA3.txt $trl/nmlch-pfbnc3.txt
mv $trl/nmlch-pfbncA4.txt $trl/nmlch-pfbnc4.txt

mv $au/nmlch-pfrhf.wav $au/nmlch-pfrhf1.wav

mv $au/AUDIO\ Pewenche/nmlch-pmare.wav $au/AUDIO\ Pewenche/nmlch-pmareB1.wav
mv $au/AUDIO\ Pewenche/nmlch-pmare2.wav $au/AUDIO\ Pewenche/nmlch-pmareB2.wav

mv $trs/nmlch-nfrn.mar $trs/nmlch-nfrn1.mar

mv $trl/nmLch-nmfnn2.txt $trl/nmlch-nmfnn2.txt
mv $trl/mnlch-nfdqqA1.txt $trl/nmlch-nfdqqA1.txt
mv $trl/nmlch-lfrq1.txt $trl/nmlch-lfrq.txt

mv $au/AUDIO\ Pewenche/NMLCH-PFSM_1.WAV $au/AUDIO\ Pewenche/nmlch-pfsm_1.wav
mv $au/AUDIO\ Pewenche/NMLCH-PFSM_2.WAV $au/AUDIO\ Pewenche/nmlch-pfsm_2.wav
mv $au/AUDIO\ Pewenche/NMLCH-PFMAM1.WAV $au/AUDIO\ Pewenche/nmlch-pfmam1.wav
mv $au/AUDIO\ Pewenche/NMLCH-PFMAM2.WAV $au/AUDIO\ Pewenche/nmlch-pfmam2.wav

mv $au/AUDIO\ Lafkenche/nmlch-lfmmcA.wav $au/AUDIO\ Lafkenche/nmlch-lfmmcA1.wav

echo "Remove duplicate files..."
rm $au/AUDIO\ Nguluche/nmlch-nfmcA1.wav $au/AUDIO\ Nguluche/nmlch-nfmcA2.wav
rm $au/AUDIO\ Nguluche/nmlch-nmjnnA1.wav $au/AUDIO\ Nguluche/nmlch-nmjnnA2.wav

mv $trl/nmlch-nfmp_1.txt $trl/nmlch-nfpm_1.txt
rm $trs/nmlch-nfmp_1.trl $trs/nmlch-nfmp_1.trl.set $trs/nmlch-nfmp_1.mar
