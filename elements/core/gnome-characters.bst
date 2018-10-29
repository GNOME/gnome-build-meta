kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-characters/3.30/gnome-characters-3.30.0.tar.xz
  ref: 6431fb42b45fab0f5cc0419d642f577dd71d59aacd41fa53a72eb6ec3ccde630
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
