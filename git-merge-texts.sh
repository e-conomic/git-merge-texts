#!/bin/bash
set -x

function commit_translations() {
	git commit -m "Merge texts"
}

function merge_translations() {
	git fetch origin texts:texts
	git merge texts --squash

	local conflicts=$(git diff --name-only --diff-filter=U | sed 's/[ \t\n]+$//')
	local translations="$(git rev-parse --show-toplevel)/source/texts/translations.json"

	if [ "$conflicts" == "source/texts/translations.json" ]; then
		git checkout "$translations" --theirs
		git add "$translations"
		commit_translations
	elif [ -z "$conflicts" ]; then
		commit_translations
	else
		git reset --merge ORIG_HEAD
	fi
}

merge_translations
