#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "No version number supplied"
    exit 1
fi
VERSION=$1

VERSION_NO=v${VERSION}
read -r -d '' RELEASE_NOTES << EOM
* Add platformio project
* Remove websocket sources, use external dependency instead
* Make websockets work again
* Remove RemoteDebug_Advanced example; replaced by 'simple' example
* Remove "old color mode" code
* Add some documentation (example, usage, publishing the library)
* Bump version to 4.0.0
EOM

gh repo set-default karol-brejna-i/RemoteDebug
gh release create $VERSION --title "$VERSION" --notes "$RELEASE_NOTES"
