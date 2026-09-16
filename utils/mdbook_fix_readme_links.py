#!/usr/bin/env python3
#
# SPDX-License-Identifier: AGPL-3.0-or-later

import json
import sys

def main():
    """
    # Replaces things in the readme file as an mdbook preprocessor

    ## Usage in book.toml with mdbook:

    ```toml
    [preprocessor.fix-readme-links]
    after = [ "links" ]
    command = "utils/mdbook_fix_readme_links.py"

    [preprocessor.fix-readme-links.replace]
    "thing-to-replace" = "thing-to-replace-it-with"
    ```

    ## Implementation details
    util reads the config and book json over stdin from mdbook,
    does the replacements from the config file
    and it prints the book back out over stdout to mdbook.

    Refer mdbook preprocessor documentation to when doing maintenance to this utility:
    https://rust-lang.github.io/mdBook/for_developers/preprocessors.html#implementing-a-preprocessor-with-a-different-language

    """
    if len(sys.argv) > 1: # we check if we received any argument
        if sys.argv[1] == "supports":
            # then we are good to return an exit status code of 0, since the other argument will just be the renderer's name
            sys.exit(0)

    # load both the context and the book representations from stdin
    context, book = json.load(sys.stdin)
    # and now, we can just modify the content of the first chapter
    readme_content = book['items'][0]['Chapter']['content']
    for (before,after) in context["config"]["preprocessor"]["fix-readme-links"]["replace"].items():
        readme_content = readme_content.replace(before, after)
    book['items'][0]['Chapter']['content'] = readme_content
    # we are done with the book's modification, we can just print it to stdout,
    print(json.dumps(book))

if __name__ == '__main__':
    main()
