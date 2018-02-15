#!/bin/bash
dir="../PHP-build/"
archs=(jsonp json)
apps=(get)
for arch in "${archs[@]}" ; do
	for app in "${apps[@]}" ; do
		f="${dir}/${arch}_${app}.php"
		echo '<?php' > "$f"
		cat "$arch.php" "$app.php" >> "$f"
	done
done

