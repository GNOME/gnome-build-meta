kind: meson

sources:
- kind: git_repo
  url: gnome:libsecret.git
  track: main
  ref: 0.21.6-8-g3adaf31d976b922eb352629281ec3496d8dcafba

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
