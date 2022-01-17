Archived
======
Tech Leads: Repository archived due to inactivity in more than 6 months.
Please remember to add a CODEOWNERS file to the root of the repository when unarchiving.

# git-merge-texts

Small utility script for merging texts in debitoor-app.

	npm install -g git-merge-texts

# Usage

Navigate to debitoor-app directory and run the following.

	git-merge-texts

The command will update the `texts` branch and try to merge it to the current branch. In case of conflicts in the `translations.json` file, it will use the version in the `texts` branch.
