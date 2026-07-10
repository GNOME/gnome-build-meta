kind: meson

sources:
- kind: git_repo
  url: gnome:gcr.git
  track: main
  ref: 4.4.0.1-28-gf3f7578842423cd6cfc0b9d1f08fe9d7e394ec8f

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/gnupg.bst
- freedesktop-sdk.bst:components/openssh.bst
- freedesktop-sdk.bst:components/p11-kit.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgck-2.so'
        - '%{libdir}/libgcr-4.so'
        - '%{libdir}/libgcr-4-gtk3.so'
        - '%{libdir}/libgcr-4-gtk4.so'
