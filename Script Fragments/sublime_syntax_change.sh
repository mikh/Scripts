#!/bin/bash
desktop="/C/Users/mikhail.andreev/Desktop"
sublime_packages="/C/Program Files/Sublime Text 3/Packages"
notepad="/C/Program Files (x86)/Notepad++/notepad++.exe"

cd $desktop
mkdir temp
temp_dir="$desktop/temp"
#echo $temp_dir
lang=$1
filename=$1
#echo $filename
filename="$filename.sublime-package"
#echo $filename
package_path="$sublime_packages/$filename"
echo $package_path
cp "$package_path" "$temp_dir"
cd $temp_dir
unzip "$filename"
cd "$lang"
language_file="$lang.tmLanguage"
"$notepad" "$language_file"
cd ..
rm $filename
tar -zcvf "$filename" "$lang"
mv "$filename" "$package_path"
cd ..
rm -rf temp

read -p "Done."