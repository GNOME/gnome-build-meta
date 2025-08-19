kind: manual

environment:
  MAXJOBS: "%{max-jobs}"

environment-nocache:
- MAXJOBS

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/cargo-c.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
- kind: tar
  url: crates:crates/gst-plugin-gtk4/gst-plugin-gtk4-0.14.0.crate
  ref: 68d208c00b9e913b7f9f040c6a3b741b8723a102e46c677c87d2cc4f033bb853
- kind: cargo2
  ref:
  - kind: registry
    name: android-tzdata
    version: 0.1.1
    sha: e999941b234f3131b00bc13c22d06e8c5ff726d1b6318ac7eb276997bbb4fef0
  - kind: registry
    name: android_system_properties
    version: 0.1.5
    sha: 819e7219dbd41043ac279b19830f2efc897156490d7fd6ea916720117ee66311
  - kind: registry
    name: async-channel
    version: 2.5.0
    sha: 924ed96dd52d1b75e9c1a3e6275715fd320f5f9439fb5a4a11fa51f4221158d2
  - kind: registry
    name: atomic_refcell
    version: 0.1.13
    sha: 41e67cd8309bbd06cd603a9e693a784ac2e5d1e955f11286e355089fcab3047c
  - kind: registry
    name: autocfg
    version: 1.5.0
    sha: c08606f8c3cbf4ce6ec8e28fb0014a2c086708fe954eaa885384a6165172e7e8
  - kind: registry
    name: bitflags
    version: 2.9.1
    sha: 1b8e56985ec62d17e9c1001dc89c88ecd7dc08e47eba5ec7c29c7b5eeecde967
  - kind: registry
    name: bumpalo
    version: 3.19.0
    sha: 46c5e41b57b8bba42a04676d81cb89e9ee8e859a1a66f80a5a72e1cb76b34d43
  - kind: registry
    name: cairo-rs
    version: 0.21.0
    sha: f6466a563dea2e99f59f6ffbb749fd0bdf75764f5e6e93976b5e7bd73c4c9efb
  - kind: registry
    name: cairo-sys-rs
    version: 0.21.0
    sha: cab7e9f13c802625aad1ad2b4ae3989f4ce9339ff388f335a6f109f9338705e2
  - kind: registry
    name: cc
    version: 1.2.29
    sha: 5c1599538de2394445747c8cf7935946e3cc27e9625f889d979bfb2aaf569362
  - kind: registry
    name: cfg-expr
    version: 0.18.0
    sha: 1a2b34126159980f92da2a08bdec0694fd80fb5eb9e48aff25d20a0d8dfa710d
  - kind: registry
    name: cfg-if
    version: 1.0.1
    sha: 9555578bc9e57714c812a1f84e4fc5b4d21fcb063490c624de019f7464c91268
  - kind: registry
    name: chrono
    version: 0.4.41
    sha: c469d952047f47f91b68d1cba3f10d63c11d73e4636f24f08daf0278abf01c4d
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: core-foundation-sys
    version: 0.8.7
    sha: 773648b94d0e5d620f64f280777445740e61fe701025087ec8b57f45c791888b
  - kind: registry
    name: crossbeam-utils
    version: 0.8.21
    sha: d0a5c400df2834b80a4c3327b3aad3a4c4cd4de0629063962b03235697506a28
  - kind: registry
    name: either
    version: 1.15.0
    sha: 48c757948c5ede0e46177b7add2e67155f70e33c07fea8284df6576da70b3719
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
  - kind: registry
    name: event-listener
    version: 5.4.0
    sha: 3492acde4c3fc54c845eaab3eed8bd00c7a7d881f78bfc801e43a93dec1331ae
  - kind: registry
    name: event-listener-strategy
    version: 0.5.4
    sha: 8be9f3dfaaffdae2972880079a491a1a8bb7cbed0b8dd7a347f668b4150a3b93
  - kind: registry
    name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - kind: registry
    name: futures-channel
    version: 0.3.31
    sha: 2dff15bf788c671c1934e366d07e30c1814a8ef514e1af724a602e8a2fbe1b10
  - kind: registry
    name: futures-core
    version: 0.3.31
    sha: 05f29059c0c2090612e8d742178b0580d2dc940c837851ad723096f87af6663e
  - kind: registry
    name: futures-executor
    version: 0.3.31
    sha: 1e28d1d997f585e54aebc3f97d39e72338912123a67330d723fdbb564d646c9f
  - kind: registry
    name: futures-io
    version: 0.3.31
    sha: 9e5c1b78ca4aae1ac06c48a526a655760685149f0d465d21f37abfe57ce075c6
  - kind: registry
    name: futures-macro
    version: 0.3.31
    sha: 162ee34ebcb7c64a8abebc059ce0fee27c2262618d7b60ed8faf72fef13c3650
  - kind: registry
    name: futures-task
    version: 0.3.31
    sha: f90f7dce0722e95104fcb095585910c0977252f286e354b5e3bd38902cd99988
  - kind: registry
    name: futures-util
    version: 0.3.31
    sha: 9fa08315bb612088cc391249efdc3bc77536f16c91f6cf495e6fbe85b20a4a81
  - kind: registry
    name: gdk-pixbuf
    version: 0.21.0
    sha: 688dc7eaf551dbac1f5b11d000d089c3db29feb25562455f47c1a2080cc60bda
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.21.0
    sha: 5af1823d3d1cb72616873ba0a593bd440eb92da700fdfb047505a21ee3ec3e10
  - kind: registry
    name: gdk4
    version: 0.10.0
    sha: 0a67b064d2f35e649232455c7724f56f977555d2608c43300eabc530eaa4e359
  - kind: registry
    name: gdk4-sys
    version: 0.10.0
    sha: 2edbda0d879eb85317bdb49a3da591ed70a804a10776e358ef416be38c6db2c5
  - kind: registry
    name: gdk4-wayland
    version: 0.10.0
    sha: f04e030e86c5fc5495eceb83ccbce6c3768078147ece063e5fa34f986fea9b76
  - kind: registry
    name: gdk4-wayland-sys
    version: 0.10.0
    sha: 15dca5981448ca1207333aeb9c206583490bbfefc781b97886c7e685ab218368
  - kind: registry
    name: gdk4-win32
    version: 0.10.0
    sha: 8cc947b0056bff5bb2d9c8788c12c176fcd1a76b5bf891592090a85630bd7c96
  - kind: registry
    name: gdk4-win32-sys
    version: 0.10.0
    sha: fbcb474613d6cdca18d1e8571b7dd6d708a6ff33b227bee0e969a8566694fe96
  - kind: registry
    name: gdk4-x11
    version: 0.10.0
    sha: 0634a3d51ccb33e6644d7a4ec29551e1ea2ea6692c420ba6eeae8c42b3363fbc
  - kind: registry
    name: gdk4-x11-sys
    version: 0.10.0
    sha: e387238aacc531f93d9031b69c74ce2236b5fd6438e55bc8b7b79a60c883c350
  - kind: registry
    name: gio
    version: 0.21.0
    sha: 273d64c833fbbf7cd86c4cdced893c5d3f2f5d6aeb30fd0c30d172456ce8be2e
  - kind: registry
    name: gio-sys
    version: 0.21.0
    sha: 2c8130f5810a839d74afc3a929c34a700bf194972bb034f2ecfe639682dd13cc
  - kind: registry
    name: glib
    version: 0.21.0
    sha: 690e8bcf8a819b5911d6ae79879226191d01253a4f602748072603defd5b9553
  - kind: registry
    name: glib-macros
    version: 0.21.0
    sha: e772291ebea14c28eb11bb75741f62f4a4894f25e60ce80100797b6b010ef0f9
  - kind: registry
    name: glib-sys
    version: 0.21.0
    sha: 4b2be4c74454fb4a6bd3328320737d0fa3d6939e2d570f5d846da00cb222f6a0
  - kind: registry
    name: gobject-sys
    version: 0.21.0
    sha: ab318a786f9abd49d388013b9161fa0ef8218ea6118ee7111c95e62186f7d31f
  - kind: registry
    name: graphene-rs
    version: 0.21.0
    sha: 0487f78e8a772ec89020458fbabadd1332bc1e3236ca1c63ef1d61afd4e5f2cc
  - kind: registry
    name: graphene-sys
    version: 0.21.0
    sha: 270cefb6b270fcb2ef9708c3a35c0e25c2e831dac28d75c4f87e5ad3540c9543
  - kind: registry
    name: gsk4
    version: 0.10.0
    sha: d5dbe33ceed6fc20def67c03d36e532f5a4a569ae437ae015a7146094f31e10c
  - kind: registry
    name: gsk4-sys
    version: 0.10.0
    sha: 8d76011d55dd19fde16ffdedee08877ae6ec942818cfa7bc08a91259bc0b9fc9
  - kind: registry
    name: gst-plugin-version-helper
    version: 0.8.3
    sha: a68a894ef2d738054b950e1dbef5d9012b63fd968d4d32dbccd31bd8d8d4b219
  - kind: registry
    name: gstreamer
    version: 0.24.0
    sha: 1394d2bb79b4e7a662329c0afbb0f4be528f9a2289d094a31b4bd308e8c0972a
  - kind: registry
    name: gstreamer-allocators
    version: 0.24.0
    sha: 7c685206edb606999219eba3dcf6ac9e080113d9697f28e9e29524e4744ef72b
  - kind: registry
    name: gstreamer-allocators-sys
    version: 0.24.0
    sha: e5fe8ea3a27951ac6d12a481d9d4e5248ec9e0a02e0b3e6a620911d5cefb3106
  - kind: registry
    name: gstreamer-base
    version: 0.24.0
    sha: 34745d3726a080e0d57e402a314e37073d0b341f3a5754258550311ca45e4754
  - kind: registry
    name: gstreamer-base-sys
    version: 0.24.0
    sha: dfad00fa63ddd8132306feef9d5095a3636192f09d925adfd0a9be0d82b9ea91
  - kind: registry
    name: gstreamer-gl
    version: 0.24.0
    sha: 00e05c036adf925d75d52e221b65c9158d033c308f078ac89b3f49d48a26ecaf
  - kind: registry
    name: gstreamer-gl-egl
    version: 0.24.0
    sha: fefa8bb82d924eaaf93812dc448ebd1b99e11c247d6d400af2a3fd2cfa3c9e9a
  - kind: registry
    name: gstreamer-gl-egl-sys
    version: 0.24.0
    sha: cb2c448f0877b90c1384308d243bb946e8395163681ec2990923122eba7a1449
  - kind: registry
    name: gstreamer-gl-sys
    version: 0.24.0
    sha: 386340699dc1ace25fcedb57d9eb89eda58ef020e7987daba8b6697d18626519
  - kind: registry
    name: gstreamer-gl-wayland
    version: 0.24.0
    sha: cd843ce4bb5c8fb10464c032eb3eb21c21003917f5c39c2803e977d0022a04a2
  - kind: registry
    name: gstreamer-gl-wayland-sys
    version: 0.24.0
    sha: 4cf23299fa9c9974a3acd6c843ae86a5951fb4569642db1d84111995129d208e
  - kind: registry
    name: gstreamer-gl-x11
    version: 0.24.0
    sha: abf3c544864fb529246945f8160257751fdd251dad50f2443152cf663757e21f
  - kind: registry
    name: gstreamer-gl-x11-sys
    version: 0.24.0
    sha: 263dc82655331ce7b21697317c35f090c9396d83edec61f52d888dfce02040de
  - kind: registry
    name: gstreamer-sys
    version: 0.24.0
    sha: 36f46b35f9dc4b5a0dca3f19d2118bb5355c3112f228a99a84ed555f48ce5cf9
  - kind: registry
    name: gstreamer-video
    version: 0.24.0
    sha: a7f312d41e9b1d830fb60bcfb68234ff00f8933cbb27a1179bde81e0241cb863
  - kind: registry
    name: gstreamer-video-sys
    version: 0.24.0
    sha: 14e259906ee2ad72201a1977815be4493a66a64f19c6f2efa3e7f93c27add4a5
  - kind: registry
    name: gtk4
    version: 0.10.0
    sha: 938d68ad43080ad5ee710c30d467c1bc022ee5947856f593855691d726305b3e
  - kind: registry
    name: gtk4-macros
    version: 0.10.0
    sha: 0912d2068695633002b92c5966edc108b2e4f54b58c509d1eeddd4cbceb7315c
  - kind: registry
    name: gtk4-sys
    version: 0.10.0
    sha: a923bdcf00e46723801162de24432cbce38a6810e0178a2d0b6dd4ecc26a1c74
  - kind: registry
    name: hashbrown
    version: 0.15.4
    sha: 5971ac85611da7067dbfcabef3c70ebb5606018acd9e2a3903a0da507521e0d5
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: iana-time-zone
    version: 0.1.63
    sha: b0c919e5debc312ad217002b8048a17b7d83f80703865bbfcfebb0458b0b27d8
  - kind: registry
    name: iana-time-zone-haiku
    version: 0.1.2
    sha: f31827a206f56af32e590ba56d5d2d085f558508192593743f16b2306495269f
  - kind: registry
    name: indexmap
    version: 2.10.0
    sha: fe4cd85333e22411419a0bcae1297d25e58c9443848b11dc6a86fefe8c78a661
  - kind: registry
    name: itertools
    version: 0.14.0
    sha: 2b192c782037fadd9cfa75548310488aabdbf3d2da73885b31bd0abd03351285
  - kind: registry
    name: js-sys
    version: 0.3.77
    sha: 1cfaf33c695fc6e08064efbc1f72ec937429614f25eef83af942d0e227c3a28f
  - kind: registry
    name: khronos-egl
    version: 6.0.0
    sha: 6aae1df220ece3c0ada96b8153459b67eebe9ae9212258bb0134ae60416fdf76
  - kind: registry
    name: kstring
    version: 2.0.2
    sha: 558bf9508a558512042d3095138b1f7b8fe90c5467d94f9f1da28b3731c5dbd1
  - kind: registry
    name: libc
    version: 0.2.174
    sha: 1171693293099992e19cddea4e8b849964e9846f4acee11b3948bcc337be8776
  - kind: registry
    name: log
    version: 0.4.27
    sha: 13dc2df351e3202783a1fe0d44375f7295ffb4049267b0f3018346dc122a1d94
  - kind: registry
    name: memchr
    version: 2.7.5
    sha: 32a282da65faaf38286cf3be983213fcf1d2e2a58700e808f83f4ea9a4804bc0
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: muldiv
    version: 1.0.1
    sha: 956787520e75e9bd233246045d19f42fb73242759cc57fba9611d940ae96d4b0
  - kind: registry
    name: num-integer
    version: 0.1.46
    sha: 7969661fd2958a5cb096e56c8e1ad0444ac2bbcd0061bd28660485a44879858f
  - kind: registry
    name: num-rational
    version: 0.4.2
    sha: f83d14da390562dca69fc84082e73e548e1ad308d24accdedd2720017cb37824
  - kind: registry
    name: num-traits
    version: 0.2.19
    sha: 071dfc062690e90b734c0b2273ce72ad0ffa95f0c74596bc250dcfd960262841
  - kind: registry
    name: once_cell
    version: 1.21.3
    sha: 42f5e15c9953c5e4ccceeb2e7382a716482c34515315f7b03532b8b4e8393d2d
  - kind: registry
    name: option-operations
    version: 0.5.0
    sha: 7c26d27bb1aeab65138e4bf7666045169d1717febcc9ff870166be8348b223d0
  - kind: registry
    name: pango
    version: 0.21.0
    sha: 2d4803f086c4f49163c31ac14db162112a22401c116435080e4be8678c507d61
  - kind: registry
    name: pango-sys
    version: 0.21.0
    sha: 66872b3cfd328ad6d1a4f89ebd5357119bd4c592a4ddbb8f6bc2386f8ce7b898
  - kind: registry
    name: parking
    version: 2.2.1
    sha: f38d5652c16fde515bb1ecef450ab0f6a219d619a7274976324d5e377f7dceba
  - kind: registry
    name: paste
    version: 1.0.15
    sha: 57c0d7b74b563b49d38dae00a0c37d4d6de9b432382b2892f0574ddcae73fd0a
  - kind: registry
    name: pin-project-lite
    version: 0.2.16
    sha: 3b3cff922bd51709b605d9ead9aa71031d81447142d828eb4a6eba76fe619f9b
  - kind: registry
    name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - kind: registry
    name: pkg-config
    version: 0.3.32
    sha: 7edddbd0b52d732b21ad9a5fab5c704c14cd949e5e9a1ec5929a24fded1b904c
  - kind: registry
    name: proc-macro-crate
    version: 3.3.0
    sha: edce586971a4dfaa28950c6f18ed55e0406c1ab88bbce2c6f6293a7aaba73d35
  - kind: registry
    name: proc-macro2
    version: 1.0.95
    sha: 02b3e5e68a3a1a02aad3ec490a98007cbc13c37cbe84a3cd7b8e406d76e7f778
  - kind: registry
    name: quote
    version: 1.0.40
    sha: 1885c039570dc00dcb4ff087a89e185fd56bae234ddc7f056a945bf36467248d
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: rustversion
    version: 1.0.21
    sha: 8a0d197bd2c9dc6e53b84da9556a69ba4cdfab8619eb41a8bd1cc2027a0f6b1d
  - kind: registry
    name: semver
    version: 1.0.26
    sha: 56e6fa9c48d24d85fb3de5ad847117517440f6beceb7798af16b4a87d616b8d0
  - kind: registry
    name: serde
    version: 1.0.219
    sha: 5f0e2c6ed6606019b4e29e69dbaba95b11854410e5347d525002456dbbb786b6
  - kind: registry
    name: serde_derive
    version: 1.0.219
    sha: 5b0276cf7f2c73365f7157c8123c21cd9a50fbbd844757af28ca1f5925fc2a00
  - kind: registry
    name: serde_spanned
    version: 0.6.9
    sha: bf41e0cfaf7226dca15e8197172c295a782857fcb97fad1808a166870dee75a3
  - kind: registry
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
  - kind: registry
    name: slab
    version: 0.4.10
    sha: 04dc19736151f35336d325007ac991178d504a119863a2fcb3758cdb5e52c50d
  - kind: registry
    name: smallvec
    version: 1.15.1
    sha: 67b1b7a3b5fe4f1376887184045fcf45c69e92af734b7aaddc05fb777b6fbd03
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - kind: registry
    name: syn
    version: 2.0.104
    sha: 17b6f705963418cdb9927482fa304bc562ece2fdd4f616084c50b7023b435a40
  - kind: registry
    name: system-deps
    version: 7.0.5
    sha: e4be53aa0cba896d2dc615bd42bbc130acdcffa239e0a2d965ea5b3b2a86ffdb
  - kind: registry
    name: target-lexicon
    version: 0.13.2
    sha: e502f78cdbb8ba4718f566c418c52bc729126ffd16baee5baa718cf25dd5a69a
  - kind: registry
    name: thiserror
    version: 2.0.12
    sha: 567b8a2dae586314f7be2a752ec7474332959c6460e02bde30d702a66d488708
  - kind: registry
    name: thiserror-impl
    version: 2.0.12
    sha: 7f7cf42b4507d8ea322120659672cf1b9dbb93f8f2d4ecfd6e51350ff5b17a1d
  - kind: registry
    name: toml
    version: 0.8.23
    sha: dc1beb996b9d83529a9e75c17a1686767d148d70663143c7854d8b4a09ced362
  - kind: registry
    name: toml_datetime
    version: 0.6.11
    sha: 22cddaf88f4fbc13c51aebbf5f8eceb5c7c5a9da2ac40a13519eb5b0a0e8f11c
  - kind: registry
    name: toml_datetime
    version: 0.7.0
    sha: bade1c3e902f58d73d3f294cd7f20391c1cb2fbcb643b73566bc773971df91e3
  - kind: registry
    name: toml_edit
    version: 0.22.27
    sha: 41fe8c660ae4257887cf66394862d21dbca4a6ddd26f04a3560410406a2f819a
  - kind: registry
    name: toml_edit
    version: 0.23.1
    sha: b1f23a5f4511b296579b6c83e437fe85fa7ece22e3ec44e45ddb975bcf57c3dd
  - kind: registry
    name: toml_parser
    version: 1.0.1
    sha: 97200572db069e74c512a14117b296ba0a80a30123fbbb5aa1f4a348f639ca30
  - kind: registry
    name: unicode-ident
    version: 1.0.18
    sha: 5a5f39404a5da50712a4c1eecf25e90dd62b613502b7e925fd4e4d19b5c96512
  - kind: registry
    name: version-compare
    version: 0.2.0
    sha: 852e951cb7832cb45cb1169900d19760cfa39b82bc0ea9c0e5a14ae88411c98b
  - kind: registry
    name: wasm-bindgen
    version: 0.2.100
    sha: 1edc8929d7499fc4e8f0be2262a241556cfc54a0bea223790e71446f2aab1ef5
  - kind: registry
    name: wasm-bindgen-backend
    version: 0.2.100
    sha: 2f0a0651a5c2bc21487bde11ee802ccaf4c51935d0d3d42a6101f98161700bc6
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.100
    sha: 7fe63fc6d09ed3792bd0897b314f53de8e16568c2b3f7982f468c0bf9bd0b407
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.100
    sha: 8ae87ea40c9f689fc23f209965b6fb8a99ad69aeeb0231408be24920604395de
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.100
    sha: 1a05d73b933a847d6cccdda8f838a22ff101ad9bf93e33684f39c1f5f0eece3d
  - kind: registry
    name: windows-core
    version: 0.61.2
    sha: c0fdd3ddb90610c7638aa2b3a3ab2904fb9e5cdbecc643ddb3647212781c4ae3
  - kind: registry
    name: windows-implement
    version: 0.60.0
    sha: a47fddd13af08290e67f4acabf4b459f647552718f683a7b415d290ac744a836
  - kind: registry
    name: windows-interface
    version: 0.59.1
    sha: bd9211b69f8dcdfa817bfd14bf1c97c9188afa36f4750130fcdf3f400eca9fa8
  - kind: registry
    name: windows-link
    version: 0.1.3
    sha: 5e6ad25900d524eaabdbbb96d20b4311e1e7ae1699af4fb28c17ae66c80d798a
  - kind: registry
    name: windows-result
    version: 0.3.4
    sha: 56f42bd332cc6c8eac5af113fc0c1fd6a8fd2aa08a0119358686e5160d0586c6
  - kind: registry
    name: windows-strings
    version: 0.4.2
    sha: 56e6c93f3a0c3b36176cb1327a4958a0353d5d166c2a35cb268ace15e91d3b57
  - kind: registry
    name: windows-sys
    version: 0.52.0
    sha: 282be5f36a8ce781fad8c8ae18fa3f9beff57ec1b52cb3de0789201425d9a33d
  - kind: registry
    name: windows-targets
    version: 0.52.6
    sha: 9b724f72796e036ab90c1021d4780d4d3d648aca59e491e6b98e725b84e99973
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.52.6
    sha: 32a4622180e7a0ec044bb555404c800bc9fd9ec262ec147edd5989ccd0c02cd3
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.52.6
    sha: 09ec2a7bb152e2252b53fa7803150007879548bc709c039df7627cabbd05d469
  - kind: registry
    name: windows_i686_gnu
    version: 0.52.6
    sha: 8e9b5ad5ab802e97eb8e295ac6720e509ee4c243f69d781394014ebfe8bbfa0b
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.52.6
    sha: 0eee52d38c090b3caa76c563b86c3a4bd71ef1a819287c19d586d7334ae8ed66
  - kind: registry
    name: windows_i686_msvc
    version: 0.52.6
    sha: 240948bc05c5e7c6dabba28bf89d89ffce3e303022809e73deaefe4f6ec56c66
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.52.6
    sha: 147a5c80aabfbf0c7d901cb5895d1de30ef2907eb21fbbab29ca94c5b08b1a78
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.52.6
    sha: 24d5b23dc417412679681396f2b49f3de8c1473deb516bd34410872eff51ed0d
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.52.6
    sha: 589f6da84c646204747d1270a2a5661ea66ed1cced2631d546fdfb155959f9ec
  - kind: registry
    name: winnow
    version: 0.7.12
    sha: f3edebf492c8125044983378ecb5766203ad3b4c2f7a922bd7dd207f6d443e95
config:
  install-commands:
  - >-
    cargo cinstall
    --offline
    --release
    --prefix=%{prefix}
    --libdir=%{libdir}
    --destdir=%{install-root}
    --features=wayland,x11glx,x11egl,dmabuf,gtk_v4_20
    --library-type=cdylib
    --jobs "${MAXJOBS}"
  - |
    %{install-extra}
