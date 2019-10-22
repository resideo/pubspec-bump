#!/bin/sh
set -e

# get latest tag
tag=$(git describe --tags `git rev-list --tags --max-count=1`)
tag_commit=$(git rev-list -n 1 $tag)

# get current commit hash for tag
commit=$(git rev-parse HEAD)

echo $tag
echo $tag_commit
echo $commit

if [ "$tag_commit" == "$commit" ]; then
    echo "No new commits since previous tag. Skipping..."
    # exit 0
fi

# if there are none, abort
if [ -z "$tag" ]
then
    echo "No tag to sync pubspec with"
fi

yq w -i pubspec.yaml version $tag