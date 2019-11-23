

ALIGNDIR="../transcription-2align"
mkdir -p $ALIGNDIR

for f in ../transcription-clean/*.trl; 
do 
	echo "$f" 
	bname=`basename "$f"`
	sed "s/<\*SPA>//g" $f > $ALIGNDIR/$bname
	# Some noise issues
	sed -i "s/\*SPA>//g" $ALIGNDIR/$bname
	sed -i "s/<SPA>//g" $ALIGNDIR/$bname
	sed -i "s/< SPA>//g" $ALIGNDIR/$bname
	sed -i "s/< \*SPA>//g" $ALIGNDIR/$bname
	sed -i "s/ SPA>//g" $ALIGNDIR/$bname


	sed -i "s:-\/::g" $ALIGNDIR/$bname
	sed -i "s:\/-::g" $ALIGNDIR/$bname
	sed -i "s:+\/::g" $ALIGNDIR/$bname
	sed -i "s:\/+::g" $ALIGNDIR/$bname

	cp $ALIGNDIR/$bname temp
	python3 fix_double.py > $ALIGNDIR/$bname
	rm temp
	#python3 fix_double.py

done
