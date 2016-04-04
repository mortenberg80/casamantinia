#!/bin/bash
if [ -d "_site" ]; then
  echo "Removing old site"
  rm -rf _site
fi
echo "Building site"
jekyll build
echo "Publishing site to ftp.domeneshop.no"
rsync -avz _site/ mantinia@login.domeneshop.no:www/
