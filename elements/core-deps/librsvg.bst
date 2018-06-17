kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/librsvg.git
  track: master
- kind: local
  directory: .cargo/
  path: files/librsvg/config
# The following is generated using utils/generate_cargo_dependencies.py
# it needs to be updated whenever Cargo.lock changes
- kind: crate
  url: https://static.crates.io/crates/aho-corasick/aho-corasick-0.6.4.crate
- kind: crate
  url: https://static.crates.io/crates/bitflags/bitflags-0.9.1.crate
- kind: crate
  url: https://static.crates.io/crates/bitflags/bitflags-1.0.3.crate
- kind: crate
  url: https://static.crates.io/crates/c_vec/c_vec-1.3.1.crate
- kind: crate
  url: https://static.crates.io/crates/cairo-rs/cairo-rs-0.4.1.crate
- kind: crate
  url: https://static.crates.io/crates/cairo-sys-rs/cairo-sys-rs-0.6.0.crate
- kind: crate
  url: https://static.crates.io/crates/cssparser/cssparser-0.23.10.crate
- kind: crate
  url: https://static.crates.io/crates/cssparser-macros/cssparser-macros-0.3.3.crate
- kind: crate
  url: https://static.crates.io/crates/downcast-rs/downcast-rs-1.0.3.crate
- kind: crate
  url: https://static.crates.io/crates/dtoa/dtoa-0.4.2.crate
- kind: crate
  url: https://static.crates.io/crates/dtoa-short/dtoa-short-0.3.2.crate
- kind: crate
  url: https://static.crates.io/crates/either/either-1.5.0.crate
- kind: crate
  url: https://static.crates.io/crates/float-cmp/float-cmp-0.4.0.crate
- kind: crate
  url: https://static.crates.io/crates/fuchsia-zircon/fuchsia-zircon-0.3.3.crate
- kind: crate
  url: https://static.crates.io/crates/fuchsia-zircon-sys/fuchsia-zircon-sys-0.3.3.crate
- kind: crate
  url: https://static.crates.io/crates/glib/glib-0.5.0.crate
- kind: crate
  url: https://static.crates.io/crates/glib-sys/glib-sys-0.6.0.crate
- kind: crate
  url: https://static.crates.io/crates/gobject-sys/gobject-sys-0.6.0.crate
- kind: crate
  url: https://static.crates.io/crates/itertools/itertools-0.7.8.crate
- kind: crate
  url: https://static.crates.io/crates/itoa/itoa-0.4.1.crate
- kind: crate
  url: https://static.crates.io/crates/lazy_static/lazy_static-1.0.1.crate
- kind: crate
  url: https://static.crates.io/crates/libc/libc-0.2.42.crate
- kind: crate
  url: https://static.crates.io/crates/matches/matches-0.1.6.crate
- kind: crate
  url: https://static.crates.io/crates/matrixmultiply/matrixmultiply-0.1.14.crate
- kind: crate
  url: https://static.crates.io/crates/memchr/memchr-2.0.1.crate
- kind: crate
  url: https://static.crates.io/crates/num/num-0.1.42.crate
- kind: crate
  url: https://static.crates.io/crates/num-integer/num-integer-0.1.39.crate
- kind: crate
  url: https://static.crates.io/crates/num-iter/num-iter-0.1.37.crate
- kind: crate
  url: https://static.crates.io/crates/num-traits/num-traits-0.2.5.crate
- kind: crate
  url: https://static.crates.io/crates/pango/pango-0.4.0.crate
- kind: crate
  url: https://static.crates.io/crates/pango-sys/pango-sys-0.6.0.crate
- kind: crate
  url: https://static.crates.io/crates/pangocairo/pangocairo-0.5.0.crate
- kind: crate
  url: https://static.crates.io/crates/pangocairo-sys/pangocairo-sys-0.7.0.crate
- kind: crate
  url: https://static.crates.io/crates/phf/phf-0.7.22.crate
- kind: crate
  url: https://static.crates.io/crates/phf_codegen/phf_codegen-0.7.22.crate
- kind: crate
  url: https://static.crates.io/crates/phf_generator/phf_generator-0.7.22.crate
- kind: crate
  url: https://static.crates.io/crates/phf_shared/phf_shared-0.7.22.crate
- kind: crate
  url: https://static.crates.io/crates/pkg-config/pkg-config-0.3.11.crate
- kind: crate
  url: https://static.crates.io/crates/proc-macro2/proc-macro2-0.3.8.crate
- kind: crate
  url: https://static.crates.io/crates/procedural-masquerade/procedural-masquerade-0.1.6.crate
- kind: crate
  url: https://static.crates.io/crates/quote/quote-0.5.2.crate
- kind: crate
  url: https://static.crates.io/crates/rand/rand-0.4.2.crate
- kind: crate
  url: https://static.crates.io/crates/rawpointer/rawpointer-0.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/regex/regex-1.0.1.crate
- kind: crate
  url: https://static.crates.io/crates/regex-syntax/regex-syntax-0.6.1.crate
- kind: crate
  url: https://static.crates.io/crates/rulinalg/rulinalg-0.4.2.crate
- kind: crate
  url: https://static.crates.io/crates/siphasher/siphasher-0.2.2.crate
- kind: crate
  url: https://static.crates.io/crates/smallvec/smallvec-0.6.2.crate
- kind: crate
  url: https://static.crates.io/crates/syn/syn-0.13.11.crate
- kind: crate
  url: https://static.crates.io/crates/thread_local/thread_local-0.3.5.crate
- kind: crate
  url: https://static.crates.io/crates/ucd-util/ucd-util-0.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/unicode-xid/unicode-xid-0.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/unreachable/unreachable-1.0.0.crate
- kind: crate
  url: https://static.crates.io/crates/utf8-ranges/utf8-ranges-1.0.0.crate
- kind: crate
  url: https://static.crates.io/crates/void/void-1.0.2.crate
- kind: crate
  url: https://static.crates.io/crates/winapi/winapi-0.3.5.crate
- kind: crate
  url: https://static.crates.io/crates/winapi-i686-pc-windows-gnu/winapi-i686-pc-windows-gnu-0.4.0.crate
- kind: crate
  url: https://static.crates.io/crates/winapi-x86_64-pc-windows-gnu/winapi-x86_64-pc-windows-gnu-0.4.0.crate
# end generated
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- core-deps/libcroco.bst
- core-deps/pango.bst
- core-deps/vala.bst
- filename: rust/cargo.bst
  junction: freedesktop-sdk.bst
- filename: rust/rust.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-vala
environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin
