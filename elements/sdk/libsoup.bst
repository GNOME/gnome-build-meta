kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libsoup.git
  track: master
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
runtime-depends:
# a dummy dependency so our libsoup is always staged
# on top of freedesktop-sdk version
- freedesktop-sdk.bst:components/libsoup.bst
depends:
- sdk/glib.bst
- sdk/krb5.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:components/libpsl.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/sqlite.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dtls_check=false
    -Dgtk_doc=true
    -Dntlm=disabled
public:
  bst:
    integration-commands:
    - |
      for lib in soup soup-gnome; do
        fulllib="%{libdir}/lib${lib}-2.4.so.1"
        keep="$(readlink "${fulllib}")"
        for i in "${fulllib}".*; do
          if [ "$(basename "${i}")" != "${keep}" ]; then
            rm "${i}"
          fi
        done
      done
    overlap-whitelist:
    - '**'
    split-rules:
      devel:
        (>):
        - '%{libdir}/libsoup-2.4.so'
        - '%{libdir}/libsoup-gnome-2.4.so'
