# git-merge-texts

Small utility script for merging texts in debitoor-app.

	npm install -g git-merge-texts

# Usage

Navigate to debitoor-app directory and run the following.

	git-merge-texts

The command will update the `texts` branch and try to merge it to the current branch. In case of conflicts in the `translations.json` file, it will use the version in the `texts` branch.
