kind: meson

sources:
# NOTE: Whenever the rewrite is completed and the new version will be released in the next stable,
#       go and update files/gnome-mimeapps/quirks.toml
- kind: git_repo
  url: gnome:gnome-disk-utility.git
  track: main
  ref: 44.0-859-gafcfbccbfe28d14f7a8e45f40407380423a29d21

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/blueprint-compiler.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst

depends:
- core-deps/libdvdread.bst
- core-deps/udisks2.bst
- core/gnome-settings-daemon.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- core-deps/libhandy.bst
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
      - core-deps/libhandy.bst
      - sdk/gtk+-3.bst
