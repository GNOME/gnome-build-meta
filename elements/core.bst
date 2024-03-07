# The core set is not expected to change as frequently as core-deps.
# Adding or removing elements from here should be approved by
# release team. Review the technical conditions to enter GNOME core:
# https://gitlab.gnome.org/GNOME/gnome-build-meta/-/wikis/home#technical-conditions-to-enter-gnome-core
kind: stack
depends:
- core/meta-gnome-core-os-services.bst
- core/meta-gnome-core-shell.bst
- core/meta-gnome-core-apps.bst
- core/meta-gnome-core-developer-tools.bst
- core/meta-gnome-core-mobile.bst
