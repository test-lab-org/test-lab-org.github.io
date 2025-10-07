#!/bin/bash

input_file="fundamental.png"
output_file="fundamental_compressed.png"
target_size=102400  # 100 KB in bytes
quality=80  # starting quality

while true; do
    pngquant --quality=$quality --force --output "$output_file" "$input_file"

    actual_size=$(stat -c%s "$output_file")  # get file size in bytes
    if [ "$actual_size" -le "$target_size" ]; then
        echo "Compression successful: $actual_size bytes"
        break
    fi

    quality=$((quality - 5))  # decrease quality in steps
    if [ "$quality" -le 20 ]; then
        echo "Reached minimum quality threshold -> end."
        break
    fi
done
