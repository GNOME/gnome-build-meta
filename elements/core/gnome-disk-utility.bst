kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-disk-utility.git
  track: main
  ref: 44.0-76-g2d7edc10db6fcb86f910807aaf086701f01dc091

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libdvdread.bst
- core-deps/udisks2.bst
- core/gnome-settings-daemon.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:bootstrap-import.bst
