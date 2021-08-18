# The core set is not expected to change as frequently as core-deps or
# world. Adding or removing elements from here should be approved by
# release team. Review the technical conditions to enter GNOME core:
# https://gitlab.gnome.org/GNOME/gnome-build-meta/-/wikis/home#technical-conditions-to-enter-gnome-core
kind: stack
depends:
- core/dconf-editor.bst
- core/devhelp.bst
- core/gnome-builder.bst
- core/sysprof.bst
