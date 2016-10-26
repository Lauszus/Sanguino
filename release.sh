#!/bin/sh -e
# Script to automatically download the project including all submodules
# It then zips the hardware add-on and calculate the SHA-256 and file size
# This is used with the Arduino Boards Manager

url=https://github.com/Lauszus/Sanguino.git
hardware_add_on_path=avr

dir="$(cd "$(dirname "$0")" && pwd)"
echo "Working path: $dir"

name=$(echo $(echo $url | rev | cut -d'/' -f 1 | rev) | cut -d'.' -f 1)
echo "\nClone Project: $name\n"
git clone --depth 1 --single-branch -b master --recursive $url || exit 1
cd "$name"

echo "\nRemove git files"
find . -name .git | xargs rm -rf
find . -name .gitmodules | xargs rm -rf
find . -name .gitignore | xargs rm -rf
find . -name .gitattributes | xargs rm -rf

cd "$dir"
mv "$name/$hardware_add_on_path" "$dir/$name-hardware" # Rename avr directory and move out of folder

echo "Remove \"$name\" directory"
rm -rf $name

mv "$dir/$name-hardware" "$dir/$name" # Rename hardware directory to the original name

echo "ZIP hardware directory"
zip -rq "$name" "$name" # Zip the hardware add-on

echo "Remove hardware directory"
rm -rf "$name"

# Calculate SHA-256 and file size of hardware add-on used for "package_lauszus_sanguino_index.json"
echo \"checksum\": \"SHA-256:`shasum -a 256 $name.zip | awk '{print $1}'`\",
echo \"size\": \"`ls -l $name.zip | awk '{print $5}'`\",
