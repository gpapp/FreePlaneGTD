#!/bin/bash
set -ex

declare TOP=$(dirname "$0")
declare FREEPLANE_DIR="$HOME/.config/freeplane/1.6.x"

find $TOP/src/zips/lib/freeplaneGTD -name "*.groovy" | xargs -I{} cp {} $FREEPLANE_DIR/lib/freeplaneGTD
find $TOP/src/scripts -name "*.groovy" | xargs -I{} cp {} $FREEPLANE_DIR/addons/freeplaneGTD/scripts

