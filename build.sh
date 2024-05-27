#!/usr/bin/bash

export SITE_DIR=/u01/www/blog.linh.social
export JEKYLL_ENV=production

eval "$(rbenv init -)"
bundle exec jekyll build -d ${SITE_DIR}

