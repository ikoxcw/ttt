#!/bin/sh

sed -i "/# 此行之后不能写注释/,/有/{//!d}" ../custom_phrase.txt

file="./install.txt"
total_lines=$(wc -l <"$file")
line_number=1
while IFS= read -r line; do
	sed -i "/\# 此行之后不能写注释/a\\$line" ../custom_phrase.txt
	line_number=$((line_number + 1))
done <"$file"

sed -i "/nixos/a\


    
    " ../custom_phrase.txt
