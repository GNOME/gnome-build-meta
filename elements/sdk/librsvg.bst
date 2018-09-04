kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/librsvg/2.44/librsvg-2.44.2.tar.xz
  ref: 4eec96cc53ed499417dac3db9b4604f80a76f377f8f791641c458df1d7a3631f
- kind: local
  directory: .cargo/
  path: files/librsvg/config
# The following is generated using utils/generate_cargo_dependencies.py
# it needs to be updated whenever Cargo.lock changes
- kind: crate
  url: https://static.crates.io/crates/aho-corasick/aho-corasick-0.6.4.crate
- kind: crate
  url: https://static.crates.io/crates/alga/alga-0.7.0.crate
- kind: crate
  url: https://static.crates.io/crates/ansi_term/ansi_term-0.11.0.crate
- kind: crate
  url: https://static.crates.io/crates/approx/approx-0.3.0.crate
- kind: crate
  url: https://static.crates.io/crates/arrayvec/arrayvec-0.4.7.crate
- kind: crate
  url: https://static.crates.io/crates/atty/atty-0.2.10.crate
- kind: crate
  url: https://static.crates.io/crates/backtrace/backtrace-0.3.9.crate
- kind: crate
  url: https://static.crates.io/crates/backtrace-sys/backtrace-sys-0.1.23.crate
- kind: crate
  url: https://static.crates.io/crates/bitflags/bitflags-0.9.1.crate
- kind: crate
  url: https://static.crates.io/crates/bitflags/bitflags-1.0.3.crate
- kind: crate
  url: https://static.crates.io/crates/byteorder/byteorder-1.2.3.crate
- kind: crate
  url: https://static.crates.io/crates/c_vec/c_vec-1.3.1.crate
- kind: crate
  url: https://static.crates.io/crates/cairo-rs/cairo-rs-0.4.1.crate
- kind: crate
  url: https://static.crates.io/crates/cairo-sys-rs/cairo-sys-rs-0.6.0.crate
- kind: crate
  url: https://static.crates.io/crates/cast/cast-0.2.2.crate
- kind: crate
  url: https://static.crates.io/crates/cc/cc-1.0.18.crate
- kind: crate
  url: https://static.crates.io/crates/cfg-if/cfg-if-0.1.4.crate
- kind: crate
  url: https://static.crates.io/crates/chrono/chrono-0.4.4.crate
- kind: crate
  url: https://static.crates.io/crates/clap/clap-2.32.0.crate
- kind: crate
  url: https://static.crates.io/crates/cloudabi/cloudabi-0.0.3.crate
- kind: crate
  url: https://static.crates.io/crates/criterion/criterion-0.2.4.crate
- kind: crate
  url: https://static.crates.io/crates/criterion-plot/criterion-plot-0.2.4.crate
- kind: crate
  url: https://static.crates.io/crates/criterion-stats/criterion-stats-0.2.4.crate
- kind: crate
  url: https://static.crates.io/crates/crossbeam-deque/crossbeam-deque-0.2.0.crate
- kind: crate
  url: https://static.crates.io/crates/crossbeam-epoch/crossbeam-epoch-0.3.1.crate
- kind: crate
  url: https://static.crates.io/crates/crossbeam-utils/crossbeam-utils-0.2.2.crate
- kind: crate
  url: https://static.crates.io/crates/cssparser/cssparser-0.24.0.crate
- kind: crate
  url: https://static.crates.io/crates/cssparser-macros/cssparser-macros-0.3.4.crate
- kind: crate
  url: https://static.crates.io/crates/csv/csv-1.0.0.crate
- kind: crate
  url: https://static.crates.io/crates/csv-core/csv-core-0.1.4.crate
- kind: crate
  url: https://static.crates.io/crates/downcast-rs/downcast-rs-1.0.3.crate
- kind: crate
  url: https://static.crates.io/crates/dtoa/dtoa-0.4.2.crate
- kind: crate
  url: https://static.crates.io/crates/dtoa-short/dtoa-short-0.3.2.crate
- kind: crate
  url: https://static.crates.io/crates/either/either-1.5.0.crate
- kind: crate
  url: https://static.crates.io/crates/failure/failure-0.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/failure_derive/failure_derive-0.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/float-cmp/float-cmp-0.4.0.crate
- kind: crate
  url: https://static.crates.io/crates/fuchsia-zircon/fuchsia-zircon-0.3.3.crate
- kind: crate
  url: https://static.crates.io/crates/fuchsia-zircon-sys/fuchsia-zircon-sys-0.3.3.crate
- kind: crate
  url: https://static.crates.io/crates/generic-array/generic-array-0.11.1.crate
- kind: crate
  url: https://static.crates.io/crates/glib/glib-0.5.0.crate
- kind: crate
  url: https://static.crates.io/crates/glib-sys/glib-sys-0.6.0.crate
- kind: crate
  url: https://static.crates.io/crates/gobject-sys/gobject-sys-0.6.0.crate
- kind: crate
  url: https://static.crates.io/crates/handlebars/handlebars-0.32.4.crate
- kind: crate
  url: https://static.crates.io/crates/itertools/itertools-0.7.8.crate
- kind: crate
  url: https://static.crates.io/crates/itertools-num/itertools-num-0.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/itoa/itoa-0.4.1.crate
- kind: crate
  url: https://static.crates.io/crates/lazy_static/lazy_static-1.0.1.crate
- kind: crate
  url: https://static.crates.io/crates/libc/libc-0.2.42.crate
- kind: crate
  url: https://static.crates.io/crates/log/log-0.4.3.crate
- kind: crate
  url: https://static.crates.io/crates/matches/matches-0.1.6.crate
- kind: crate
  url: https://static.crates.io/crates/matrixmultiply/matrixmultiply-0.1.14.crate
- kind: crate
  url: https://static.crates.io/crates/memchr/memchr-2.0.1.crate
- kind: crate
  url: https://static.crates.io/crates/memoffset/memoffset-0.2.1.crate
- kind: crate
  url: https://static.crates.io/crates/nalgebra/nalgebra-0.16.0.crate
- kind: crate
  url: https://static.crates.io/crates/nodrop/nodrop-0.1.12.crate
- kind: crate
  url: https://static.crates.io/crates/num-complex/num-complex-0.2.0.crate
- kind: crate
  url: https://static.crates.io/crates/num-integer/num-integer-0.1.39.crate
- kind: crate
  url: https://static.crates.io/crates/num-traits/num-traits-0.1.43.crate
- kind: crate
  url: https://static.crates.io/crates/num-traits/num-traits-0.2.5.crate
- kind: crate
  url: https://static.crates.io/crates/num_cpus/num_cpus-1.8.0.crate
- kind: crate
  url: https://static.crates.io/crates/owning_ref/owning_ref-0.3.3.crate
- kind: crate
  url: https://static.crates.io/crates/pango/pango-0.4.0.crate
- kind: crate
  url: https://static.crates.io/crates/pango-sys/pango-sys-0.6.0.crate
- kind: crate
  url: https://static.crates.io/crates/pangocairo/pangocairo-0.5.0.crate
- kind: crate
  url: https://static.crates.io/crates/pangocairo-sys/pangocairo-sys-0.7.0.crate
- kind: crate
  url: https://static.crates.io/crates/pest/pest-1.0.6.crate
- kind: crate
  url: https://static.crates.io/crates/pest_derive/pest_derive-1.0.7.crate
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
  url: https://static.crates.io/crates/proc-macro2/proc-macro2-0.4.6.crate
- kind: crate
  url: https://static.crates.io/crates/procedural-masquerade/procedural-masquerade-0.1.6.crate
- kind: crate
  url: https://static.crates.io/crates/quick-error/quick-error-1.2.2.crate
- kind: crate
  url: https://static.crates.io/crates/quote/quote-0.3.15.crate
- kind: crate
  url: https://static.crates.io/crates/quote/quote-0.6.3.crate
- kind: crate
  url: https://static.crates.io/crates/rand/rand-0.4.2.crate
- kind: crate
  url: https://static.crates.io/crates/rand/rand-0.5.4.crate
- kind: crate
  url: https://static.crates.io/crates/rand_core/rand_core-0.2.1.crate
- kind: crate
  url: https://static.crates.io/crates/rawpointer/rawpointer-0.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/rayon/rayon-1.0.2.crate
- kind: crate
  url: https://static.crates.io/crates/rayon-core/rayon-core-1.4.1.crate
- kind: crate
  url: https://static.crates.io/crates/redox_syscall/redox_syscall-0.1.40.crate
- kind: crate
  url: https://static.crates.io/crates/redox_termios/redox_termios-0.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/regex/regex-1.0.1.crate
- kind: crate
  url: https://static.crates.io/crates/regex-syntax/regex-syntax-0.6.1.crate
- kind: crate
  url: https://static.crates.io/crates/rustc-demangle/rustc-demangle-0.1.9.crate
- kind: crate
  url: https://static.crates.io/crates/scopeguard/scopeguard-0.3.3.crate
- kind: crate
  url: https://static.crates.io/crates/serde/serde-1.0.70.crate
- kind: crate
  url: https://static.crates.io/crates/serde_derive/serde_derive-1.0.70.crate
- kind: crate
  url: https://static.crates.io/crates/serde_json/serde_json-1.0.24.crate
- kind: crate
  url: https://static.crates.io/crates/simplelog/simplelog-0.5.2.crate
- kind: crate
  url: https://static.crates.io/crates/siphasher/siphasher-0.2.2.crate
- kind: crate
  url: https://static.crates.io/crates/smallvec/smallvec-0.6.3.crate
- kind: crate
  url: https://static.crates.io/crates/stable_deref_trait/stable_deref_trait-1.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/strsim/strsim-0.7.0.crate
- kind: crate
  url: https://static.crates.io/crates/syn/syn-0.11.11.crate
- kind: crate
  url: https://static.crates.io/crates/syn/syn-0.14.4.crate
- kind: crate
  url: https://static.crates.io/crates/synom/synom-0.11.3.crate
- kind: crate
  url: https://static.crates.io/crates/synstructure/synstructure-0.6.1.crate
- kind: crate
  url: https://static.crates.io/crates/term/term-0.5.1.crate
- kind: crate
  url: https://static.crates.io/crates/termion/termion-1.5.1.crate
- kind: crate
  url: https://static.crates.io/crates/textwrap/textwrap-0.10.0.crate
- kind: crate
  url: https://static.crates.io/crates/thread-scoped/thread-scoped-1.0.2.crate
- kind: crate
  url: https://static.crates.io/crates/thread_local/thread_local-0.3.5.crate
- kind: crate
  url: https://static.crates.io/crates/time/time-0.1.40.crate
- kind: crate
  url: https://static.crates.io/crates/typenum/typenum-1.10.0.crate
- kind: crate
  url: https://static.crates.io/crates/ucd-util/ucd-util-0.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/unicode-width/unicode-width-0.1.5.crate
- kind: crate
  url: https://static.crates.io/crates/unicode-xid/unicode-xid-0.0.4.crate
- kind: crate
  url: https://static.crates.io/crates/unicode-xid/unicode-xid-0.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/unreachable/unreachable-1.0.0.crate
- kind: crate
  url: https://static.crates.io/crates/utf8-ranges/utf8-ranges-1.0.0.crate
- kind: crate
  url: https://static.crates.io/crates/vec_map/vec_map-0.8.1.crate
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
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --enable-vala
environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin
