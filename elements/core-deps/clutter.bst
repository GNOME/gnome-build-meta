kind: autotools
sources:
- kind: tar
  url: gnome_downloads:clutter/1.26/clutter-1.26.4.tar.xz
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/atk.bst
- core-deps/cogl.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-installed-tests
    --disable-maintainer-flags
    --enable-egl-backend
    --enable-evdev-input
    --enable-wayland-backend
    --enable-wayland-compositor
    --enable-gdk-backend
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libclutter-1.0.so'
        - '%{libdir}/libclutter-glx-1.0.so'
