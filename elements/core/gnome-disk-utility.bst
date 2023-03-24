kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-disk-utility.git
  track: master
  ref: 44.0-1-g96af439b50f5e1cf43bcd547b1d47dba80b890a0

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
