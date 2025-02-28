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
  url: crates:crates/gst-plugin-gtk4/gst-plugin-gtk4-0.13.4.crate
  ref: 2cadbc46e0e79cc43b290df59262a17088ca0c6c3a4fbede5c179bf5b6994f42
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
    version: 2.3.1
    sha: 89b47800b0be77592da0afd425cc03468052844aff33b84e33cc696f64e77b6a
  - kind: registry
    name: atomic_refcell
    version: 0.1.13
    sha: 41e67cd8309bbd06cd603a9e693a784ac2e5d1e955f11286e355089fcab3047c
  - kind: registry
    name: autocfg
    version: 1.4.0
    sha: ace50bade8e6234aa140d9a2f552bbee1db4d353f69b8217bc503490fc1a9f26
  - kind: registry
    name: bitflags
    version: 2.6.0
    sha: b048fb63fd8b5923fc5aa7b340d8e156aec7ec02f0c78fa8a6ddc2613f6f71de
  - kind: registry
    name: bumpalo
    version: 3.16.0
    sha: 79296716171880943b8470b5f8d03aa55eb2e645a4874bdbb28adb49162e012c
  - kind: registry
    name: cairo-rs
    version: 0.20.7
    sha: ae50b5510d86cf96ac2370e66d8dc960882f3df179d6a5a1e52bd94a1416c0f7
  - kind: registry
    name: cairo-sys-rs
    version: 0.20.7
    sha: f18b6bb8e43c7eb0f2aac7976afe0c61b6f5fc2ab7bc4c139537ea56c92290df
  - kind: registry
    name: cc
    version: 1.2.5
    sha: c31a0499c1dc64f458ad13872de75c0eb7e3fdb0e67964610c914b034fc5956e
  - kind: registry
    name: cfg-expr
    version: 0.17.2
    sha: 8d4ba6e40bd1184518716a6e1a781bf9160e286d219ccdb8ab2612e74cfe4789
  - kind: registry
    name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - kind: registry
    name: chrono
    version: 0.4.39
    sha: 7e36cc9d416881d2e24f9a963be5fb1cd90966419ac844274161d10488b3e825
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
    version: 1.13.0
    sha: 60b1af1c220855b6ceac025d3f6ecdd2b7c4894bfe9cd9bda4fbb4bc7c0d4cf0
  - kind: registry
    name: equivalent
    version: 1.0.1
    sha: 5443807d6dff69373d433ab9ef5378ad8df50ca6298caf15de6e52e24aaf54d5
  - kind: registry
    name: event-listener
    version: 5.3.1
    sha: 6032be9bd27023a771701cc49f9f053c751055f71efb2e0ae5c15809093675ba
  - kind: registry
    name: event-listener-strategy
    version: 0.5.3
    sha: 3c3e4e0dd3673c1139bf041f3008816d9cf2946bbfac2945c09e523b8d7b05b2
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
    version: 0.20.7
    sha: b6efc7705f7863d37b12ad6974cbb310d35d054f5108cdc1e69037742f573c4c
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.20.7
    sha: 67f2587c9202bf997476bbba6aaed4f78a11538a2567df002a5f57f5331d0b5c
  - kind: registry
    name: gdk4
    version: 0.9.5
    sha: d0196720118f880f71fe7da971eff58cc43a89c9cf73f46076b7cb1e60889b15
  - kind: registry
    name: gdk4-sys
    version: 0.9.5
    sha: 60b0e1340bd15e7a78810cf39fed9e5d85f0a8f80b1d999d384ca17dcc452b60
  - kind: registry
    name: gdk4-wayland
    version: 0.9.5
    sha: b03d39d67b12878f5f752251a27fca25a3f2712fa9ccfd799609f858a0300b7e
  - kind: registry
    name: gdk4-wayland-sys
    version: 0.9.5
    sha: 1138990df51af2c81d1669138f60f7066e11fe4764a1d571e5cf4cd25a2d7d6a
  - kind: registry
    name: gdk4-win32
    version: 0.9.5
    sha: e54beb3e19bff7ccc05153e043bf0eea9cf76c07a3387fb0151bfa0fbfce9df0
  - kind: registry
    name: gdk4-win32-sys
    version: 0.9.5
    sha: d554341f26b2f6191aaf2ecb4d0089f3696a40cadb2dba75dad03e48a6dc0eb9
  - kind: registry
    name: gdk4-x11
    version: 0.9.5
    sha: c058172a0f8ebd25751bbee5ebbb68897e8dd08036af3530cde0be1f39639f29
  - kind: registry
    name: gdk4-x11-sys
    version: 0.9.5
    sha: 6e696d2afcc0a79de5d6a62682ddc89d718835c3752a27e4165aec76575e7cba
  - kind: registry
    name: gio
    version: 0.20.7
    sha: a517657589a174be9f60c667f1fec8b7ac82ed5db4ebf56cf073a3b5955d8e2e
  - kind: registry
    name: gio-sys
    version: 0.20.8
    sha: 8446d9b475730ebef81802c1738d972db42fde1c5a36a627ebc4d665fc87db04
  - kind: registry
    name: glib
    version: 0.20.7
    sha: f969edf089188d821a30cde713b6f9eb08b20c63fc2e584aba2892a7984a8cc0
  - kind: registry
    name: glib-macros
    version: 0.20.7
    sha: 715601f8f02e71baef9c1f94a657a9a77c192aea6097cf9ae7e5e177cd8cde68
  - kind: registry
    name: glib-sys
    version: 0.20.7
    sha: b360ff0f90d71de99095f79c526a5888c9c92fc9ee1b19da06c6f5e75f0c2a53
  - kind: registry
    name: gobject-sys
    version: 0.20.7
    sha: 67a56235e971a63bfd75abb13ef70064e1346388723422a68580d8a6fbac6423
  - kind: registry
    name: graphene-rs
    version: 0.20.7
    sha: f39d3bcd2e24fd9c2874a56f277b72c03e728de9bdc95a8d4ef4c962f10ced98
  - kind: registry
    name: graphene-sys
    version: 0.20.7
    sha: 11a68d39515bf340e879b72cecd4a25c1332557757ada6e8aba8654b4b81d23a
  - kind: registry
    name: gsk4
    version: 0.9.5
    sha: 32b9188db0a6219e708b6b6e7225718e459def664023dbddb8395ca1486d8102
  - kind: registry
    name: gsk4-sys
    version: 0.9.5
    sha: bca10fc65d68528a548efa3d8747934adcbe7058b73695c9a7f43a25352fce14
  - kind: registry
    name: gst-plugin-version-helper
    version: 0.8.2
    sha: 4e5e874f1660252fd2ec81c602066df3633b3a6fcbe2b196f7f93c27cf069b2a
  - kind: registry
    name: gstreamer
    version: 0.23.4
    sha: 700cb1b2e86dda424f85eb728102a111602317e40b4dd71cf1c0dc04e0cc5d95
  - kind: registry
    name: gstreamer-allocators
    version: 0.23.4
    sha: 6ab75cad371135c212266fe0cded024875a7372fb14c7ec79600668988476ac5
  - kind: registry
    name: gstreamer-allocators-sys
    version: 0.23.4
    sha: 6ac47ab7ce349392824cb4f83dd982c3df860ee4c09212562b5c31c703669764
  - kind: registry
    name: gstreamer-base
    version: 0.23.4
    sha: d152db7983f98d5950cf64e53805286548063475fb61a5e5450fba4cec05899b
  - kind: registry
    name: gstreamer-base-sys
    version: 0.23.4
    sha: d47cc2d15f2a3d5eb129e5dacbbeec9600432b706805c15dff57b6aa11b2791c
  - kind: registry
    name: gstreamer-gl
    version: 0.23.4
    sha: f56e25e3a848295df790f3628792cc82464a744d0b3ac5c202a6f73e1cedfcaf
  - kind: registry
    name: gstreamer-gl-egl
    version: 0.23.4
    sha: 544f5f0a03d86762067b9eb891b409bec573359f2d549fe5180a5766e00bb89f
  - kind: registry
    name: gstreamer-gl-egl-sys
    version: 0.23.4
    sha: 4ed299b195bd69e5cb568e27e8f08d471f1796439052403492c063381c8fd060
  - kind: registry
    name: gstreamer-gl-sys
    version: 0.23.4
    sha: 497ad4193008c519f0516299281480e77a2c3c7d7f13e5dadca82d406170790a
  - kind: registry
    name: gstreamer-gl-wayland
    version: 0.23.4
    sha: 3d9b5e7e07664a07e18fcf9dafd35c3fcc0222b49e30367563f807aea5ec9b2d
  - kind: registry
    name: gstreamer-gl-wayland-sys
    version: 0.23.4
    sha: 9e6081540912e2655211c2f4b351343984b6c40ee29ee13731279c874588aefe
  - kind: registry
    name: gstreamer-gl-x11
    version: 0.23.4
    sha: e0ae5d3dc5abd1b58c8705f4f02b707cde7d0e4697c74fb6fa5263ded0734534
  - kind: registry
    name: gstreamer-gl-x11-sys
    version: 0.23.4
    sha: 1e56ad39990a4b16c47f2d96ef74222238996a2b4631131b50082cd6436c1b38
  - kind: registry
    name: gstreamer-sys
    version: 0.23.4
    sha: 16cf1ae0a869aa7066ce3c685b76053b4b4f48f364a5b18c4b1f36ef57469719
  - kind: registry
    name: gstreamer-video
    version: 0.23.4
    sha: 8fa41e40319e923236e96f0b691711d1504746ab9c89607d77d22aa84777f33f
  - kind: registry
    name: gstreamer-video-sys
    version: 0.23.4
    sha: 31dc0f49c117f4867b0f98c712aa55ebf25580151d794be8f9179ec2d877fd14
  - kind: registry
    name: gtk4
    version: 0.9.5
    sha: b697ff938136625f6acf75f01951220f47a45adcf0060ee55b4671cf734dac44
  - kind: registry
    name: gtk4-macros
    version: 0.9.5
    sha: 0ed1786c4703dd196baf7e103525ce0cf579b3a63a0570fe653b7ee6bac33999
  - kind: registry
    name: gtk4-sys
    version: 0.9.5
    sha: 3af4b680cee5d2f786a2f91f1c77e95ecf2254522f0ca4edf3a2dce6cb35cecf
  - kind: registry
    name: hashbrown
    version: 0.15.2
    sha: bf151400ff0baff5465007dd2f3e717f3fe502074ca563069ce3a6629d07b289
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: iana-time-zone
    version: 0.1.61
    sha: 235e081f3925a06703c2d0117ea8b91f042756fd6e7a6e5d901e8ca1a996b220
  - kind: registry
    name: iana-time-zone-haiku
    version: 0.1.2
    sha: f31827a206f56af32e590ba56d5d2d085f558508192593743f16b2306495269f
  - kind: registry
    name: indexmap
    version: 2.7.0
    sha: 62f822373a4fe84d4bb149bf54e584a7f4abec90e072ed49cda0edea5b95471f
  - kind: registry
    name: itertools
    version: 0.13.0
    sha: 413ee7dfc52ee1a4949ceeb7dbc8a33f2d6c088194d9f922fb8318faf1f01186
  - kind: registry
    name: js-sys
    version: 0.3.76
    sha: 6717b6b5b077764fb5966237269cb3c64edddde4b14ce42647430a78ced9e7b7
  - kind: registry
    name: khronos-egl
    version: 6.0.0
    sha: 6aae1df220ece3c0ada96b8153459b67eebe9ae9212258bb0134ae60416fdf76
  - kind: registry
    name: libc
    version: 0.2.169
    sha: b5aba8db14291edd000dfcc4d620c7ebfb122c613afb886ca8803fa4e128a20a
  - kind: registry
    name: log
    version: 0.4.22
    sha: a7a70ba024b9dc04c27ea2f0c0548feb474ec5c54bba33a7f72f873a39d07b24
  - kind: registry
    name: memchr
    version: 2.7.4
    sha: 78ca9ab1a0babb1e7d5695e3530886289c18cf2f87ec19a575a0abdce112e3a3
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
    version: 1.20.2
    sha: 1261fe7e33c73b354eab43b1273a57c8f967d0391e80353e51f764ac02cf6775
  - kind: registry
    name: option-operations
    version: 0.5.0
    sha: 7c26d27bb1aeab65138e4bf7666045169d1717febcc9ff870166be8348b223d0
  - kind: registry
    name: pango
    version: 0.20.7
    sha: 9e89bd74250a03a05cec047b43465469102af803be2bf5e5a1088f8b8455e087
  - kind: registry
    name: pango-sys
    version: 0.20.7
    sha: 71787e0019b499a5eda889279e4adb455a4f3fdd6870cd5ab7f4a5aa25df6699
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
    version: 0.2.15
    sha: 915a1e146535de9163f3987b8944ed8cf49a18bb0056bcebcdcece385cece4ff
  - kind: registry
    name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - kind: registry
    name: pkg-config
    version: 0.3.31
    sha: 953ec861398dccce10c670dfeaf3ec4911ca479e9c02154b3a215178c5f566f2
  - kind: registry
    name: proc-macro-crate
    version: 3.2.0
    sha: 8ecf48c7ca261d60b74ab1a7b20da18bede46776b2e55535cb958eb595c5fa7b
  - kind: registry
    name: proc-macro2
    version: 1.0.92
    sha: 37d3544b3f2748c54e147655edb5025752e2303145b5aefb3c3ea2c78b973bb0
  - kind: registry
    name: quote
    version: 1.0.37
    sha: b5b9d34b8991d19d98081b46eacdd8eb58c6f2b201139f7c5f643cc155a633af
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: semver
    version: 1.0.24
    sha: 3cb6eb87a131f756572d7fb904f6e7b68633f09cca868c5df1c4b8d1a694bbba
  - kind: registry
    name: serde
    version: 1.0.216
    sha: 0b9781016e935a97e8beecf0c933758c97a5520d32930e460142b4cd80c6338e
  - kind: registry
    name: serde_derive
    version: 1.0.216
    sha: 46f859dbbf73865c6627ed570e78961cd3ac92407a2d117204c49232485da55e
  - kind: registry
    name: serde_spanned
    version: 0.6.8
    sha: 87607cb1398ed59d48732e575a4c28a7a8ebf2454b964fe3f224f2afc07909e1
  - kind: registry
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
  - kind: registry
    name: slab
    version: 0.4.9
    sha: 8f92a496fb766b417c996b9c5e57daf2f7ad3b0bebe1ccfca4856390e3d3bb67
  - kind: registry
    name: smallvec
    version: 1.13.2
    sha: 3c5e1a9a646d36c3599cd173a41282daf47c44583ad367b8e6837255952e5c67
  - kind: registry
    name: syn
    version: 2.0.91
    sha: d53cbcb5a243bd33b7858b1d7f4aca2153490815872d86d955d6ea29f743c035
  - kind: registry
    name: system-deps
    version: 7.0.3
    sha: 66d23aaf9f331227789a99e8de4c91bf46703add012bdfd45fdecdfb2975a005
  - kind: registry
    name: target-lexicon
    version: 0.12.16
    sha: 61c41af27dd6d1e27b1b16b489db798443478cef1f06a660c96db617ba5de3b1
  - kind: registry
    name: thiserror
    version: 2.0.9
    sha: f072643fd0190df67a8bab670c20ef5d8737177d6ac6b2e9a236cb096206b2cc
  - kind: registry
    name: thiserror-impl
    version: 2.0.9
    sha: 7b50fa271071aae2e6ee85f842e2e28ba8cd2c5fb67f11fcb1fd70b276f9e7d4
  - kind: registry
    name: toml
    version: 0.8.19
    sha: a1ed1f98e3fdc28d6d910e6737ae6ab1a93bf1985935a1193e68f93eeb68d24e
  - kind: registry
    name: toml_datetime
    version: 0.6.8
    sha: 0dd7358ecb8fc2f8d014bf86f6f638ce72ba252a2c3a2572f2a795f1d23efb41
  - kind: registry
    name: toml_edit
    version: 0.22.22
    sha: 4ae48d6208a266e853d946088ed816055e556cc6028c5e8e2b84d9fa5dd7c7f5
  - kind: registry
    name: unicode-ident
    version: 1.0.14
    sha: adb9e6ca4f869e1180728b7950e35922a7fc6397f7b641499e8f3ef06e50dc83
  - kind: registry
    name: version-compare
    version: 0.2.0
    sha: 852e951cb7832cb45cb1169900d19760cfa39b82bc0ea9c0e5a14ae88411c98b
  - kind: registry
    name: wasm-bindgen
    version: 0.2.99
    sha: a474f6281d1d70c17ae7aa6a613c87fce69a127e2624002df63dcb39d6cf6396
  - kind: registry
    name: wasm-bindgen-backend
    version: 0.2.99
    sha: 5f89bb38646b4f81674e8f5c3fb81b562be1fd936d84320f3264486418519c79
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.99
    sha: 2cc6181fd9a7492eef6fef1f33961e3695e4579b9872a6f7c83aee556666d4fe
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.99
    sha: 30d7a95b763d3c45903ed6c81f156801839e5ee968bb07e534c44df0fcd330c2
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.99
    sha: 943aab3fdaaa029a6e0271b35ea10b72b943135afe9bffca82384098ad0e06a6
  - kind: registry
    name: windows-core
    version: 0.52.0
    sha: 33ab640c8d7e35bf8ba19b884ba838ceb4fba93a4e8c65a9059d08afcfc683d9
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
    version: 0.6.20
    sha: 36c1fec1a2bb5866f07c25f68c26e565c4c200aebb96d7e55710c19d3e8ac49b
config:
  install-commands:
  - >-
    cargo cinstall
    --offline
    --release
    --prefix=%{prefix}
    --libdir=%{libdir}
    --destdir=%{install-root}
    --features=wayland,x11glx,x11egl,dmabuf,gtk_v4_14
    --library-type=cdylib
    --jobs "${MAXJOBS}"

