kind: meson

sources:
- kind: git_repo
  url: gnome:gst-thumbnailers.git
  track: main
  ref: 1.0.alpha.1-1-g218eb9143feb68bac7e97c4070ec4ff08bda349c
- kind: cargo2
  ref:
  - kind: registry
    name: aho-corasick
    version: 1.1.4
    sha: ddd31a130427c27518df266943a5308ed92d4b226cc639f5a8f1002816174301
  - kind: registry
    name: anes
    version: 0.1.6
    sha: 4b46cbb362ab8752921c97e041f5e366ee6297bd428a31275b9fcf1e380f7299
  - kind: registry
    name: anstyle
    version: 1.0.13
    sha: 5192cca8006f1fd4f7237516f40fa183bb07f8fbdfedaa0036de5ea9b0b45e78
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
    name: bytemuck
    version: 1.24.0
    sha: 1fbdf580320f38b612e485521afda1ee26d10cc9884efaaa750d383e13e3c5f4
  - kind: registry
    name: byteorder-lite
    version: 0.1.0
    sha: 8f1fe948ff07f4bd06c30984e69f5b4899c516a3ef74f34df92a2df2ab535495
  - kind: registry
    name: cast
    version: 0.3.0
    sha: 37b2a672a2cb129a2e41c10b1224bb368f9f37a2b16b612598138befd7b37eb5
  - kind: registry
    name: cfg-expr
    version: 0.20.4
    sha: 9acd0bdbbf4b2612d09f52ba61da432140cb10930354079d0d53fafc12968726
  - kind: registry
    name: cfg-if
    version: 1.0.4
    sha: 9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801
  - kind: registry
    name: ciborium
    version: 0.2.2
    sha: 42e69ffd6f0917f5c029256a24d0161db17cea3997d185db0d35926308770f0e
  - kind: registry
    name: ciborium-io
    version: 0.2.2
    sha: 05afea1e0a06c9be33d539b876f1ce3692f4afea2cb41f740e7743225ed1c757
  - kind: registry
    name: ciborium-ll
    version: 0.2.2
    sha: 57663b653d948a338bfb3eeba9bb2fd5fcfaecb9e199e87e1eda4d9e8b240fd9
  - kind: registry
    name: clap
    version: 4.5.53
    sha: c9e340e012a1bf4935f5282ed1436d1489548e8f72308207ea5df0e23d2d03f8
  - kind: registry
    name: clap_builder
    version: 4.5.53
    sha: d76b5d13eaa18c901fd2f7fca939fefe3a0727a953561fefdf3b2922b8569d00
  - kind: registry
    name: clap_derive
    version: 4.5.49
    sha: 2a0b5487afeab2deb2ff4e03a807ad1a03ac532ff5a2cee5d86884440c7f7671
  - kind: registry
    name: clap_lex
    version: 0.7.6
    sha: a1d728cc89cf3aee9ff92b05e62b19ee65a02b5702cff7d5a377e32c6ae29d8d
  - kind: registry
    name: criterion
    version: 0.7.0
    sha: e1c047a62b0cc3e145fa84415a3191f628e980b194c2755aa12300a4e6cbd928
  - kind: registry
    name: criterion-plot
    version: 0.6.0
    sha: 9b1bcc0dc7dfae599d84ad0b1a55f80cde8af3725da8313b528da95ef783e338
  - kind: registry
    name: crossbeam-deque
    version: 0.8.6
    sha: 9dd111b7b7f7d55b72c0a6ae361660ee5853c9af73f70c3c2ef6858b950e2e51
  - kind: registry
    name: crossbeam-epoch
    version: 0.9.18
    sha: 5b82ac4a3c2ca9c3460964f020e1402edd5753411d7737aa39c3714ad1b5420e
  - kind: registry
    name: crossbeam-utils
    version: 0.8.21
    sha: d0a5c400df2834b80a4c3327b3aad3a4c4cd4de0629063962b03235697506a28
  - kind: registry
    name: crunchy
    version: 0.2.4
    sha: 460fbee9c2c2f33933d720630a6a0bac33ba7053db5344fac858d4b8952d77d5
  - kind: registry
    name: either
    version: 1.15.0
    sha: 48c757948c5ede0e46177b7add2e67155f70e33c07fea8284df6576da70b3719
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
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
    name: futures-sink
    version: 0.3.31
    sha: e575fab7d1e0dcb8d0c7bcf9a63ee213816ab51902e6d244a95819acacf1d4f7
  - kind: registry
    name: futures-task
    version: 0.3.31
    sha: f90f7dce0722e95104fcb095585910c0977252f286e354b5e3bd38902cd99988
  - kind: registry
    name: futures-util
    version: 0.3.31
    sha: 9fa08315bb612088cc391249efdc3bc77536f16c91f6cf495e6fbe85b20a4a81
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
    name: gstreamer
    version: 0.24.3
    sha: 69ac2f12970a2f85a681d2ceaa40c32fe86cc202ead315e0dfa2223a1217cd24
  - kind: registry
    name: gstreamer-app
    version: 0.24.2
    sha: 0af5d403738faf03494dfd502d223444b4b44feb997ba28ab3f118ee6d40a0b2
  - kind: registry
    name: gstreamer-app-sys
    version: 0.24.0
    sha: aaf1a3af017f9493c34ccc8439cbce5c48f6ddff6ec0514c23996b374ff25f9a
  - kind: registry
    name: gstreamer-base
    version: 0.24.2
    sha: 71ff9b0bbc8041f0c6c8a53b206a6542f86c7d9fa8a7dff3f27d9c374d9f39b4
  - kind: registry
    name: gstreamer-base-sys
    version: 0.24.2
    sha: fed78852b92db1459b8f4288f86e6530274073c20be2f94ba642cddaca08b00e
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
    name: half
    version: 2.7.1
    sha: 6ea2d84b969582b4b1864a92dc5d27cd2b77b622a8d79306834f1be5ba20d84b
  - kind: registry
    name: hashbrown
    version: 0.16.1
    sha: 841d1cc9bed7f9236f321df977030373f4a4163ae1a7dbfe1a51a2c1a51d9100
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: image
    version: 0.25.9
    sha: e6506c6c10786659413faa717ceebcb8f70731c0a60cbae39795fdf114519c1a
  - kind: registry
    name: indexmap
    version: 2.12.1
    sha: 0ad4bb2b565bca0645f4d68c5c9af97fba094e9791da685bf83cb5f3ce74acf2
  - kind: registry
    name: itertools
    version: 0.13.0
    sha: 413ee7dfc52ee1a4949ceeb7dbc8a33f2d6c088194d9f922fb8318faf1f01186
  - kind: registry
    name: itertools
    version: 0.14.0
    sha: 2b192c782037fadd9cfa75548310488aabdbf3d2da73885b31bd0abd03351285
  - kind: registry
    name: itoa
    version: 1.0.15
    sha: 4a5f13b858c8d314ee3e8f639011f7ccefe71f97f96e50151fb991f267928e2c
  - kind: registry
    name: js-sys
    version: 0.3.82
    sha: b011eec8cc36da2aab2d5cff675ec18454fad408585853910a202391cf9f8e65
  - kind: registry
    name: kstring
    version: 2.0.2
    sha: 558bf9508a558512042d3095138b1f7b8fe90c5467d94f9f1da28b3731c5dbd1
  - kind: registry
    name: libc
    version: 0.2.177
    sha: 2874a2af47a2325c2001a6e6fad9b16a53b802102b528163885171cf92b15976
  - kind: registry
    name: libglycin-rebind
    version: 0.0.1
    sha: 75619079292dc5c773c66fe4c933b3b47dfe8c2ec5aa736130c5fa963375f8df
  - kind: registry
    name: libglycin-rebind-sys
    version: 0.0.1
    sha: 7ae06a1ecd58360e16a9fae683452585e3aaad4a446377b3c93a49ea0918d8e6
  - kind: registry
    name: memchr
    version: 2.7.6
    sha: f52b00d39961fc5b2736ea853c9cc86238e165017a493d1d5c8eac6bdc4cc273
  - kind: registry
    name: moxcms
    version: 0.7.9
    sha: 0fbdd3d7436f8b5e892b8b7ea114271ff0fa00bc5acae845d53b07d498616ef6
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
    name: oorandom
    version: 11.1.5
    sha: d6790f58c7ff633d8771f42965289203411a5e5c68388703c06e14f24770b41e
  - kind: registry
    name: option-operations
    version: 0.6.0
    sha: b31ce827892359f23d3cd1cc4c75a6c241772bbd2db17a92dcf27cbefdf52689
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
    name: plotters
    version: 0.3.7
    sha: 5aeb6f403d7a4911efb1e33402027fc44f29b5bf6def3effcc22d7bb75f2b747
  - kind: registry
    name: plotters-backend
    version: 0.3.7
    sha: df42e13c12958a16b3f7f4386b9ab1f3e7933914ecea48da7139435263a4172a
  - kind: registry
    name: plotters-svg
    version: 0.3.7
    sha: 51bae2ac328883f7acdfea3d66a7c35751187f870bc81f94563733a154d7a670
  - kind: registry
    name: proc-macro-crate
    version: 3.4.0
    sha: 219cb19e96be00ab2e37d6e299658a0cfa83e52429179969b0f0121b4ac46983
  - kind: registry
    name: proc-macro2
    version: 1.0.103
    sha: 5ee95bc4ef87b8d5ba32e8b7714ccc834865276eab0aed5c9958d00ec45f49e8
  - kind: registry
    name: pxfm
    version: 0.1.25
    sha: a3cbdf373972bf78df4d3b518d07003938e2c7d1fb5891e55f9cb6df57009d84
  - kind: registry
    name: quote
    version: 1.0.42
    sha: a338cc41d27e6cc6dce6cefc13a0729dfbb81c262b1f519331575dd80ef3067f
  - kind: registry
    name: rayon
    version: 1.11.0
    sha: 368f01d005bf8fd9b1206fb6fa653e6c4a81ceb1466406b81792d87c5677a58f
  - kind: registry
    name: rayon-core
    version: 1.13.0
    sha: 22e18b0f0062d30d4230b2e85ff77fdfe4326feb054b9783a3460d8435c8ab91
  - kind: registry
    name: regex
    version: 1.12.2
    sha: 843bc0191f75f3e22651ae5f1e72939ab2f72a4bc30fa80a066bd66edefc24d4
  - kind: registry
    name: regex-automata
    version: 0.4.13
    sha: 5276caf25ac86c8d810222b3dbb938e512c55c6831a10f3e6ed1c93b84041f1c
  - kind: registry
    name: regex-syntax
    version: 0.8.8
    sha: 7a2d987857b319362043e95f5353c0535c1f58eec5336fdfcf626430af7def58
  - kind: registry
    name: rustversion
    version: 1.0.22
    sha: b39cdef0fa800fc44525c84ccb54a029961a8215f9619753635a9c0d2538d46d
  - kind: registry
    name: ryu
    version: 1.0.20
    sha: 28d3b2b1366ec20994f1fd18c3c594f05c5dd4bc44d8bb0c1c632c8d6829481f
  - kind: registry
    name: same-file
    version: 1.0.6
    sha: 93fc1dc3aaa9bfed95e02e6eadabb4baf7e3078b0bd1b4d7b6b0b68378900502
  - kind: registry
    name: serde
    version: 1.0.228
    sha: 9a8e94ea7f378bd32cbbd37198a4a91436180c5bb472411e48b5ec2e2124ae9e
  - kind: registry
    name: serde_core
    version: 1.0.228
    sha: 41d385c7d4ca58e59fc732af25c3983b67ac852c1a25000afe1175de458b67ad
  - kind: registry
    name: serde_derive
    version: 1.0.228
    sha: d540f220d3187173da220f885ab66608367b6574e925011a9353e4badda91d79
  - kind: registry
    name: serde_json
    version: 1.0.145
    sha: 402a6f66d8c709116cf22f558eab210f5a50187f702eb4d7e5ef38d9a7f1c79c
  - kind: registry
    name: serde_spanned
    version: 1.0.3
    sha: e24345aa0fe688594e73770a5f6d1b216508b4f93484c0026d521acd30134392
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
    version: 2.0.111
    sha: 390cc9a294ab71bdb1aa2e99d13be9c753cd2d7bd6560c77118597410c4d2e87
  - kind: registry
    name: system-deps
    version: 7.0.7
    sha: 48c8f33736f986f16d69b6cb8b03f55ddcad5c41acc4ccc39dd88e84aa805e7f
  - kind: registry
    name: target-lexicon
    version: 0.13.3
    sha: df7f62577c25e07834649fc3b39fafdc597c0a3527dc1c60129201ccfcbaa50c
  - kind: registry
    name: thiserror
    version: 2.0.17
    sha: f63587ca0f12b72a0600bcba1d40081f830876000bb46dd2337a3051618f4fc8
  - kind: registry
    name: thiserror-impl
    version: 2.0.17
    sha: 3ff15c8ecd7de3849db632e14d18d2571fa09dfc5ed93479bc4485c7a517c913
  - kind: registry
    name: tinytemplate
    version: 1.2.1
    sha: be4d6b5f19ff7664e8c98d03e2139cb510db9b0a60b55f8e8709b689d939b6bc
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
    version: 0.2.1
    sha: 03c2856837ef78f57382f06b2b8563a2f512f7185d732608fd9176cb3b8edf0e
  - kind: registry
    name: walkdir
    version: 2.5.0
    sha: 29790946404f91d9c5d06f9874efddea1dc06c5efe94541a7d6863108e3a5e4b
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
    name: web-sys
    version: 0.3.82
    sha: 3a1f95c0d03a47f4ae1f7a64643a6bb97465d9b740f0fa8f90ea33915c99a9a1
  - kind: registry
    name: winapi-util
    version: 0.1.11
    sha: c2a7b1c03c876122aa43f3020e6c3c3ee5c05081c9a00739faf7503aeba10d22
  - kind: registry
    name: windows-link
    version: 0.2.1
    sha: f0805222e57f7521d6a62e36fa9163bc891acd422f971defe97d64e70d0a4fe5
  - kind: registry
    name: windows-sys
    version: 0.61.2
    sha: ae137229bcbd6cdf0f7b80a31df61766145077ddf49416a728b02cb3921ff3fc
  - kind: registry
    name: winnow
    version: 0.7.14
    sha: 5a5364e9d77fcdeeaa6062ced926ee3381faa2ee02d3eb83a5c27a8825540829
  - kind: registry
    name: zerocopy
    version: 0.8.30
    sha: 4ea879c944afe8a2b25fef16bb4ba234f47c694565e97383b36f3a878219065c
  - kind: registry
    name: zerocopy-derive
    version: 0.8.30
    sha: cf955aa904d6040f70dc8e9384444cb1030aed272ba3cb09bbc4ab9e7c1f34f5

build-depends:
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glycin.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-good.bst
