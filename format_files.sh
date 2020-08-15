for file in *; do
	new_name=$(tr '[:upper:] ' '[:lower:]_' <<< $file)
       	if [ "$file" != "$new_name" ]; then
		mv "$file" "$new_name"
         	echo "$file is now $new_name"
	else
		echo "There is no need to format $file"
	fi
done
