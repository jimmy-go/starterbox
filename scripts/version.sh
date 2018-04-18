#!/bin/sh
## Returns a string with format: $semver-$commit hash-$environment.
## Environment can be empty because branches develop/master/release
## are the only ones to take into account.

set -o errexit
set -o nounset

SEMVER=$(git tag -l |head -1)
if [ -z "$SEMVER" ]; then
    SEMVER=0.0.0
fi

HASH=$(git describe --tags --always)
BRANCH=$(git branch -a| grep "\\*" | cut -d ' ' -f2)

if [ ! -z ${TRAVIS_BRANCH+x} ]; then
    case "${BRANCH}" in
        *HEAD*)
                BRANCH=${TRAVIS_BRANCH}
            ;;
        *detached*)
            BRANCH=${TRAVIS_BRANCH}
            ;;
    esac
fi

E_ENV=""
case "${BRANCH}" in
    *master*)
        E_ENV=-prod
        ;;
    *develop*)
        E_ENV=-dev
        ;;
    *release*)
        E_ENV=-staging
        ;;
esac

VERSION_NAME="${SEMVER}-${HASH}${E_ENV}"
echo "$VERSION_NAME"
