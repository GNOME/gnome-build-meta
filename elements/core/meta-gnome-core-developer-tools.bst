# The core set is not expected to change as frequently as core-deps.
# Adding or removing elements from here should be approved by
# release team. Review the technical conditions to enter GNOME core:
# https://gitlab.gnome.org/GNOME/gnome-build-meta/-/wikis/home#technical-conditions-to-enter-gnome-core
kind: stack
depends:
- core/d-spy.bst
- core/dconf-editor.bst
- core/gnome-boxes.bst
- core/gnome-builder.bst
- core/manuals.bst
- core/sysprof-app.bst
