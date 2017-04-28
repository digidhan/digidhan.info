for md_file in $(ls ../../hugo_content/content/*md)
do
	file_name=$(basename $md_file | sed 's/.md$//g')
	echo "s/TEMPLATE_FILE_PLACEHOLDER/$file_name/g"
	sed "s/TEMPLATE_FILE_PLACEHOLDER/$file_name/g" TEMPLATE_FILE.html > $file_name.html
	var=$(awk '/+++/{print FNR}' $md_file | tail -n 1) 
	tail -n  +$((var+1)) $md_file > $file_name.md
done




