# The core set is not expected to change as frequently as core-deps.
# Adding or removing elements from here should be approved by
# release team. Review the technical conditions to enter GNOME core:
# https://gitlab.gnome.org/GNOME/gnome-build-meta/-/wikis/home#technical-conditions-to-enter-gnome-core
kind: stack
depends:
- core/gdm.bst
- core/gnome-backgrounds.bst
- core/gnome-bluetooth.bst
- core/gnome-color-manager.bst
- core/gnome-control-center.bst
- core/gnome-desktop.bst
- core/gnome-initial-setup.bst
- core/gnome-keyring.bst
- core/gnome-menus.bst
- core/gnome-remote-desktop.bst
- core/gnome-session.bst
- core/gnome-settings-daemon.bst
- core/gnome-shell.bst
- core/gnome-tour.bst
- core/gnome-user-docs.bst
- core/gnome-user-share.bst
- core/gvfs-daemon.bst
- core/mutter.bst
- core/orca.bst
- core/rygel.bst
- core/sushi.bst
- core/tecla.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib-networking.bst
- sdk/gsettings-desktop-schemas.bst
