kind: meson

sources:
- kind: tar
  url: gnome_downloads:libsecret/0.21/libsecret-0.21.8.2.tar.xz
  ref: 142948339c5b971d8f6a8c7099521f6fd319b6fe73d2694b4e6d3310ed28b6e6
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/valgrind-maybe.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
# bash-completion is a build-dep but we need libsecret to runtime
# depend on it so we will always stage above it and the overlap
# will work.
# https://gitlab.gnome.org/GNOME/gnome-build-meta/-/merge_requests/3364#note_2324071
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

public:
  bst:
    overlap-whitelist:
    # bash-completion itself provides one
    # https://github.com/scop/bash-completion/blob/main/completions/secret-tool
    - '%{datadir}/bash-completion/completions/secret-tool'
    split-rules:
      devel:
        (>):
        - '%{libdir}/libsecret-1.so'
