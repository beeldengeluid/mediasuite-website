#!/bin/bash

# Prerequisites: this scripts requires the gh client to work
# Use this script to sync the latest build of the mediasuite-website to a local folder

GITHUB_REPO=github.com/beeldengeluid/mediasuite-website
VERSION_FILE=./latest
WEBSITE_DIR=./website
EXTRACTION_DIR=_site
ARTEFACT_FILENAME=_site.tar.gz

# PATHs
EXTRACTION_PATH="${WEBSITE_DIR}/${EXTRACTION_DIR}"
ARTEFACT_PATH="${WEBSITE_DIR}/${ARTEFACT_FILENAME}"

# backup PATHs
OLD_EXTRACTION_PATH="${WEBSITE_DIR}/${EXTRACTION_DIR}__OLD"
OLD_ARTEFACT_PATH="${WEBSITE_DIR}/${ARTEFACT_FILENAME}.old"

# Uses the gh client to get the latest release version number
get_gh_version(){
    echo `gh release view --json name --jq .name` && return
}

# Obtains the downloaded version from VERSION_FILE (if it exists)
get_download_version(){
    if [ ! -f $VERSION_FILE ]; then
        echo "Unknown" && return
    fi
    echo `cat $VERSION_FILE` && return
}


DOWNLOAD_VERSION=`get_download_version`
GH_VERSION=`get_gh_version`
echo "Last version in GH: $GH_VERSION; last version downloaded: $DOWNLOAD_VERSION"

requires_download(){

    if [  $DOWNLOAD_VERSION == $GH_VERSION ]; then
        echo "Download version is up-to-date ($DOWNLOAD_VERSION), no download needed"
        false
        return
    else
        echo "Download needed since $DOWNLOAD_VERSION != $GH_VERSION"
        true
        return
    fi
}

# before downloading a new version backup the old site data
backup_old_site(){
    echo "Backing up previously downloaded site"
    if [ -d $EXTRACTION_PATH ] && [ -f $ARTEFACT_PATH ]; then
        mv $EXTRACTION_PATH $OLD_EXTRACTION_PATH && \
        mv $ARTEFACT_PATH $OLD_ARTEFACT_PATH && \
        echo "Successfully renamed $EXTRACTION_PATH -> $OLD_EXTRACTION_PATH" && \
        echo "Successfully renamed $ARTEFACT_PATH -> $OLD_ARTEFACT_PATH" && \
        return
    elif [ -d $OLD_EXTRACTION_PATH ] && [ -f $OLD_ARTEFACT_PATH ]; then
        echo "Backup already exists, skipping" && return
    fi
    false
}

# the backup is only valuable before we're sure the latest version was downloaded successfully
delete_previous_backup(){
    if [ -d $OLD_EXTRACTION_PATH ] && [ -f $OLD_ARTEFACT_PATH ]; then
        rm -rf $OLD_EXTRACTION_PATH && \
        rm -f $OLD_ARTEFACT_PATH && \
        echo "Successfully deleted $OLD_EXTRACTION_PATH" && \
        echo "Successfully deleted $OLD_ARTEFACT_PATH" && \
        return
    fi
    echo "Failed to find or delete backup data"
    false
}

# in case download fails, restore the previous version
restore_backup(){
    if [ -d $OLD_EXTRACTION_DIR ] && [ -f $OLD_ARTEFACT_PATH ]; then
        mv $OLD_EXTRACTION_PATH $EXTRACTION_PATH && \
        mv $OLD_ARTEFACT_PATH $ARTEFACT_PATH && \
        echo "Successfully renamed $OLD_EXTRACTION_PATH -> $EXTRACTION_PATH" && \
        echo "Successfully renamed $OLD_ARTEFACT_PATH -> $ARTEFACT_PATH" && \
        return
    fi
    echo "Critical: Failed to restore backup data!"
    false
}

download_from_gh(){
    echo "Downloading latest version into $WEBSITE_DIR"
    gh -R $GITHUB_REPO release download --pattern '*.tar.gz' -O $ARTEFACT_PATH && return
    false
}

# download the latest version and make sure the old version is backed up in case of failure
download_latest_from_gh(){
    # first check if there is an old backup & delete it
    delete_previous_backup

    # then create a new backup of the current site data
    echo "A new version was found: $GH_VERSION, backing up the old site data first"
    if ! backup_old_site; then
        echo "Could not rename old data, quitting" && return
    fi

    # now download the latest version from GH
    if download_from_gh ; then
        # set the current version in ./latest
        echo $GH_VERSION > $VERSION_FILE

        # unpack the website
        cd $WEBSITE_DIR
        tar -xvvzf $ARTEFACT_FILENAME
        return
    else
        echo "Download failed, restoring old site"
        restore_backup
        return
    fi
}

# main
if requires_download ; then
    download_latest_from_gh
else
    echo "No download needed"
fi
