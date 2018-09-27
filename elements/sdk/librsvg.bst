kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/librsvg/2.44/librsvg-2.44.4.tar.xz
  ref: bd913b1f598d2dec70762849e51c5db334d072648557821e3908a2c43bad5f3d
- kind: local
  directory: .cargo/
  path: files/librsvg/config
# The following is generated using utils/generate_cargo_dependencies.py
# it needs to be updated whenever Cargo.lock changes
- kind: crate
  url: https://static.crates.io/crates/aho-corasick/aho-corasick-0.6.4.crate
  ref: d6531d44de723825aa81398a6415283229725a00fa30713812ab9323faa82fc4
- kind: crate
  url: https://static.crates.io/crates/alga/alga-0.7.0.crate
  ref: d3d5dbb7fa6898343fd31e14e8abf2563b6c61a81c1a2e15a678a2f351a249ed
- kind: crate
  url: https://static.crates.io/crates/ansi_term/ansi_term-0.11.0.crate
  ref: ee49baf6cb617b853aa8d93bf420db2383fab46d314482ca2803b40d5fde979b
- kind: crate
  url: https://static.crates.io/crates/approx/approx-0.3.0.crate
  ref: f71f10b5c4946a64aad7b8cf65e3406cd3da22fc448595991d22423cf6db67b4
- kind: crate
  url: https://static.crates.io/crates/arrayvec/arrayvec-0.4.7.crate
  ref: a1e964f9e24d588183fcb43503abda40d288c8657dfc27311516ce2f05675aef
- kind: crate
  url: https://static.crates.io/crates/atty/atty-0.2.10.crate
  ref: 2fc4a1aa4c24c0718a250f0681885c1af91419d242f29eb8f2ab28502d80dbd1
- kind: crate
  url: https://static.crates.io/crates/backtrace/backtrace-0.3.9.crate
  ref: 89a47830402e9981c5c41223151efcced65a0510c13097c769cede7efb34782a
- kind: crate
  url: https://static.crates.io/crates/backtrace-sys/backtrace-sys-0.1.23.crate
  ref: bff67d0c06556c0b8e6b5f090f0eac52d950d9dfd1d35ba04e4ca3543eaf6a7e
- kind: crate
  url: https://static.crates.io/crates/bitflags/bitflags-0.9.1.crate
  ref: 4efd02e230a02e18f92fc2735f44597385ed02ad8f831e7c1c1156ee5e1ab3a5
- kind: crate
  url: https://static.crates.io/crates/bitflags/bitflags-1.0.3.crate
  ref: d0c54bb8f454c567f21197eefcdbf5679d0bd99f2ddbe52e84c77061952e6789
- kind: crate
  url: https://static.crates.io/crates/byteorder/byteorder-1.2.3.crate
  ref: 74c0b906e9446b0a2e4f760cdb3fa4b2c48cdc6db8766a845c54b6ff063fd2e9
- kind: crate
  url: https://static.crates.io/crates/c_vec/c_vec-1.3.1.crate
  ref: fa8f19d0a87ec08bc2925d8aa809bdd3b38d3f2c32f7b247f2cd4c56aa005ac5
- kind: crate
  url: https://static.crates.io/crates/cairo-rs/cairo-rs-0.4.1.crate
  ref: a110f269c2fd382df5fe8bd46dfa5f1b83608aa717fecb6e7a28c08c202f0e13
- kind: crate
  url: https://static.crates.io/crates/cairo-sys-rs/cairo-sys-rs-0.6.0.crate
  ref: 0395175ecba60accac076a02c31d143b9dcd9d5eb5316d7163a3273803b765c7
- kind: crate
  url: https://static.crates.io/crates/cast/cast-0.2.2.crate
  ref: 926013f2860c46252efceabb19f4a6b308197505082c609025aa6706c011d427
- kind: crate
  url: https://static.crates.io/crates/cc/cc-1.0.18.crate
  ref: 2119ea4867bd2b8ed3aecab467709720b2d55b1bcfe09f772fd68066eaf15275
- kind: crate
  url: https://static.crates.io/crates/cfg-if/cfg-if-0.1.4.crate
  ref: efe5c877e17a9c717a0bf3613b2709f723202c4e4675cc8f12926ded29bcb17e
- kind: crate
  url: https://static.crates.io/crates/chrono/chrono-0.4.4.crate
  ref: 6962c635d530328acc53ac6a955e83093fedc91c5809dfac1fa60fa470830a37
- kind: crate
  url: https://static.crates.io/crates/clap/clap-2.32.0.crate
  ref: b957d88f4b6a63b9d70d5f454ac8011819c6efa7727858f458ab71c756ce2d3e
- kind: crate
  url: https://static.crates.io/crates/cloudabi/cloudabi-0.0.3.crate
  ref: ddfc5b9aa5d4507acaf872de71051dfd0e309860e88966e1051e462a077aac4f
- kind: crate
  url: https://static.crates.io/crates/criterion/criterion-0.2.4.crate
  ref: b027da737a814e7ffcfdbaf1c0509fbaea4c6df5f2e116c820ecf515ad39ac9b
- kind: crate
  url: https://static.crates.io/crates/criterion-plot/criterion-plot-0.2.4.crate
  ref: 7894b77aa2820337ddf3a6655c24116fb7e53dbdc9735d43a4dec7da5d2c4716
- kind: crate
  url: https://static.crates.io/crates/criterion-stats/criterion-stats-0.2.4.crate
  ref: 61ee46663c1c4c770b215f6c412fb1e822cfb5122dbc98347dc5789613c69d2b
- kind: crate
  url: https://static.crates.io/crates/crossbeam-deque/crossbeam-deque-0.2.0.crate
  ref: f739f8c5363aca78cfb059edf753d8f0d36908c348f3d8d1503f03d8b75d9cf3
- kind: crate
  url: https://static.crates.io/crates/crossbeam-epoch/crossbeam-epoch-0.3.1.crate
  ref: 927121f5407de9956180ff5e936fe3cf4324279280001cd56b669d28ee7e9150
- kind: crate
  url: https://static.crates.io/crates/crossbeam-utils/crossbeam-utils-0.2.2.crate
  ref: 2760899e32a1d58d5abb31129f8fae5de75220bc2176e77ff7c627ae45c918d9
- kind: crate
  url: https://static.crates.io/crates/cssparser/cssparser-0.24.0.crate
  ref: 495beddc39b1987b8e9f029354eccbd5ef88eb5f1cd24badb764dce338acf2e0
- kind: crate
  url: https://static.crates.io/crates/cssparser-macros/cssparser-macros-0.3.4.crate
  ref: 72b64d0d64184a082f38028396875c08c8ee083481f6f16e6e0cf52c338bd785
- kind: crate
  url: https://static.crates.io/crates/csv/csv-1.0.0.crate
  ref: 71903184af9960c555e7f3b32ff17390d20ecaaf17d4f18c4a0993f2df8a49e3
- kind: crate
  url: https://static.crates.io/crates/csv-core/csv-core-0.1.4.crate
  ref: 4dd8e6d86f7ba48b4276ef1317edc8cc36167546d8972feb4a2b5fec0b374105
- kind: crate
  url: https://static.crates.io/crates/downcast-rs/downcast-rs-1.0.3.crate
  ref: 18df8ce4470c189d18aa926022da57544f31e154631eb4cfe796aea97051fe6c
- kind: crate
  url: https://static.crates.io/crates/dtoa/dtoa-0.4.2.crate
  ref: 09c3753c3db574d215cba4ea76018483895d7bff25a31b49ba45db21c48e50ab
- kind: crate
  url: https://static.crates.io/crates/dtoa-short/dtoa-short-0.3.2.crate
  ref: 59020b8513b76630c49d918c33db9f4c91638e7d3404a28084083b87e33f76f2
- kind: crate
  url: https://static.crates.io/crates/either/either-1.5.0.crate
  ref: 3be565ca5c557d7f59e7cfcf1844f9e3033650c929c6566f511e8005f205c1d0
- kind: crate
  url: https://static.crates.io/crates/failure/failure-0.1.1.crate
  ref: 934799b6c1de475a012a02dab0ace1ace43789ee4b99bcfbf1a2e3e8ced5de82
- kind: crate
  url: https://static.crates.io/crates/failure_derive/failure_derive-0.1.1.crate
  ref: c7cdda555bb90c9bb67a3b670a0f42de8e73f5981524123ad8578aafec8ddb8b
- kind: crate
  url: https://static.crates.io/crates/float-cmp/float-cmp-0.4.0.crate
  ref: 134a8fa843d80a51a5b77d36d42bc2def9edcb0262c914861d08129fd1926600
- kind: crate
  url: https://static.crates.io/crates/fuchsia-zircon/fuchsia-zircon-0.3.3.crate
  ref: 2e9763c69ebaae630ba35f74888db465e49e259ba1bc0eda7d06f4a067615d82
- kind: crate
  url: https://static.crates.io/crates/fuchsia-zircon-sys/fuchsia-zircon-sys-0.3.3.crate
  ref: 3dcaa9ae7725d12cdb85b3ad99a434db70b468c09ded17e012d86b5c1010f7a7
- kind: crate
  url: https://static.crates.io/crates/generic-array/generic-array-0.11.1.crate
  ref: 8107dafa78c80c848b71b60133954b4a58609a3a1a5f9af037ecc7f67280f369
- kind: crate
  url: https://static.crates.io/crates/glib/glib-0.5.0.crate
  ref: 5e0be1b1432e227bcd1a9b28db9dc1474a7e7fd4227e08e16f35304f32d09b61
- kind: crate
  url: https://static.crates.io/crates/glib-sys/glib-sys-0.6.0.crate
  ref: 615bef979b5838526aee99241afc80cfb2e34a8735d4bcb8ec6072598c18a408
- kind: crate
  url: https://static.crates.io/crates/gobject-sys/gobject-sys-0.6.0.crate
  ref: 70409d6405db8b1591602fcd0cbe8af52cd9976dd39194442b4c149ba343f86d
- kind: crate
  url: https://static.crates.io/crates/handlebars/handlebars-0.32.4.crate
  ref: d89ec99d1594f285d4590fc32bac5f75cdab383f1123d504d27862c644a807dd
- kind: crate
  url: https://static.crates.io/crates/itertools/itertools-0.7.8.crate
  ref: f58856976b776fedd95533137617a02fb25719f40e7d9b01c7043cd65474f450
- kind: crate
  url: https://static.crates.io/crates/itertools-num/itertools-num-0.1.1.crate
  ref: 4d78fa608383e6e608ba36f962ac991d5d6878d7203eb93b4711b14fa6717813
- kind: crate
  url: https://static.crates.io/crates/itoa/itoa-0.4.1.crate
  ref: c069bbec61e1ca5a596166e55dfe4773ff745c3d16b700013bcaff9a6df2c682
- kind: crate
  url: https://static.crates.io/crates/lazy_static/lazy_static-1.0.1.crate
  ref: e6412c5e2ad9584b0b8e979393122026cdd6d2a80b933f890dcd694ddbe73739
- kind: crate
  url: https://static.crates.io/crates/libc/libc-0.2.42.crate
  ref: b685088df2b950fccadf07a7187c8ef846a959c142338a48f9dc0b94517eb5f1
- kind: crate
  url: https://static.crates.io/crates/log/log-0.4.3.crate
  ref: 61bd98ae7f7b754bc53dca7d44b604f733c6bba044ea6f41bc8d89272d8161d2
- kind: crate
  url: https://static.crates.io/crates/matches/matches-0.1.6.crate
  ref: 100aabe6b8ff4e4a7e32c1c13523379802df0772b82466207ac25b013f193376
- kind: crate
  url: https://static.crates.io/crates/matrixmultiply/matrixmultiply-0.1.14.crate
  ref: cac1a66eab356036af85ea093101a14223dc6e3f4c02a59b7d572e5b93270bf7
- kind: crate
  url: https://static.crates.io/crates/memchr/memchr-2.0.1.crate
  ref: 796fba70e76612589ed2ce7f45282f5af869e0fdd7cc6199fa1aa1f1d591ba9d
- kind: crate
  url: https://static.crates.io/crates/memoffset/memoffset-0.2.1.crate
  ref: 0f9dc261e2b62d7a622bf416ea3c5245cdd5d9a7fcc428c0d06804dfce1775b3
- kind: crate
  url: https://static.crates.io/crates/nalgebra/nalgebra-0.16.0.crate
  ref: 4534bc88a178e411e634e1e44e7f2ad6e9bf062ea539f40e579bd49ef2fad056
- kind: crate
  url: https://static.crates.io/crates/nodrop/nodrop-0.1.12.crate
  ref: 9a2228dca57108069a5262f2ed8bd2e82496d2e074a06d1ccc7ce1687b6ae0a2
- kind: crate
  url: https://static.crates.io/crates/num-complex/num-complex-0.2.0.crate
  ref: 68de83578789e0fbda3fa923035be83cf8bfd3b30ccfdecd5aa89bf8601f408e
- kind: crate
  url: https://static.crates.io/crates/num-integer/num-integer-0.1.39.crate
  ref: e83d528d2677f0518c570baf2b7abdcf0cd2d248860b68507bdcb3e91d4c0cea
- kind: crate
  url: https://static.crates.io/crates/num-traits/num-traits-0.1.43.crate
  ref: 92e5113e9fd4cc14ded8e499429f396a20f98c772a47cc8622a736e1ec843c31
- kind: crate
  url: https://static.crates.io/crates/num-traits/num-traits-0.2.5.crate
  ref: 630de1ef5cc79d0cdd78b7e33b81f083cbfe90de0f4b2b2f07f905867c70e9fe
- kind: crate
  url: https://static.crates.io/crates/num_cpus/num_cpus-1.8.0.crate
  ref: c51a3322e4bca9d212ad9a158a02abc6934d005490c054a2778df73a70aa0a30
- kind: crate
  url: https://static.crates.io/crates/owning_ref/owning_ref-0.3.3.crate
  ref: cdf84f41639e037b484f93433aa3897863b561ed65c6e59c7073d7c561710f37
- kind: crate
  url: https://static.crates.io/crates/pango/pango-0.4.0.crate
  ref: 45374801e224373c3c0393cd48073c81093494c8735721e81d1dbaa4096b2767
- kind: crate
  url: https://static.crates.io/crates/pango-sys/pango-sys-0.6.0.crate
  ref: 94039b3921a4af4058a3e4335e5d15099101f298a92f5afc40bab3a3027594a1
- kind: crate
  url: https://static.crates.io/crates/pangocairo/pangocairo-0.5.0.crate
  ref: db4130d0e0567b177178c9568466277ff167cb43a245b2881e203509ea5fbd84
- kind: crate
  url: https://static.crates.io/crates/pangocairo-sys/pangocairo-sys-0.7.0.crate
  ref: decc9523cd5bbba49a67ed8d2ef7dfca957f4760bf420a1ea4a82634da26381c
- kind: crate
  url: https://static.crates.io/crates/pest/pest-1.0.6.crate
  ref: 0fce5d8b5cc33983fc74f78ad552b5522ab41442c4ca91606e4236eb4b5ceefc
- kind: crate
  url: https://static.crates.io/crates/pest_derive/pest_derive-1.0.7.crate
  ref: ab94faafeb93f4c5e3ce81ca0e5a779529a602ad5d09ae6d21996bfb8b6a52bf
- kind: crate
  url: https://static.crates.io/crates/phf/phf-0.7.22.crate
  ref: 7d37a244c75a9748e049225155f56dbcb98fe71b192fd25fd23cb914b5ad62f2
- kind: crate
  url: https://static.crates.io/crates/phf_codegen/phf_codegen-0.7.22.crate
  ref: 4e4048fe7dd7a06b8127ecd6d3803149126e9b33c7558879846da3a63f734f2b
- kind: crate
  url: https://static.crates.io/crates/phf_generator/phf_generator-0.7.22.crate
  ref: 05a079dd052e7b674d21cb31cbb6c05efd56a2cd2827db7692e2f1a507ebd998
- kind: crate
  url: https://static.crates.io/crates/phf_shared/phf_shared-0.7.22.crate
  ref: c2261d544c2bb6aa3b10022b0be371b9c7c64f762ef28c6f5d4f1ef6d97b5930
- kind: crate
  url: https://static.crates.io/crates/pkg-config/pkg-config-0.3.11.crate
  ref: 110d5ee3593dbb73f56294327fe5668bcc997897097cbc76b51e7aed3f52452f
- kind: crate
  url: https://static.crates.io/crates/proc-macro2/proc-macro2-0.4.6.crate
  ref: effdb53b25cdad54f8f48843d67398f7ef2e14f12c1b4cb4effc549a6462a4d6
- kind: crate
  url: https://static.crates.io/crates/procedural-masquerade/procedural-masquerade-0.1.6.crate
  ref: 9a1574a51c3fd37b26d2c0032b649d08a7d51d4cca9c41bbc5bf7118fa4509d0
- kind: crate
  url: https://static.crates.io/crates/quick-error/quick-error-1.2.2.crate
  ref: 9274b940887ce9addde99c4eee6b5c44cc494b182b97e73dc8ffdcb3397fd3f0
- kind: crate
  url: https://static.crates.io/crates/quote/quote-0.3.15.crate
  ref: 7a6e920b65c65f10b2ae65c831a81a073a89edd28c7cce89475bff467ab4167a
- kind: crate
  url: https://static.crates.io/crates/quote/quote-0.6.3.crate
  ref: e44651a0dc4cdd99f71c83b561e221f714912d11af1a4dff0631f923d53af035
- kind: crate
  url: https://static.crates.io/crates/rand/rand-0.4.2.crate
  ref: eba5f8cb59cc50ed56be8880a5c7b496bfd9bd26394e176bc67884094145c2c5
- kind: crate
  url: https://static.crates.io/crates/rand/rand-0.5.4.crate
  ref: 12397506224b2f93e6664ffc4f664b29be8208e5157d3d90b44f09b5fae470ea
- kind: crate
  url: https://static.crates.io/crates/rand_core/rand_core-0.2.1.crate
  ref: edecf0f94da5551fc9b492093e30b041a891657db7940ee221f9d2f66e82eef2
- kind: crate
  url: https://static.crates.io/crates/rawpointer/rawpointer-0.1.0.crate
  ref: ebac11a9d2e11f2af219b8b8d833b76b1ea0e054aa0e8d8e9e4cbde353bdf019
- kind: crate
  url: https://static.crates.io/crates/rayon/rayon-1.0.2.crate
  ref: df7a791f788cb4c516f0e091301a29c2b71ef680db5e644a7d68835c8ae6dbfa
- kind: crate
  url: https://static.crates.io/crates/rayon-core/rayon-core-1.4.1.crate
  ref: b055d1e92aba6877574d8fe604a63c8b5df60f60e5982bf7ccbb1338ea527356
- kind: crate
  url: https://static.crates.io/crates/redox_syscall/redox_syscall-0.1.40.crate
  ref: c214e91d3ecf43e9a4e41e578973adeb14b474f2bee858742d127af75a0112b1
- kind: crate
  url: https://static.crates.io/crates/redox_termios/redox_termios-0.1.1.crate
  ref: 7e891cfe48e9100a70a3b6eb652fef28920c117d366339687bd5576160db0f76
- kind: crate
  url: https://static.crates.io/crates/regex/regex-1.0.1.crate
  ref: 13c93d55961981ba9226a213b385216f83ab43bd6ac53ab16b2eeb47e337cf4e
- kind: crate
  url: https://static.crates.io/crates/regex-syntax/regex-syntax-0.6.1.crate
  ref: 05b06a75f5217880fc5e905952a42750bf44787e56a6c6d6852ed0992f5e1d54
- kind: crate
  url: https://static.crates.io/crates/rustc-demangle/rustc-demangle-0.1.9.crate
  ref: bcfe5b13211b4d78e5c2cadfebd7769197d95c639c35a50057eb4c05de811395
- kind: crate
  url: https://static.crates.io/crates/scopeguard/scopeguard-0.3.3.crate
  ref: 94258f53601af11e6a49f722422f6e3425c52b06245a5cf9bc09908b174f5e27
- kind: crate
  url: https://static.crates.io/crates/serde/serde-1.0.70.crate
  ref: 0c3adf19c07af6d186d91dae8927b83b0553d07ca56cbf7f2f32560455c91920
- kind: crate
  url: https://static.crates.io/crates/serde_derive/serde_derive-1.0.70.crate
  ref: 3525a779832b08693031b8ecfb0de81cd71cfd3812088fafe9a7496789572124
- kind: crate
  url: https://static.crates.io/crates/serde_json/serde_json-1.0.24.crate
  ref: c3c6908c7b925cd6c590358a4034de93dbddb20c45e1d021931459fd419bf0e2
- kind: crate
  url: https://static.crates.io/crates/simplelog/simplelog-0.5.2.crate
  ref: 9cc12b39fdf4c9a07f88bffac2d628f0118ed5ac077a4b0feece61fadf1429e5
- kind: crate
  url: https://static.crates.io/crates/siphasher/siphasher-0.2.2.crate
  ref: 0df90a788073e8d0235a67e50441d47db7c8ad9debd91cbf43736a2a92d36537
- kind: crate
  url: https://static.crates.io/crates/smallvec/smallvec-0.6.3.crate
  ref: 26df3bb03ca5eac2e64192b723d51f56c1b1e0860e7c766281f4598f181acdc8
- kind: crate
  url: https://static.crates.io/crates/stable_deref_trait/stable_deref_trait-1.1.0.crate
  ref: ffbc596e092fe5f598b12ef46cc03754085ac2f4d8c739ad61c4ae266cc3b3fa
- kind: crate
  url: https://static.crates.io/crates/strsim/strsim-0.7.0.crate
  ref: bb4f380125926a99e52bc279241539c018323fab05ad6368b56f93d9369ff550
- kind: crate
  url: https://static.crates.io/crates/syn/syn-0.11.11.crate
  ref: d3b891b9015c88c576343b9b3e41c2c11a51c219ef067b264bd9c8aa9b441dad
- kind: crate
  url: https://static.crates.io/crates/syn/syn-0.14.4.crate
  ref: 2beff8ebc3658f07512a413866875adddd20f4fd47b2a4e6c9da65cd281baaea
- kind: crate
  url: https://static.crates.io/crates/synom/synom-0.11.3.crate
  ref: a393066ed9010ebaed60b9eafa373d4b1baac186dd7e008555b0f702b51945b6
- kind: crate
  url: https://static.crates.io/crates/synstructure/synstructure-0.6.1.crate
  ref: 3a761d12e6d8dcb4dcf952a7a89b475e3a9d69e4a69307e01a470977642914bd
- kind: crate
  url: https://static.crates.io/crates/term/term-0.5.1.crate
  ref: 5e6b677dd1e8214ea1ef4297f85dbcbed8e8cdddb561040cc998ca2551c37561
- kind: crate
  url: https://static.crates.io/crates/termion/termion-1.5.1.crate
  ref: 689a3bdfaab439fd92bc87df5c4c78417d3cbe537487274e9b0b2dce76e92096
- kind: crate
  url: https://static.crates.io/crates/textwrap/textwrap-0.10.0.crate
  ref: 307686869c93e71f94da64286f9a9524c0f308a9e1c87a583de8e9c9039ad3f6
- kind: crate
  url: https://static.crates.io/crates/thread-scoped/thread-scoped-1.0.2.crate
  ref: bcbb6aa301e5d3b0b5ef639c9a9c7e2f1c944f177b460c04dc24c69b1fa2bd99
- kind: crate
  url: https://static.crates.io/crates/thread_local/thread_local-0.3.5.crate
  ref: 279ef31c19ededf577bfd12dfae728040a21f635b06a24cd670ff510edd38963
- kind: crate
  url: https://static.crates.io/crates/time/time-0.1.40.crate
  ref: d825be0eb33fda1a7e68012d51e9c7f451dc1a69391e7fdc197060bb8c56667b
- kind: crate
  url: https://static.crates.io/crates/typenum/typenum-1.10.0.crate
  ref: 612d636f949607bdf9b123b4a6f6d966dedf3ff669f7f045890d3a4a73948169
- kind: crate
  url: https://static.crates.io/crates/ucd-util/ucd-util-0.1.1.crate
  ref: fd2be2d6639d0f8fe6cdda291ad456e23629558d466e2789d2c3e9892bda285d
- kind: crate
  url: https://static.crates.io/crates/unicode-width/unicode-width-0.1.5.crate
  ref: 882386231c45df4700b275c7ff55b6f3698780a650026380e72dabe76fa46526
- kind: crate
  url: https://static.crates.io/crates/unicode-xid/unicode-xid-0.0.4.crate
  ref: 8c1f860d7d29cf02cb2f3f359fd35991af3d30bac52c57d265a3c461074cb4dc
- kind: crate
  url: https://static.crates.io/crates/unicode-xid/unicode-xid-0.1.0.crate
  ref: fc72304796d0818e357ead4e000d19c9c174ab23dc11093ac919054d20a6a7fc
- kind: crate
  url: https://static.crates.io/crates/unreachable/unreachable-1.0.0.crate
  ref: 382810877fe448991dfc7f0dd6e3ae5d58088fd0ea5e35189655f84e6814fa56
- kind: crate
  url: https://static.crates.io/crates/utf8-ranges/utf8-ranges-1.0.0.crate
  ref: 662fab6525a98beff2921d7f61a39e7d59e0b425ebc7d0d9e66d316e55124122
- kind: crate
  url: https://static.crates.io/crates/vec_map/vec_map-0.8.1.crate
  ref: 05c78687fb1a80548ae3250346c3db86a80a7cdd77bda190189f2d0a0987c81a
- kind: crate
  url: https://static.crates.io/crates/void/void-1.0.2.crate
  ref: 6a02e4885ed3bc0f2de90ea6dd45ebcbb66dacffe03547fadbb0eeae2770887d
- kind: crate
  url: https://static.crates.io/crates/winapi/winapi-0.3.5.crate
  ref: 773ef9dcc5f24b7d850d0ff101e542ff24c3b090a9768e03ff889fdef41f00fd
- kind: crate
  url: https://static.crates.io/crates/winapi-i686-pc-windows-gnu/winapi-i686-pc-windows-gnu-0.4.0.crate
  ref: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
- kind: crate
  url: https://static.crates.io/crates/winapi-x86_64-pc-windows-gnu/winapi-x86_64-pc-windows-gnu-0.4.0.crate
  ref: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
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
