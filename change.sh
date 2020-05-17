avi=`find /charades/Charades_v1_480 -name \*.mp4`

for i in $avi; do
  dir=`echo $i | cut -d. -f1`
  f1=`echo $dir | cut -d/ -f7`
  echo $dir $f1
  rm -rf ./frames/$f1/
  mkdir -p ./frames/$f1/
  ffmpeg -i $i -q:v 1 -r 25 ./frames/$f1/image_%5d.jpg
done
