for md_file in $(ls ../../hugo/content/*md)
do
	file_name=$(basename $md_file | sed 's/.md$//g')
	echo "s/TEMPLATE_FILE_PLACEHOLDER/$file_name/g"
	sed "s/TEMPLATE_FILE_PLACEHOLDER/$file_name/g" TEMPLATE_FILE.html > $file_name.html
done

cp  ../../content/*md .
