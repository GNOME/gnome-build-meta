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
  url: crates:crates/gst-plugin-gtk4/gst-plugin-gtk4-0.14.3.crate
  ref: defe41c5b45f2f1617253274abcaa497b53624fd6e23c1d89fe5e0c8cfbe3fd2
- kind: cargo2
  ref:
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
    version: 2.10.0
    sha: 812e12b5285cc515a9c72a5c1d3b6d46a19dac5acfef5265968c166106e31dd3
  - kind: registry
    name: bumpalo
    version: 3.19.0
    sha: 46c5e41b57b8bba42a04676d81cb89e9ee8e859a1a66f80a5a72e1cb76b34d43
  - kind: registry
    name: cairo-rs
    version: 0.21.2
    sha: dfe4354df4da648870e363387679081f8f9fc538ec8b55901e3740c6a0ef81b1
  - kind: registry
    name: cairo-sys-rs
    version: 0.21.2
    sha: 47d6c3300c7103eb8e4de07591003511aa25664438f8c6fc317a3a9902c103f8
  - kind: registry
    name: cc
    version: 1.2.44
    sha: 37521ac7aabe3d13122dc382493e20c9416f299d2ccd5b3a5340a2570cdeb0f3
  - kind: registry
    name: cfg-expr
    version: 0.18.0
    sha: 1a2b34126159980f92da2a08bdec0694fd80fb5eb9e48aff25d20a0d8dfa710d
  - kind: registry
    name: cfg-if
    version: 1.0.4
    sha: 9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801
  - kind: registry
    name: chrono
    version: 0.4.42
    sha: 145052bdd345b87320e369255277e3fb5152762ad123a901ef5c262dd38fe8d2
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
    version: 5.4.1
    sha: e13b66accf52311f30a0db42147dadea9850cb48cd070028831ae5f5d4b856ab
  - kind: registry
    name: event-listener-strategy
    version: 0.5.4
    sha: 8be9f3dfaaffdae2972880079a491a1a8bb7cbed0b8dd7a347f668b4150a3b93
  - kind: registry
    name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - kind: registry
    name: find-msvc-tools
    version: 0.1.4
    sha: 52051878f80a721bb68ebfbc930e07b65ba72f2da88968ea5c06fd6ca3d3a127
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
    version: 0.21.2
    sha: 2a3c64459f569154f37616fc28923bfac490d4aaa134aaf5eca58a2c0c13050f
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.21.2
    sha: 3854ef7a6a8b8f3b4013a01d5f9cb0d1794ec4e810c6cb4e2cc6d980f1baf724
  - kind: registry
    name: gdk4
    version: 0.10.1
    sha: c7e292649dc26e3440c508a00f42ab39156008320dd6e962d63eaf626ba4d7f0
  - kind: registry
    name: gdk4-sys
    version: 0.10.1
    sha: f4f3174fa4f1e0bf2a7e04469b65db8f4d1db89a6f5cdc57727b14e97ce438cf
  - kind: registry
    name: gdk4-wayland
    version: 0.10.2
    sha: 8aa6365a7cd4fd506cb724db4d023f90d9bc4760ecf8934e2bac825ff2b30029
  - kind: registry
    name: gdk4-wayland-sys
    version: 0.10.1
    sha: e8aa299e52b5364b14b877a02778dfc193fa112d22da80a5b6722a8ea088a4e8
  - kind: registry
    name: gdk4-win32
    version: 0.10.1
    sha: 09f88ca409b0e2c814f4a30e78a0ba5f8b5133e2c95ad4f0b57c9a98d1337620
  - kind: registry
    name: gdk4-win32-sys
    version: 0.10.1
    sha: 1b8802202ddc9a4b682ed5cb8e2f3bf9eece0ee55edc938c775ae02378839938
  - kind: registry
    name: gdk4-x11
    version: 0.10.1
    sha: b8c1726186e4737a488ed2e431cce499af613edbf2332ede11cff6a98e3c7131
  - kind: registry
    name: gdk4-x11-sys
    version: 0.10.1
    sha: 18801bb9230acdaa7d0aeaf39bc55a8f21eb5526a0a193a8e6de2c54075ad4f2
  - kind: registry
    name: gio
    version: 0.21.4
    sha: daeff3dd716d1ba91850b976b76a1c2d28f99ef6c1602cd8fdaa8fab8017fd9c
  - kind: registry
    name: gio-sys
    version: 0.21.2
    sha: 171ed2f6dd927abbe108cfd9eebff2052c335013f5879d55bab0dc1dee19b706
  - kind: registry
    name: glib
    version: 0.21.4
    sha: 5b9dbecb1c33e483a98be4acfea2ab369e1c28f517c6eadb674537409c25c4b2
  - kind: registry
    name: glib-macros
    version: 0.21.4
    sha: 880e524e0085f3546cfb38532b2c202c0d64741d9977a6e4aa24704bfc9f19fb
  - kind: registry
    name: glib-sys
    version: 0.21.2
    sha: d09d3d0fddf7239521674e57b0465dfbd844632fec54f059f7f56112e3f927e1
  - kind: registry
    name: gobject-sys
    version: 0.21.2
    sha: 538e41d8776173ec107e7b0f2aceced60abc368d7e1d81c1f0e2ecd35f59080d
  - kind: registry
    name: graphene-rs
    version: 0.21.2
    sha: e7749aaf5d3b955bf3bfce39e3423705878a666b561384134da0e7786a45ddc3
  - kind: registry
    name: graphene-sys
    version: 0.21.2
    sha: 250abaee850a90a276509890a78029c356173f9573412bded5f155b0e41fa568
  - kind: registry
    name: gsk4
    version: 0.10.1
    sha: b6687e9f92ca89c000c376400cfaf7914d099413d72fdf4f84a25775a0b1fb2d
  - kind: registry
    name: gsk4-sys
    version: 0.10.1
    sha: 5e76bcf64d9c4846f19651f45b400cc0c9c4c17b651849da520f3d77c6988c52
  - kind: registry
    name: gst-plugin-version-helper
    version: 0.8.3
    sha: a68a894ef2d738054b950e1dbef5d9012b63fd968d4d32dbccd31bd8d8d4b219
  - kind: registry
    name: gstreamer
    version: 0.24.3
    sha: 69ac2f12970a2f85a681d2ceaa40c32fe86cc202ead315e0dfa2223a1217cd24
  - kind: registry
    name: gstreamer-allocators
    version: 0.24.2
    sha: a3b52f1022fe16b257e8069d5a769b4206a216b4f1fd6a1ce27908f3d0bd6f74
  - kind: registry
    name: gstreamer-allocators-sys
    version: 0.24.0
    sha: e5fe8ea3a27951ac6d12a481d9d4e5248ec9e0a02e0b3e6a620911d5cefb3106
  - kind: registry
    name: gstreamer-base
    version: 0.24.2
    sha: 71ff9b0bbc8041f0c6c8a53b206a6542f86c7d9fa8a7dff3f27d9c374d9f39b4
  - kind: registry
    name: gstreamer-base-sys
    version: 0.24.2
    sha: fed78852b92db1459b8f4288f86e6530274073c20be2f94ba642cddaca08b00e
  - kind: registry
    name: gstreamer-gl
    version: 0.24.2
    sha: f1a96afcc53a219607e797af298c50537a0cae0f54414c860209a21b0b660c3b
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
    version: 0.24.1
    sha: bbad7be8c51998c1a4645b0e165b424442649081109aaf30d503d38a57e6f23c
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
    version: 0.24.2
    sha: a24ae2930e683665832a19ef02466094b09d1f2da5673f001515ed5486aa9377
  - kind: registry
    name: gstreamer-video
    version: 0.24.3
    sha: 94ab2e323a4ed2d9cbe65953eafe5dbffa5569120dd4e23ecf36727a40e64a97
  - kind: registry
    name: gstreamer-video-sys
    version: 0.24.1
    sha: 8d944b1492bdd7a72a02ae9a5da6e34a29194b8623d3bd02752590b06fb837a7
  - kind: registry
    name: gtk4
    version: 0.10.2
    sha: 58ea71795b91a0725b0e926e72e3d209d920ce60166e3a8f9f4dd46f287fee87
  - kind: registry
    name: gtk4-macros
    version: 0.10.1
    sha: 821160b4f17e7e4ed748818c23682d0a46bed04c287dbaac54dd4869d2c5e06a
  - kind: registry
    name: gtk4-sys
    version: 0.10.1
    sha: d274cbaf7d9aa55b7aff78cb21b43299d64e514e1300671469b66f691cc5a011
  - kind: registry
    name: hashbrown
    version: 0.16.0
    sha: 5419bdc4f6a9207fbeba6d11b604d481addf78ecd10c11ad51e76c2f6482748d
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: iana-time-zone
    version: 0.1.64
    sha: 33e57f83510bb73707521ebaffa789ec8caf86f9657cad665b092b581d40e9fb
  - kind: registry
    name: iana-time-zone-haiku
    version: 0.1.2
    sha: f31827a206f56af32e590ba56d5d2d085f558508192593743f16b2306495269f
  - kind: registry
    name: indexmap
    version: 2.12.0
    sha: 6717a8d2a5a929a1a2eb43a12812498ed141a0bcfb7e8f7844fbdbe4303bba9f
  - kind: registry
    name: itertools
    version: 0.14.0
    sha: 2b192c782037fadd9cfa75548310488aabdbf3d2da73885b31bd0abd03351285
  - kind: registry
    name: js-sys
    version: 0.3.82
    sha: b011eec8cc36da2aab2d5cff675ec18454fad408585853910a202391cf9f8e65
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
    version: 0.2.177
    sha: 2874a2af47a2325c2001a6e6fad9b16a53b802102b528163885171cf92b15976
  - kind: registry
    name: log
    version: 0.4.28
    sha: 34080505efa8e45a4b816c349525ebe327ceaa8559756f0356cba97ef3bf7432
  - kind: registry
    name: memchr
    version: 2.7.6
    sha: f52b00d39961fc5b2736ea853c9cc86238e165017a493d1d5c8eac6bdc4cc273
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
    version: 0.6.0
    sha: b31ce827892359f23d3cd1cc4c75a6c241772bbd2db17a92dcf27cbefdf52689
  - kind: registry
    name: pango
    version: 0.21.3
    sha: e37b7a678e18c2e9f2485f7e39b7b2dac99590d5ddef08a7f56eae38a145402e
  - kind: registry
    name: pango-sys
    version: 0.21.2
    sha: f4f5daf21da43fba9f2a0092da0eebeb77637c23552bccaf58f791c518009c94
  - kind: registry
    name: parking
    version: 2.2.1
    sha: f38d5652c16fde515bb1ecef450ab0f6a219d619a7274976324d5e377f7dceba
  - kind: registry
    name: pastey
    version: 0.1.1
    sha: 35fb2e5f958ec131621fdd531e9fc186ed768cbe395337403ae56c17a74c68ec
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
    version: 3.4.0
    sha: 219cb19e96be00ab2e37d6e299658a0cfa83e52429179969b0f0121b4ac46983
  - kind: registry
    name: proc-macro2
    version: 1.0.103
    sha: 5ee95bc4ef87b8d5ba32e8b7714ccc834865276eab0aed5c9958d00ec45f49e8
  - kind: registry
    name: quote
    version: 1.0.41
    sha: ce25767e7b499d1b604768e7cde645d14cc8584231ea6b295e9c9eb22c02e1d1
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: rustversion
    version: 1.0.22
    sha: b39cdef0fa800fc44525c84ccb54a029961a8215f9619753635a9c0d2538d46d
  - kind: registry
    name: semver
    version: 1.0.27
    sha: d767eb0aabc880b29956c35734170f26ed551a859dbd361d140cdbeca61ab1e2
  - kind: registry
    name: serde_core
    version: 1.0.228
    sha: 41d385c7d4ca58e59fc732af25c3983b67ac852c1a25000afe1175de458b67ad
  - kind: registry
    name: serde_derive
    version: 1.0.228
    sha: d540f220d3187173da220f885ab66608367b6574e925011a9353e4badda91d79
  - kind: registry
    name: serde_spanned
    version: 1.0.3
    sha: e24345aa0fe688594e73770a5f6d1b216508b4f93484c0026d521acd30134392
  - kind: registry
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
  - kind: registry
    name: slab
    version: 0.4.11
    sha: 7a2ae44ef20feb57a68b23d846850f861394c2e02dc425a50098ae8c90267589
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
    version: 2.0.108
    sha: da58917d35242480a05c2897064da0a80589a2a0476c9a3f2fdc83b53502e917
  - kind: registry
    name: system-deps
    version: 7.0.6
    sha: c236d79f20808ca0084bfcd1a2fd6c686216b7f7a0c4fc39deb0cbf5eaab3713
  - kind: registry
    name: target-lexicon
    version: 0.13.2
    sha: e502f78cdbb8ba4718f566c418c52bc729126ffd16baee5baa718cf25dd5a69a
  - kind: registry
    name: thiserror
    version: 2.0.17
    sha: f63587ca0f12b72a0600bcba1d40081f830876000bb46dd2337a3051618f4fc8
  - kind: registry
    name: thiserror-impl
    version: 2.0.17
    sha: 3ff15c8ecd7de3849db632e14d18d2571fa09dfc5ed93479bc4485c7a517c913
  - kind: registry
    name: toml
    version: 0.9.8
    sha: f0dc8b1fb61449e27716ec0e1bdf0f6b8f3e8f6b05391e8497b8b6d7804ea6d8
  - kind: registry
    name: toml_datetime
    version: 0.7.3
    sha: f2cdb639ebbc97961c51720f858597f7f24c4fc295327923af55b74c3c724533
  - kind: registry
    name: toml_edit
    version: 0.23.7
    sha: 6485ef6d0d9b5d0ec17244ff7eb05310113c3f316f2d14200d4de56b3cb98f8d
  - kind: registry
    name: toml_parser
    version: 1.0.4
    sha: c0cbe268d35bdb4bb5a56a2de88d0ad0eb70af5384a99d648cd4b3d04039800e
  - kind: registry
    name: toml_writer
    version: 1.0.4
    sha: df8b2b54733674ad286d16267dcfc7a71ed5c776e4ac7aa3c3e2561f7c637bf2
  - kind: registry
    name: unicode-ident
    version: 1.0.22
    sha: 9312f7c4f6ff9069b165498234ce8be658059c6728633667c526e27dc2cf1df5
  - kind: registry
    name: version-compare
    version: 0.2.0
    sha: 852e951cb7832cb45cb1169900d19760cfa39b82bc0ea9c0e5a14ae88411c98b
  - kind: registry
    name: wasm-bindgen
    version: 0.2.105
    sha: da95793dfc411fbbd93f5be7715b0578ec61fe87cb1a42b12eb625caa5c5ea60
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.105
    sha: 04264334509e04a7bf8690f2384ef5265f05143a4bff3889ab7a3269adab59c2
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.105
    sha: 420bc339d9f322e562942d52e115d57e950d12d88983a14c79b86859ee6c7ebc
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.105
    sha: 76f218a38c84bcb33c25ec7059b07847d465ce0e0a76b995e134a45adcb6af76
  - kind: registry
    name: windows-core
    version: 0.62.2
    sha: b8e83a14d34d0623b51dce9581199302a221863196a1dde71a7663a4c2be9deb
  - kind: registry
    name: windows-implement
    version: 0.60.2
    sha: 053e2e040ab57b9dc951b72c264860db7eb3b0200ba345b4e4c3b14f67855ddf
  - kind: registry
    name: windows-interface
    version: 0.59.3
    sha: 3f316c4a2570ba26bbec722032c4099d8c8bc095efccdc15688708623367e358
  - kind: registry
    name: windows-link
    version: 0.2.1
    sha: f0805222e57f7521d6a62e36fa9163bc891acd422f971defe97d64e70d0a4fe5
  - kind: registry
    name: windows-result
    version: 0.4.1
    sha: 7781fa89eaf60850ac3d2da7af8e5242a5ea78d1a11c49bf2910bb5a73853eb5
  - kind: registry
    name: windows-strings
    version: 0.5.1
    sha: 7837d08f69c77cf6b07689544538e017c1bfcf57e34b4c0ff58e6c2cd3b37091
  - kind: registry
    name: windows-sys
    version: 0.52.0
    sha: 282be5f36a8ce781fad8c8ae18fa3f9beff57ec1b52cb3de0789201425d9a33d
  - kind: registry
    name: windows-sys
    version: 0.61.2
    sha: ae137229bcbd6cdf0f7b80a31df61766145077ddf49416a728b02cb3921ff3fc
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
    version: 0.7.13
    sha: 21a0236b59786fed61e2a80582dd500fe61f18b5dca67a4a067d0bc9039339cf
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
