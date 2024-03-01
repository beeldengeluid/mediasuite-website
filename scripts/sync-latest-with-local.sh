#!/bin/bash

# Prerequisites: this scripts requires the gh client to work
# Use this script to sync the latest build of the mediasuite-website to a local folder

VERSION_FILE=./latest
WEBSITE_DIR=./website
ARTEFACT_FILENAME=_site.tar.gz
LATEST=`gh release view --json name --jq .name`
DOWLOAD=false

echo "laatste versie was: $LATEST"

# first compare the latest tag with whatever was recored in ./latest
if [ ! -f $VERSION_FILE ]; then
    echo "No latest version yet"
    DOWNLOAD=true
elif [ `cat $VERSION_FILE` == $LATEST ]; then
    echo "yay"
else
    DOWNLOAD=true
fi

# now go ahead and download if necessary
if [ "$DOWNLOAD" = true ]; then
    echo "A new version was found: $LATEST, removing the old site first"
    rm "$WEBSITE_DIR/$ARTEFACT_FILENAME"
    echo "Downloading latest version into $WEBSITE_DIR"
    gh -R github.com/beeldengeluid/mediasuite-website release download --pattern '*.tar.gz' -O $WEBSITE_DIR/$ARTEFACT_FILENAME

    # set the current version in ./latest
    echo $LATEST > $VERSION_FILE

    # unpack the website
    cd $WEBSITE_DIR
    tar -xvvzf $ARTEFACT_FILENAME
else
    echo "No download needed"
fi
