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
  url: crates:crates/gst-plugin-gtk4/gst-plugin-gtk4-0.14.2.crate
  ref: dc3ac5bcd3b6d159d4f4bf521efee0db52c97ea1a731f1721ba8a52828b331fb
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
    version: 2.9.4
    sha: 2261d10cca569e4643e526d8dc2e62e433cc8aba21ab764233731f8d369bf394
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
    version: 1.2.37
    sha: 65193589c6404eb80b450d618eaf9a2cafaaafd57ecce47370519ef674a7bd44
  - kind: registry
    name: cfg-expr
    version: 0.18.0
    sha: 1a2b34126159980f92da2a08bdec0694fd80fb5eb9e48aff25d20a0d8dfa710d
  - kind: registry
    name: cfg-if
    version: 1.0.3
    sha: 2fd1289c04a9ea8cb22300a459a72a385d7c73d3259e2ed7dcb2af674838cfa9
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
    version: 0.1.1
    sha: 7fd99930f64d146689264c637b5af2f0233a933bef0d8570e2526bf9e083192d
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
    version: 0.10.1
    sha: de4b85ee26265dc5ffcad9627944ceb21935a02cf775c88b5a4340c9fffd997f
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
    version: 0.21.2
    sha: ed68efc12b748a771be2dccc49480d8584004382967c98323245fc3c38b74a42
  - kind: registry
    name: gio-sys
    version: 0.21.2
    sha: 171ed2f6dd927abbe108cfd9eebff2052c335013f5879d55bab0dc1dee19b706
  - kind: registry
    name: glib
    version: 0.21.2
    sha: 8527f9a139b7ba936fe1cbb8710d7801d145a4e81534f2ae6e6be255b582f3b5
  - kind: registry
    name: glib-macros
    version: 0.21.2
    sha: 55eda916eecdae426d78d274a17b48137acdca6fba89621bd3705f2835bc719f
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
    version: 0.24.2
    sha: 3e7ba7a2584e31927b7fec6a32737b57dc991b55253c9bb7c2c8eddb5a4cb345
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
    version: 0.24.2
    sha: 450bb763530bc992e60c521b0186b775baf7ad66fe47d57842a7a96ca4fe86c8
  - kind: registry
    name: gstreamer-video-sys
    version: 0.24.1
    sha: 8d944b1492bdd7a72a02ae9a5da6e34a29194b8623d3bd02752590b06fb837a7
  - kind: registry
    name: gtk4
    version: 0.10.1
    sha: 8f7887ee0ceeffedb25a418810a2c61497dacad51767fc13f9d60859b4023b8a
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
    version: 0.15.5
    sha: 9229cfe53dfd69f0609a49f65461bd93001ea1ef889cd5529dd176593f5338a1
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
    version: 2.11.3
    sha: 92119844f513ffa41556430369ab02c295a3578af21cf945caa3e9e0c2481ac3
  - kind: registry
    name: itertools
    version: 0.14.0
    sha: 2b192c782037fadd9cfa75548310488aabdbf3d2da73885b31bd0abd03351285
  - kind: registry
    name: js-sys
    version: 0.3.80
    sha: 852f13bec5eba4ba9afbeb93fd7c13fe56147f055939ae21c43a29a0ecb2702e
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
    version: 0.2.175
    sha: 6a82ae493e598baaea5209805c49bbf2ea7de956d50d7da0da1164f9c6d28543
  - kind: registry
    name: log
    version: 0.4.28
    sha: 34080505efa8e45a4b816c349525ebe327ceaa8559756f0356cba97ef3bf7432
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
    version: 0.6.0
    sha: b31ce827892359f23d3cd1cc4c75a6c241772bbd2db17a92dcf27cbefdf52689
  - kind: registry
    name: pango
    version: 0.21.2
    sha: 88603ac9d6b539878e41fc5b72ecf8d32d606417912b0d17b6729c9688711730
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
    version: 1.0.101
    sha: 89ae43fd86e4158d6db51ad8e2b80f313af9cc74f5c0e03ccb87de09998732de
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
    version: 1.0.22
    sha: b39cdef0fa800fc44525c84ccb54a029961a8215f9619753635a9c0d2538d46d
  - kind: registry
    name: semver
    version: 1.0.27
    sha: d767eb0aabc880b29956c35734170f26ed551a859dbd361d140cdbeca61ab1e2
  - kind: registry
    name: serde
    version: 1.0.225
    sha: fd6c24dee235d0da097043389623fb913daddf92c76e9f5a1db88607a0bcbd1d
  - kind: registry
    name: serde_core
    version: 1.0.225
    sha: 659356f9a0cb1e529b24c01e43ad2bdf520ec4ceaf83047b83ddcc2251f96383
  - kind: registry
    name: serde_derive
    version: 1.0.225
    sha: 0ea936adf78b1f766949a4977b91d2f5595825bd6ec079aa9543ad2685fc4516
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
    version: 2.0.106
    sha: ede7c438028d4436d71104916910f5bb611972c5cfd7f89b8300a8186e6fada6
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
    version: 2.0.16
    sha: 3467d614147380f2e4e374161426ff399c91084acd2363eaf549172b3d5e60c0
  - kind: registry
    name: thiserror-impl
    version: 2.0.16
    sha: 6c5e1be1c48b9172ee610da68fd9cd2770e7a4056cb3fc98710ee6906f0c7960
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
    version: 0.7.1
    sha: a197c0ec7d131bfc6f7e82c8442ba1595aeab35da7adbf05b6b73cd06a16b6be
  - kind: registry
    name: toml_edit
    version: 0.22.27
    sha: 41fe8c660ae4257887cf66394862d21dbca4a6ddd26f04a3560410406a2f819a
  - kind: registry
    name: toml_edit
    version: 0.23.5
    sha: c2ad0b7ae9cfeef5605163839cb9221f453399f15cfb5c10be9885fcf56611f9
  - kind: registry
    name: toml_parser
    version: 1.0.2
    sha: b551886f449aa90d4fe2bdaa9f4a2577ad2dde302c61ecf262d80b116db95c10
  - kind: registry
    name: unicode-ident
    version: 1.0.19
    sha: f63a545481291138910575129486daeaf8ac54aee4387fe7906919f7830c7d9d
  - kind: registry
    name: version-compare
    version: 0.2.0
    sha: 852e951cb7832cb45cb1169900d19760cfa39b82bc0ea9c0e5a14ae88411c98b
  - kind: registry
    name: wasm-bindgen
    version: 0.2.103
    sha: ab10a69fbd0a177f5f649ad4d8d3305499c42bab9aef2f7ff592d0ec8f833819
  - kind: registry
    name: wasm-bindgen-backend
    version: 0.2.103
    sha: 0bb702423545a6007bbc368fde243ba47ca275e549c8a28617f56f6ba53b1d1c
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.103
    sha: fc65f4f411d91494355917b605e1480033152658d71f722a90647f56a70c88a0
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.103
    sha: ffc003a991398a8ee604a401e194b6b3a39677b3173d6e74495eb51b82e99a32
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.103
    sha: 293c37f4efa430ca14db3721dfbe48d8c33308096bd44d80ebaa775ab71ba1cf
  - kind: registry
    name: windows-core
    version: 0.62.0
    sha: 57fe7168f7de578d2d8a05b07fd61870d2e73b4020e9f49aa00da8471723497c
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
    version: 0.2.0
    sha: 45e46c0661abb7180e7b9c281db115305d49ca1709ab8242adf09666d2173c65
  - kind: registry
    name: windows-result
    version: 0.4.0
    sha: 7084dcc306f89883455a206237404d3eaf961e5bd7e0f312f7c91f57eb44167f
  - kind: registry
    name: windows-strings
    version: 0.5.0
    sha: 7218c655a553b0bed4426cf54b20d7ba363ef543b52d515b3e48d7fd55318dda
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
