#I believe this script finds all .txt, .cpp and .h files and moves them then deletes the folder they were in
for i in ./* ; do
	if [ -d "$i" ]; then
		echo "$i"
		cd "$i"
		top_level=$(pwd)
		echo $top_level
		
		find . -name "*.txt" -exec mv {} . \;
		find . -name "*.cpp" -exec mv {} . \;
		find . -name "*.h" -exec mv {} . \;	

		for j in ./* ; do
			if [ -d "$j" ]; then
				rm -rf "$j"
			fi
		done


		cd ..
	fi
done

