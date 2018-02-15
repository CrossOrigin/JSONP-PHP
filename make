#!/bin/bash
l="$(cat << EOF
//  CrossOrigin
//  Copyright (C) 2017-2018  Zaoqi

//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Affero General Public License as published
//  by the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.

//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Affero General Public License for more details.

//  You should have received a copy of the GNU Affero General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
EOF
)"
dir="../PHP-build/"
archs=(jsonp json)
apps=(get)
for arch in "${archs[@]}" ; do
	for app in "${apps[@]}" ; do
		f="${dir}/${arch}_${app}.php"
		echo '<?php' > "$f"
		echo "$l" >> "$f"
		cat "$arch.php" "$app.php" | sed '/^\/\//d' | sed '/^$/d' >> "$f"
	done
done

