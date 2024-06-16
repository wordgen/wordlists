#!/usr/bin/env bash

set -e

go test -v wordlists_test.go

PKGS=("eff" "names")

select pkg_choice in "${PKGS[@]}"; do
	case "$pkg_choice" in
		"eff") PKG="eff"; break ;;
		"names") PKG="names"; break ;;
		*) echo "Invalid option."; contine ;;
	esac
done

cd "$PKG"

VERSION="$(<VERSION)"

git tag -s "$PKG/$VERSION" -m "Release $VERSION"
git push origin "$PKG/$VERSION"
