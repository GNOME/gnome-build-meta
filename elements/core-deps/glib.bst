kind: autotools

(?):
  - base == 'debian9':
      sources:
      - url: https://download.gnome.org/sources/glib/2.55/glib-2.55.2.tar.xz
        kind: tar
        ref: 5a26bfa83bb412d181504a0773101093c9e538c3d0e09d30f5178885d78e72f6
  - base == 'freedesktop1.8':
      sources:
        # FIXME: using last stable version of GLIB to work around some bonkers
        # issue:
        #
        #     gcc -DG_LOG_DOMAIN=\"GLib-GIO\" -DTEST_SERVICES=\""/buildstream/build/gio/tests/services"\" -I. -I../..  -I../.. -I../../glib -I../../glib -I../.. -I../../gmodule -DG_ENABLE_DEBUG -I../../gio -I../../gio -pthread -Wall -Wstrict-prototypes -Werror=declaration-after-statement -Werror=missing-prototypes -Werror=implicit-function-declaration -Werror=pointer-arith -Werror=init-self -Werror=format=2 -Werror=missing-include-dirs -g -O2 -fno-strict-aliasing -MT async-close-output-stream.o -MD -MP -MF $depbase.Tpo -c -o async-close-output-stream.o async-close-output-stream.c &&\
        #    mv -f $depbase.Tpo $depbase.Po
        #    /buildstream/build/gio/.libs/lt-glib-compile-resources: symbol lookup error: /buildstream/build/gobject/.libs/libgobject-2.0.so.0: undefined symbol: g_date_copy
        #
        #
        - url: https://download.gnome.org/sources/glib/2.54/glib-2.54.3.tar.xz
          kind: tar
          ref: 963fdc6685dc3da8e5381dfb9f15ca4b5709b28be84d9d05a9bb8e446abac0a8
depends:
- core-deps/gettext.bst
- core-deps/gtk-doc.bst
- base.bst
variables:
  conf-local: --enable-installed-tests --disable-libmount
public:
  bst:
    integration-commands:
    - glib-compile-schemas %{prefix}/share/glib-2.0/schemas
