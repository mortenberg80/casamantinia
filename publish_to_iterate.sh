#!/bin/bash
echo "Publishing site to app.iterate.no"
scp -r _site/* morten@app.iterate.no:public_html/mantinia
