kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/librsvg.git
  track: master
- kind: local
  directory: .cargo/
  path: files/librsvg/config
# The following is generated using utils/generate_cargo_dependencies.py
# it needs to be updated whenever Cargo.lock changes
- kind: crate
  url: https://static.crates.io/crates/aho-corasick/aho-corasick-0.7.6.crate
- kind: crate
  url: https://static.crates.io/crates/alga/alga-0.9.1.crate
- kind: crate
  url: https://static.crates.io/crates/approx/approx-0.3.2.crate
- kind: crate
  url: https://static.crates.io/crates/arrayvec/arrayvec-0.4.11.crate
- kind: crate
  url: https://static.crates.io/crates/atty/atty-0.2.13.crate
- kind: crate
  url: https://static.crates.io/crates/autocfg/autocfg-0.1.5.crate
- kind: crate
  url: https://static.crates.io/crates/bitflags/bitflags-1.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/bstr/bstr-0.2.7.crate
- kind: crate
  url: https://static.crates.io/crates/byteorder/byteorder-1.3.2.crate
- kind: crate
  url: https://static.crates.io/crates/cairo-rs/cairo-rs-0.7.1.crate
- kind: crate
  url: https://static.crates.io/crates/cairo-sys-rs/cairo-sys-rs-0.9.0.crate
- kind: crate
  url: https://static.crates.io/crates/cast/cast-0.2.2.crate
- kind: crate
  url: https://static.crates.io/crates/cfg-if/cfg-if-0.1.9.crate
- kind: crate
  url: https://static.crates.io/crates/clap/clap-2.33.0.crate
- kind: crate
  url: https://static.crates.io/crates/cloudabi/cloudabi-0.0.3.crate
- kind: crate
  url: https://static.crates.io/crates/criterion/criterion-0.2.11.crate
- kind: crate
  url: https://static.crates.io/crates/criterion-plot/criterion-plot-0.3.1.crate
- kind: crate
  url: https://static.crates.io/crates/crossbeam-deque/crossbeam-deque-0.6.3.crate
- kind: crate
  url: https://static.crates.io/crates/crossbeam-epoch/crossbeam-epoch-0.7.2.crate
- kind: crate
  url: https://static.crates.io/crates/crossbeam-queue/crossbeam-queue-0.1.2.crate
- kind: crate
  url: https://static.crates.io/crates/crossbeam-utils/crossbeam-utils-0.6.6.crate
- kind: crate
  url: https://static.crates.io/crates/cssparser/cssparser-0.25.8.crate
- kind: crate
  url: https://static.crates.io/crates/cssparser-macros/cssparser-macros-0.3.5.crate
- kind: crate
  url: https://static.crates.io/crates/csv/csv-1.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/csv-core/csv-core-0.1.6.crate
- kind: crate
  url: https://static.crates.io/crates/data-url/data-url-0.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/downcast-rs/downcast-rs-1.0.4.crate
- kind: crate
  url: https://static.crates.io/crates/dtoa/dtoa-0.4.4.crate
- kind: crate
  url: https://static.crates.io/crates/dtoa-short/dtoa-short-0.3.2.crate
- kind: crate
  url: https://static.crates.io/crates/either/either-1.5.2.crate
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
  url: https://static.crates.io/crates/float-cmp/float-cmp-0.5.2.crate
- kind: crate
  url: https://static.crates.io/crates/fragile/fragile-0.3.0.crate
- kind: crate
  url: https://static.crates.io/crates/fuchsia-cprng/fuchsia-cprng-0.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/futf/futf-0.1.4.crate
- kind: crate
  url: https://static.crates.io/crates/gdk-pixbuf/gdk-pixbuf-0.7.0.crate
- kind: crate
  url: https://static.crates.io/crates/gdk-pixbuf-sys/gdk-pixbuf-sys-0.9.0.crate
- kind: crate
  url: https://static.crates.io/crates/generic-array/generic-array-0.12.3.crate
- kind: crate
  url: https://static.crates.io/crates/gio/gio-0.7.0.crate
- kind: crate
  url: https://static.crates.io/crates/gio-sys/gio-sys-0.9.0.crate
- kind: crate
  url: https://static.crates.io/crates/glib/glib-0.8.1.crate
- kind: crate
  url: https://static.crates.io/crates/glib-sys/glib-sys-0.9.0.crate
- kind: crate
  url: https://static.crates.io/crates/gobject-sys/gobject-sys-0.9.0.crate
- kind: crate
  url: https://static.crates.io/crates/idna/idna-0.2.0.crate
- kind: crate
  url: https://static.crates.io/crates/itertools/itertools-0.8.0.crate
- kind: crate
  url: https://static.crates.io/crates/itoa/itoa-0.4.4.crate
- kind: crate
  url: https://static.crates.io/crates/language-tags/language-tags-0.2.2.crate
- kind: crate
  url: https://static.crates.io/crates/lazy_static/lazy_static-1.3.0.crate
- kind: crate
  url: https://static.crates.io/crates/libc/libc-0.2.62.crate
- kind: crate
  url: https://static.crates.io/crates/libm/libm-0.1.4.crate
- kind: crate
  url: https://static.crates.io/crates/locale_config/locale_config-0.2.3.crate
- kind: crate
  url: https://static.crates.io/crates/log/log-0.4.8.crate
- kind: crate
  url: https://static.crates.io/crates/mac/mac-0.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/markup5ever/markup5ever-0.9.0.crate
- kind: crate
  url: https://static.crates.io/crates/matches/matches-0.1.8.crate
- kind: crate
  url: https://static.crates.io/crates/matrixmultiply/matrixmultiply-0.2.2.crate
- kind: crate
  url: https://static.crates.io/crates/memchr/memchr-2.2.1.crate
- kind: crate
  url: https://static.crates.io/crates/memoffset/memoffset-0.5.1.crate
- kind: crate
  url: https://static.crates.io/crates/nalgebra/nalgebra-0.18.0.crate
- kind: crate
  url: https://static.crates.io/crates/new_debug_unreachable/new_debug_unreachable-1.0.3.crate
- kind: crate
  url: https://static.crates.io/crates/nodrop/nodrop-0.1.13.crate
- kind: crate
  url: https://static.crates.io/crates/num-complex/num-complex-0.2.3.crate
- kind: crate
  url: https://static.crates.io/crates/num-traits/num-traits-0.2.8.crate
- kind: crate
  url: https://static.crates.io/crates/num_cpus/num_cpus-1.10.1.crate
- kind: crate
  url: https://static.crates.io/crates/pango/pango-0.7.0.crate
- kind: crate
  url: https://static.crates.io/crates/pango-sys/pango-sys-0.9.0.crate
- kind: crate
  url: https://static.crates.io/crates/pangocairo/pangocairo-0.8.0.crate
- kind: crate
  url: https://static.crates.io/crates/pangocairo-sys/pangocairo-sys-0.10.0.crate
- kind: crate
  url: https://static.crates.io/crates/percent-encoding/percent-encoding-2.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/phf/phf-0.7.24.crate
- kind: crate
  url: https://static.crates.io/crates/phf_codegen/phf_codegen-0.7.24.crate
- kind: crate
  url: https://static.crates.io/crates/phf_generator/phf_generator-0.7.24.crate
- kind: crate
  url: https://static.crates.io/crates/phf_shared/phf_shared-0.7.24.crate
- kind: crate
  url: https://static.crates.io/crates/pkg-config/pkg-config-0.3.15.crate
- kind: crate
  url: https://static.crates.io/crates/precomputed-hash/precomputed-hash-0.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/proc-macro2/proc-macro2-0.4.30.crate
- kind: crate
  url: https://static.crates.io/crates/procedural-masquerade/procedural-masquerade-0.1.6.crate
- kind: crate
  url: https://static.crates.io/crates/quote/quote-0.6.13.crate
- kind: crate
  url: https://static.crates.io/crates/rand/rand-0.6.5.crate
- kind: crate
  url: https://static.crates.io/crates/rand_chacha/rand_chacha-0.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/rand_core/rand_core-0.3.1.crate
- kind: crate
  url: https://static.crates.io/crates/rand_core/rand_core-0.4.2.crate
- kind: crate
  url: https://static.crates.io/crates/rand_hc/rand_hc-0.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/rand_isaac/rand_isaac-0.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/rand_jitter/rand_jitter-0.1.4.crate
- kind: crate
  url: https://static.crates.io/crates/rand_os/rand_os-0.1.3.crate
- kind: crate
  url: https://static.crates.io/crates/rand_pcg/rand_pcg-0.1.2.crate
- kind: crate
  url: https://static.crates.io/crates/rand_xorshift/rand_xorshift-0.1.1.crate
- kind: crate
  url: https://static.crates.io/crates/rand_xoshiro/rand_xoshiro-0.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/rawpointer/rawpointer-0.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/rayon/rayon-1.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/rayon-core/rayon-core-1.5.0.crate
- kind: crate
  url: https://static.crates.io/crates/rctree/rctree-0.3.3.crate
- kind: crate
  url: https://static.crates.io/crates/rdrand/rdrand-0.4.0.crate
- kind: crate
  url: https://static.crates.io/crates/regex/regex-1.2.1.crate
- kind: crate
  url: https://static.crates.io/crates/regex-automata/regex-automata-0.1.8.crate
- kind: crate
  url: https://static.crates.io/crates/regex-syntax/regex-syntax-0.6.11.crate
- kind: crate
  url: https://static.crates.io/crates/rustc_version/rustc_version-0.2.3.crate
- kind: crate
  url: https://static.crates.io/crates/ryu/ryu-1.0.0.crate
- kind: crate
  url: https://static.crates.io/crates/same-file/same-file-1.0.5.crate
- kind: crate
  url: https://static.crates.io/crates/scopeguard/scopeguard-1.0.0.crate
- kind: crate
  url: https://static.crates.io/crates/semver/semver-0.9.0.crate
- kind: crate
  url: https://static.crates.io/crates/semver-parser/semver-parser-0.7.0.crate
- kind: crate
  url: https://static.crates.io/crates/serde/serde-1.0.98.crate
- kind: crate
  url: https://static.crates.io/crates/serde_derive/serde_derive-1.0.98.crate
- kind: crate
  url: https://static.crates.io/crates/serde_json/serde_json-1.0.40.crate
- kind: crate
  url: https://static.crates.io/crates/siphasher/siphasher-0.2.3.crate
- kind: crate
  url: https://static.crates.io/crates/smallvec/smallvec-0.6.10.crate
- kind: crate
  url: https://static.crates.io/crates/string_cache/string_cache-0.7.3.crate
- kind: crate
  url: https://static.crates.io/crates/string_cache_codegen/string_cache_codegen-0.4.2.crate
- kind: crate
  url: https://static.crates.io/crates/string_cache_shared/string_cache_shared-0.3.0.crate
- kind: crate
  url: https://static.crates.io/crates/syn/syn-0.15.44.crate
- kind: crate
  url: https://static.crates.io/crates/tendril/tendril-0.4.1.crate
- kind: crate
  url: https://static.crates.io/crates/textwrap/textwrap-0.11.0.crate
- kind: crate
  url: https://static.crates.io/crates/thread_local/thread_local-0.3.6.crate
- kind: crate
  url: https://static.crates.io/crates/tinytemplate/tinytemplate-1.0.2.crate
- kind: crate
  url: https://static.crates.io/crates/typenum/typenum-1.10.0.crate
- kind: crate
  url: https://static.crates.io/crates/unicode-bidi/unicode-bidi-0.3.4.crate
- kind: crate
  url: https://static.crates.io/crates/unicode-normalization/unicode-normalization-0.1.8.crate
- kind: crate
  url: https://static.crates.io/crates/unicode-width/unicode-width-0.1.5.crate
- kind: crate
  url: https://static.crates.io/crates/unicode-xid/unicode-xid-0.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/url/url-2.1.0.crate
- kind: crate
  url: https://static.crates.io/crates/utf-8/utf-8-0.7.5.crate
- kind: crate
  url: https://static.crates.io/crates/walkdir/walkdir-2.2.9.crate
- kind: crate
  url: https://static.crates.io/crates/winapi/winapi-0.3.7.crate
- kind: crate
  url: https://static.crates.io/crates/winapi-i686-pc-windows-gnu/winapi-i686-pc-windows-gnu-0.4.0.crate
- kind: crate
  url: https://static.crates.io/crates/winapi-util/winapi-util-0.1.2.crate
- kind: crate
  url: https://static.crates.io/crates/winapi-x86_64-pc-windows-gnu/winapi-x86_64-pc-windows-gnu-0.4.0.crate
- kind: crate
  url: https://static.crates.io/crates/xml-rs/xml-rs-0.8.0.crate
# end generated
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/gobject-introspection.bst
- sdk/libcroco.bst
- sdk/pango.bst
- filename: sdk/vala.bst
  type: build
- filename: components/cairo.bst
  junction: freedesktop-sdk.bst
- filename: extensions/rust/rust.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --disable-gtk-doc
    --enable-vala
environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin
