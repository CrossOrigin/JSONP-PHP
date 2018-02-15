#!/bin/bash
dir="build"
archs=('jsonp')
apps=('get')
for arch in "${archs[@]}" ; do
	rm "${dir}/${arch}_"*".php" 2>/dev/null
	for app in "${apps[@]}" ; do
		f="${dir}/${arch}_${app}.php"
		echo '<?php' > "$f"
		cat "$arch.php" "$app.php" >> "$f"
	done
done

