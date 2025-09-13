# Does a good job, resizing, and reducing size
# for all files in the directory - should be jpegs!

# TODO: fix the names, so .JPEG, .jpg doesn't stay in the name, could just overwrite

for i in *; do convert $i -resize 1024x $i-1024x.jpg; done;
for i in *-1024x.jpg; do convert $i -quality 50% $i-50pct.jpg; done;
