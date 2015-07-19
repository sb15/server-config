#!/bin/bash

REPOS_ROOT=/repos/gits/
PROJECTS_ROOT=/srv/domains/

REPO=$1

if [[ -z "$REPO" ]]; then
  echo "project name not defined"
  exit
fi

REPO_DIR=$REPOS_ROOT$REPO
PROJECT_DIR=$PROJECTS_ROOT$REPO

mkdir -p $REPO_DIR
mkdir -p $PROJECT_DIR
cd $REPO_DIR

git init --bare --share

echo '#!/bin/bash' >> $REPO_DIR/hooks/post-update
printf "\n" >> $REPO_DIR/hooks/post-update
echo 'echo post-update' >> $REPO_DIR/hooks/post-update
echo "cd "$PROJECT_DIR" || exit" >> $REPO_DIR/hooks/post-update
echo 'unset GIT_DIR' >> $REPO_DIR/hooks/post-update
echo 'git pull' >> $REPO_DIR/hooks/post-update
echo 'php /bin/composer.phar update -o' >> $REPO_DIR/hooks/post-update
echo 'echo done' >> $REPO_DIR/hooks/post-update

# echo -e
chmod 775 $REPO_DIR/hooks/post-update

git clone $REPO_DIR $PROJECT_DIR

echo `date +%s` > $PROJECT_DIR/build_id
