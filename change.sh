FILES=./charades/Charades_v1_480/*mp4
for f in $FILES
do
  dir=$(echo $f | sed 's/.mp4//g' | sed 's/.\/charades\/Charades_v1_480\///g')
  mkdir -p ./frames/$dir/
  # echo $dir
  ffmpeg -i $f -q:v 1 -r 25 ./frames/$dir/image_%5d.jpg
done
