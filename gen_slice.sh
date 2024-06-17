#!/usr/bin/env bash

if [ -z "$1" ]; then
	echo "Usage: $0 <INPUT_FILE>"
	exit 1
fi

INPUT_FILE="$1"
OUTPUT_FILE="${INPUT_FILE%.*}.go"
LOG_FILE="${INPUT_FILE%.*}_excluded.txt"

: > "$LOG_FILE"

echo \
"// Copyright (C) 2024  Daniel Kuehn <daniel@kuehn.foo>
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

package $(dirname "${INPUT_FILE%.*}")

var NewWordlist = []string{" > "$OUTPUT_FILE"

sort "$INPUT_FILE" | uniq | while IFS= read -r line; do
	if [[ "$line" =~ ^[a-zA-Z]+$ ]]; then
		lowercase_line="$(echo "$line" | tr '[:upper:]' '[:lower:]')"
		echo -e "\t\"$lowercase_line\"," >> "$OUTPUT_FILE"
	else
		echo "$line" >> "$LOG_FILE"
	fi
done

echo '}' >> "$OUTPUT_FILE"

echo "$OUTPUT_FILE"
echo "$LOG_FILE"
