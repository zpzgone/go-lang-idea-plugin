#!/bin/sh
echo "\033[0;32mDeploying updates go GitHub...\033[0m"

hugo
message="Updating site `date`"
if [ $# -eq 1 ]
	then msg="$1"
fi

git commit -am "$msg"
git push origin site
git subtree push --prefix=public origin gh-pages
