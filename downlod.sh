wget "https://storage.googleapis.com/storage/v1/b/cartoonset_public_files/o/cartoonset10k.tgz?alt=media" -P "data/"
cd data
mv cartoonset10k.tgz?alt=media cartoonset10k.tgz
tar -xvzf cartoonset10k.tgz
rm cartoonset10k/*csv
rm cartoonset10k.tgz
