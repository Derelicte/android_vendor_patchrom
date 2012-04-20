#!/bin/bash

LOCAL_PATH=~/WORKING_DIRECTORY/vendor/patchrom/tools/build_prop

build_prop_file=$LOCAL_PATH/build_prop_file
product="MIUI"
version="4.0.4"
revision="v1.1"

# other arguments: # product=$2 # number=$3 # version=$4

cat $build_prop_file | sed -e "s/ro\.build\.id=.*/ro\.build\.id=$product/" \
                     | sed -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=$version/" \
                     | sed -e "s/ro\.build\.display\.id=.*/ro\.build\.display\.id=$product-$version-$revision/" \
                     | sed -e "s/ro\.product\.mod_device=.*//" >> $build_prop_file.new

echo "ro.product.mod_device=$revision" >> $build_prop_file.new
echo "ro.skia.use_data_fonts=1" >> $build_prop_file.new
echo "ro.developer.name=excellence-in-coding" >> $build_prop_file.new
mv $build_prop_file.new $build_prop_file
cp $build_prop_file ../

