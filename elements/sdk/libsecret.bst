kind: meson

sources:
- kind: git_repo
  url: gnome:libsecret.git
  track: main
  ref: 0.21.6-1-gae00f7726c60ff319e3cbd83455c5c80b06bc480

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
