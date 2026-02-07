kind: meson

sources:
# NOTE: Whenever the rewrite is completed and the new version will be released in the next stable,
#       go and update files/gnome-mimeapps/quirks.toml
- kind: tar
  url: gnome_downloads:gnome-disk-utility/46/gnome-disk-utility-46.1.tar.xz
  ref: c24e9439a04d70bcfae349ca134c7005435fe2b6f452114df878bff0b89bbffe

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
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

# Main is undergoing a rewrite and port to GTK 4
# But until there is a release, we ship the gtk3 version
# on stable builds
(?):
- channel == "nightly":
    build-depends:
      (>):
      - freedesktop-sdk.bst:components/rust.bst
    depends:
      (>):
      - sdk/gtk.bst
      - sdk/libadwaita.bst
- channel == "stable":
    depends:
      (>):
      - sdk/gtk+-3.bst
      - sdk/libhandy.bst
