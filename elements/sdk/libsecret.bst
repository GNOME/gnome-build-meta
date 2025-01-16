kind: meson

sources:
- kind: tar
  url: gnome_downloads:libsecret/0.21/libsecret-0.21.6.tar.xz
  ref: 747b8c175be108c880d3adfb9c3537ea66e520e4ad2dccf5dce58003aeeca090
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
- freedesktop-sdk.bst:bootstrap-import.bst

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
