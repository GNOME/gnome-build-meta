#!/bin/bash

set -eu

: ${REPO_MODE:=local}
export BST="${BST:-bst} -o repo_mode ${REPO_MODE}"

if [ "${REPO_MODE}" = local ]; then
    ./utils/update-local-repo.sh
fi

${BST} track vm/image.bst
${BST} build vm/image.bst
${BST} checkout vm/image.bst image
