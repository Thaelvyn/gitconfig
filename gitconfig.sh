#!/bin/bash

function createCommitTemplate() {

echo "[JIRA-XXX] Subject line (try to keep under 50 characters)

Optional multi-line description of the commit" > ~/.gitmessage.txt
}

function createExcludedFiles() {
echo "### Linux ###
*~

# temporary files which can be created if a process still has a handle open of a deleted file
.fuse_hidden*

# KDE directory preferences
.directory

# Linux trash folder which might appear on any partition or disk
.Trash-*

# .nfs files are created when an open file is removed but is still being accessed
.nfs*

### macOS ###
# General
.DS_Store
.AppleDouble
.LSOverride

# Icon must end with two \r
Icon


# Thumbnails
._*

# Files that might appear in the root of a volume
.DocumentRevisions-V100
.fseventsd
.Spotlight-V100
.TemporaryItems
.Trashes
.VolumeIcon.icns
.com.apple.timemachine.donotpresent

# Directories potentially created on remote AFP share
.AppleDB
.AppleDesktop
Network Trash Folder
Temporary Items
.apdisk

### Windows ###
# Windows thumbnail cache files
Thumbs.db
Thumbs.db:encryptable
ehthumbs.db
ehthumbs_vista.db

# Dump file
*.stackdump

# Folder config file
[Dd]esktop.ini

# Recycle Bin used on file shares
$RECYCLE.BIN/

# Windows Installer files
*.cab
*.msi
*.msix
*.msm
*.msp

# Windows shortcuts
*.lnk
" > ~/.gitignore_global
}

echo "************************************************"
echo "**   Configuring the following git settings   **"
echo "**                                            **"
echo "** - name (username)                          **"
echo "** - email                                    **"
echo "** - editor (nano)                            **"
echo "** - default commit template                  **"
echo "** - default excluded files                   **"
echo "** - command autocorrect                      **"
echo "** - crlf correction                          **"
echo "**                                            **"
echo "************************************************"

read -p "Enter your name/username: " username
read -p "Enter your email: " email

createCommitTemplate
createExcludedFiles

git config --global user.name $username
git config --global user.email $email
git config --global core.editor nano
git config --global commit.template ~/.gitmessage.txt
git config --global core.excludesfile ~/.gitignore_global
git config --global help.autocorrect 10
git config --global core.autocrlf input

echo "** All done **"
