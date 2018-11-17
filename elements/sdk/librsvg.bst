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
  url: https://static.crates.io/crates/aho-corasick/aho-corasick-0.6.9.crate
- kind: crate
  url: https://static.crates.io/crates/alga/alga-0.7.2.crate
- kind: crate
  url: https://static.crates.io/crates/ansi_term/ansi_term-0.11.0.crate
- kind: crate
  url: https://static.crates.io/crates/approx/approx-0.3.0.crate
- kind: crate
  url: https://static.crates.io/crates/arrayvec/arrayvec-0.4.7.crate
- kind: crate
  url: https://static.crates.io/crates/atty/atty-0.2.11.crate
- kind: crate
  url: https://static.crates.io/crates/backtrace/backtrace-0.3.9.crate
- kind: crate
  url: https://static.crates.io/crates/backtrace-sys/backtrace-sys-0.1.24.crate
- kind: crate
  url: https://static.crates.io/crates/bitflags/bitflags-1.0.4.crate
- kind: crate
  url: https://static.crates.io/crates/byteorder/byteorder-1.2.7.crate
- kind: crate
  url: https://static.crates.io/crates/cairo-rs/cairo-rs-0.5.0.crate
- kind: crate
  url: https://static.crates.io/crates/cairo-sys-rs/cairo-sys-rs-0.7.0.crate
- kind: crate
  url: https://static.crates.io/crates/cast/cast-0.2.2.crate
- kind: crate
  url: https://static.crates.io/crates/cc/cc-1.0.25.crate
- kind: crate
  url: https://static.crates.io/crates/cfg-if/cfg-if-0.1.6.crate
- kind: crate
  url: https://static.crates.io/crates/chrono/chrono-0.4.6.crate
- kind: crate
  url: https://static.crates.io/crates/clap/clap-2.32.0.crate
- kind: crate
  url: https://static.crates.io/crates/cloudabi/cloudabi-0.0.3.crate
- kind: crate
  url: https://static.crates.io/crates/criterion/criterion-0.2.5.crate
- kind: crate
  url: https://static.crates.io/crates/criterion-plot/criterion-plot-0.2.5.crate
- kind: crate
  url: https://static.crates.io/crates/criterion-stats/criterion-stats-0.2.5.crate
- kind: crate
  url: https://static.crates.io/crates/crossbeam-deque/crossbeam-deque-0.2.0.crate
- kind: crate
  url: https://static.crates.io/crates/crossbeam-epoch/crossbeam-epoch-0.3.1.crate
- kind: crate
  url: https://static.crates.io/crates/crossbeam-utils/crossbeam-utils-0.2.2.crate
- kind: crate
  url: https://static.crates.io/crates/cssparser/cssparser-0.25.1.crate
- kind: crate
  url: https://static.crates.io/crates/cssparser-macros/cssparser-macros-0.3.5.crate
- kind: crate
  url: https://static.crates.io/crates/csv/csv-1.0.2.crate
- kind: crate
  url: https://static.crates.io/crates/csv-core/csv-core-0.1.4.crate
- kind: crate
  url: https://static.crates.io/crates/downcast-rs/downcast-rs-1.0.3.crate
- kind: crate
  url: https://static.crates.io/crates/dtoa/dtoa-0.4.3.crate
- kind: crate
  url: https://static.crates.io/crates/dtoa-short/dtoa-short-0.3.2.crate
- kind: crate
  url: https://static.crates.io/crates/either/either-1.5.0.crate
- kind: crate
  url: https://static.crates.io/crates/encoding/encoding-0.2.33.crate
- kind: crate
  url: https://static.crates.io/crates/encoding-index-japanese/encoding-index-japanese-1.20141219.5.crate
- kind: crate
  url: https://static.crates.io/crates/encoding-index-korean/encoding-index-korean-1.20141219.5.crate
- kind: crate
  url: https://static.crates.io/crates/encoding-index-simpchinese/encoding-index-simpchinese-1.20141219.5.crate
- kind: crate
  url: https://static.crates.io/crates/encoding-index-singlebyte/encoding-index-singlebyte-1.20141219.5.crate
- kind: crate
  url: https://static.crates.io/crates/encoding-index-tradchinese/encoding-index-tradchinese-1.20141219.5.crate
- kind: crate
  url: https://static.crates.io/crates/encoding_index_tests/encoding_index_tests-0.1.4.crate
- kind: crate
  url: https://static.crates.io/crates/failure/failure-0.1.3.crate
- kind: crate
  url: https://static.crates.io/crates/failure_derive/failure_derive-0.1.3.crate
- kind: crate
  url: https://static.crates.io/crates/float-cmp/float-cmp-0.4.0.crate
- kind: crate
  url: https://static.crates.io/crates/fragile/fragile-0.3.0.crate
- kind: crate
  url: https://static.crates.io/crates/fuchsia-zircon/fuchsia-zircon-0.3.3.crate
- kind: crate
  url: https://static.crates.io/crates/fuchsia-zircon-sys/fuchsia-zircon-sys-0.3.3.crate
- kind: crate
  url: https://static.crates.io/crates/gdk-pixbuf/gdk-pixbuf-0.5.0.crate
- kind: crate
  url: https://static.crates.io/crates/gdk-pixbuf-sys/gdk-pixbuf-sys-0.7.0.crate
- kind: crate
  url: https://static.crates.io/crates/generic-array/generic-array-0.11.1.crate
- kind: crate
  url: https://static.crates.io/crates/gio/gio-0.5.1.crate
- kind: crate
  url: https://static.crates.io/crates/gio-sys/gio-sys-0.7.0.crate
- kind: crate
  url: https://static.crates.io/crates/glib/glib-0.6.0.crate
- kind: crate
  url: https://static.crates.io/crates/glib-sys/glib-sys-0.7.0.crate
- kind: crate
  url: https://static.crates.io/crates/gobject-sys/gobject-sys-0.7.0.crate
- kind: crate
  url: https://static.crates.io/crates/handlebars/handlebars-0.32.4.crate
- kind: crate
  url: https://static.crates.io/crates/itertools/itertools-0.7.8.crate
- kind: crate
  url: https://static.crates.io/crates/itertools-num/itertools-num-0.1.2.crate
- kind: crate
  url: https://static.crates.io/crates/itoa/itoa-0.4.3.crate
- kind: crate
  url: https://static.crates.io/crates/kernel32-sys/kernel32-sys-0.2.2.crate
- kind: crate
  url: https://static.crates.io/crates/language-tags/language-tags-0.2.2.crate
- kind: crate
  url: https://static.crates.io/crates/lazy_static/lazy_static-0.2.11.crate
- kind: crate
  url: https://static.crates.io/crates/lazy_static/lazy_static-1.2.0.crate
- kind: crate
  url: https://static.crates.io/crates/libc/libc-0.2.43.crate
- kind: crate
  url: https://static.crates.io/crates/libm/libm-0.1.2.crate
- kind: crate
  url: https://static.crates.io/crates/locale_config/locale_config-0.2.2.crate
- kind: crate
  url: https://static.crates.io/crates/log/log-0.4.6.crate
- kind: crate
  url: https://static.crates.io/crates/matches/matches-0.1.8.crate
- kind: crate
  url: https://static.crates.io/crates/matrixmultiply/matrixmultiply-0.1.15.crate
- kind: crate
  url: https://static.crates.io/crates/memchr/memchr-2.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/memoffset/memoffset-0.2.1.crate
- kind: crate
  url: https://static.crates.io/crates/nalgebra/nalgebra-0.16.10.crate
- kind: crate
  url: https://static.crates.io/crates/nodrop/nodrop-0.1.13.crate
- kind: crate
  url: https://static.crates.io/crates/num-complex/num-complex-0.2.1.crate
- kind: crate
  url: https://static.crates.io/crates/num-integer/num-integer-0.1.39.crate
- kind: crate
  url: https://static.crates.io/crates/num-traits/num-traits-0.2.6.crate
- kind: crate
  url: https://static.crates.io/crates/num_cpus/num_cpus-1.8.0.crate
- kind: crate
  url: https://static.crates.io/crates/owning_ref/owning_ref-0.4.0.crate
- kind: crate
  url: https://static.crates.io/crates/pango/pango-0.5.0.crate
- kind: crate
  url: https://static.crates.io/crates/pango-sys/pango-sys-0.7.0.crate
- kind: crate
  url: https://static.crates.io/crates/pangocairo/pangocairo-0.6.0.crate
- kind: crate
  url: https://static.crates.io/crates/pangocairo-sys/pangocairo-sys-0.8.0.crate
- kind: crate
  url: https://static.crates.io/crates/pest/pest-1.0.6.crate
- kind: crate
  url: https://static.crates.io/crates/pest_derive/pest_derive-1.0.8.crate
- kind: crate
  url: https://static.crates.io/crates/phf/phf-0.7.23.crate
- kind: crate
  url: https://static.crates.io/crates/phf_codegen/phf_codegen-0.7.23.crate
- kind: crate
  url: https://static.crates.io/crates/phf_generator/phf_generator-0.7.23.crate
- kind: crate
  url: https://static.crates.io/crates/phf_shared/phf_shared-0.7.23.crate
- kind: crate
  url: https://static.crates.io/crates/pkg-config/pkg-config-0.3.14.crate
- kind: crate
  url: https://static.crates.io/crates/proc-macro2/proc-macro2-0.4.24.crate
- kind: crate
  url: https://static.crates.io/crates/procedural-masquerade/procedural-masquerade-0.1.6.crate
- kind: crate
  url: https://static.crates.io/crates/quick-error/quick-error-1.2.2.crate
- kind: crate
  url: https://static.crates.io/crates/quote/quote-0.3.15.crate
- kind: crate
  url: https://static.crates.io/crates/quote/quote-0.6.10.crate
- kind: crate
  url: https://static.crates.io/crates/rand/rand-0.4.3.crate
- kind: crate
  url: https://static.crates.io/crates/rand/rand-0.5.5.crate
- kind: crate
  url: https://static.crates.io/crates/rand_core/rand_core-0.2.2.crate
- kind: crate
  url: https://static.crates.io/crates/rand_core/rand_core-0.3.0.crate
- kind: crate
  url: https://static.crates.io/crates/rawpointer/rawpointer-0.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/rayon/rayon-1.0.3.crate
- kind: crate
  url: https://static.crates.io/crates/rayon-core/rayon-core-1.4.1.crate
- kind: crate
  url: https://static.crates.io/crates/redox_syscall/redox_syscall-0.1.42.crate
- kind: crate
  url: https://static.crates.io/crates/redox_termios/redox_termios-0.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/regex/regex-0.2.11.crate
- kind: crate
  url: https://static.crates.io/crates/regex/regex-1.0.6.crate
- kind: crate
  url: https://static.crates.io/crates/regex-syntax/regex-syntax-0.5.6.crate
- kind: crate
  url: https://static.crates.io/crates/regex-syntax/regex-syntax-0.6.3.crate
- kind: crate
  url: https://static.crates.io/crates/rustc-demangle/rustc-demangle-0.1.9.crate
- kind: crate
  url: https://static.crates.io/crates/ryu/ryu-0.2.7.crate
- kind: crate
  url: https://static.crates.io/crates/same-file/same-file-1.0.4.crate
- kind: crate
  url: https://static.crates.io/crates/scopeguard/scopeguard-0.3.3.crate
- kind: crate
  url: https://static.crates.io/crates/serde/serde-1.0.80.crate
- kind: crate
  url: https://static.crates.io/crates/serde_derive/serde_derive-1.0.80.crate
- kind: crate
  url: https://static.crates.io/crates/serde_json/serde_json-1.0.33.crate
- kind: crate
  url: https://static.crates.io/crates/simplelog/simplelog-0.5.3.crate
- kind: crate
  url: https://static.crates.io/crates/siphasher/siphasher-0.2.3.crate
- kind: crate
  url: https://static.crates.io/crates/smallvec/smallvec-0.6.6.crate
- kind: crate
  url: https://static.crates.io/crates/stable_deref_trait/stable_deref_trait-1.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/strsim/strsim-0.7.0.crate
- kind: crate
  url: https://static.crates.io/crates/syn/syn-0.11.11.crate
- kind: crate
  url: https://static.crates.io/crates/syn/syn-0.15.21.crate
- kind: crate
  url: https://static.crates.io/crates/synom/synom-0.11.3.crate
- kind: crate
  url: https://static.crates.io/crates/synstructure/synstructure-0.10.1.crate
- kind: crate
  url: https://static.crates.io/crates/term/term-0.5.1.crate
- kind: crate
  url: https://static.crates.io/crates/termion/termion-1.5.1.crate
- kind: crate
  url: https://static.crates.io/crates/textwrap/textwrap-0.10.0.crate
- kind: crate
  url: https://static.crates.io/crates/thread-scoped/thread-scoped-1.0.2.crate
- kind: crate
  url: https://static.crates.io/crates/thread_local/thread_local-0.3.6.crate
- kind: crate
  url: https://static.crates.io/crates/time/time-0.1.40.crate
- kind: crate
  url: https://static.crates.io/crates/typenum/typenum-1.10.0.crate
- kind: crate
  url: https://static.crates.io/crates/ucd-util/ucd-util-0.1.3.crate
- kind: crate
  url: https://static.crates.io/crates/unicode-width/unicode-width-0.1.5.crate
- kind: crate
  url: https://static.crates.io/crates/unicode-xid/unicode-xid-0.0.4.crate
- kind: crate
  url: https://static.crates.io/crates/unicode-xid/unicode-xid-0.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/unreachable/unreachable-1.0.0.crate
- kind: crate
  url: https://static.crates.io/crates/utf8-ranges/utf8-ranges-1.0.2.crate
- kind: crate
  url: https://static.crates.io/crates/vec_map/vec_map-0.8.1.crate
- kind: crate
  url: https://static.crates.io/crates/version_check/version_check-0.1.5.crate
- kind: crate
  url: https://static.crates.io/crates/void/void-1.0.2.crate
- kind: crate
  url: https://static.crates.io/crates/walkdir/walkdir-2.2.7.crate
- kind: crate
  url: https://static.crates.io/crates/winapi/winapi-0.2.8.crate
- kind: crate
  url: https://static.crates.io/crates/winapi/winapi-0.3.6.crate
- kind: crate
  url: https://static.crates.io/crates/winapi-build/winapi-build-0.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/winapi-i686-pc-windows-gnu/winapi-i686-pc-windows-gnu-0.4.0.crate
- kind: crate
  url: https://static.crates.io/crates/winapi-util/winapi-util-0.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/winapi-x86_64-pc-windows-gnu/winapi-x86_64-pc-windows-gnu-0.4.0.crate
# end generated
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- filename: sdk/gtk-doc.bst
  type: build
- sdk/gobject-introspection.bst
- sdk/libcroco.bst
- sdk/pango.bst
- filename: sdk/vala.bst
  type: build
- filename: extensions/rust/cargo.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: extensions/rust/rust.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: |
      --enable-gtk-doc \
      --enable-vala
environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin
