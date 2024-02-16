#!/usr/bin/env sh

RCLONE_FLAGS="\
    --max-age 72h \
    --no-traverse \
    --update \
    --verbose \
    --transfers 10 \
    --checkers 8 \
    --contimeout 60s \
    --timeout 300s \
    --retries 3 \
    --low-level-retries 10 \
    --exclude .git/ \
    --exclude .auctex-auto/ \
    --exclude __pycache__/ \
    --exclude .DS_store/ \
    --exclude modules/ \
    --exclude .local/ \
"

RCLONE_DEST="drive_unicamp:backup/"
RCLONE_CMD="/opt/homebrew/bin/rclone copy"

$RCLONE_CMD $RCLONE_FLAGS "/Users/ieremies/arq" $RCLONE_DEST
$RCLONE_CMD $RCLONE_FLAGS "/Users/ieremies/aulas" $RCLONE_DEST
$RCLONE_CMD $RCLONE_FLAGS "/Users/ieremies/mest" $RCLONE_DEST
$RCLONE_CMD $RCLONE_FLAGS "/Users/ieremies/org" $RCLONE_DEST
$RCLONE_CMD $RCLONE_FLAGS "/Users/ieremies/profile" $RCLONE_DEST
$RCLONE_CMD $RCLONE_FLAGS "/Users/ieremies/.config/emacs" $RCLONE_DEST
$RCLONE_CMD $RCLONE_FLAGS "/Users/ieremies/.config/doom" $RCLONE_DEST
$RCLONE_CMD $RCLONE_FLAGS "/Users/ieremies/.config/lsd" $RCLONE_DEST
