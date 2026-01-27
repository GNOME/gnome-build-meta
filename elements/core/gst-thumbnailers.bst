kind: meson

sources:
- kind: git_repo
  url: gnome:gst-thumbnailers.git
  track: main
  ref: 1.0.alpha.3-6-ga9cb2798461a90a6ed494d752bd58deda2ff4a5c
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
    version: 3.19.1
    sha: 5dd9dc738b7a8311c7ade152424974d8115f2cdad61e8dab8dac9f2362298510
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
    version: 0.20.5
    sha: 21be0e1ce6cdb2ee7fff840f922fb04ead349e5cfb1e750b769132d44ce04720
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
    version: 4.5.54
    sha: c6e6ff9dcd79cff5cd969a17a545d79e84ab086e444102a591e288a8aa3ce394
  - kind: registry
    name: clap_builder
    version: 4.5.54
    sha: fa42cf4d2b7a41bc8f663a7cab4031ebafa1bf3875705bfaf8466dc60ab52c00
  - kind: registry
    name: clap_derive
    version: 4.5.49
    sha: 2a0b5487afeab2deb2ff4e03a807ad1a03ac532ff5a2cee5d86884440c7f7671
  - kind: registry
    name: clap_lex
    version: 0.7.7
    sha: c3e64b0cc0439b12df2fa678eae89a1c56a529fd067a9115f7827f1fffd22b32
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
    version: 0.22.0-alpha.2
    sha: def03c123cccb05abbc0452d75a832391d1e0691c25df68007d3aeac0f750a60
  - kind: registry
    name: gio-sys
    version: 0.22.0-alpha.2
    sha: b075d3738d07854522c1f15084c78ef2f9b7f6e2299f39b274a097832e11b316
  - kind: registry
    name: glib
    version: 0.22.0-alpha.2
    sha: 6d97df62440eff82e6c4dd9874b5ac268eecff9395ea34eeec12364ab948bee8
  - kind: registry
    name: glib-macros
    version: 0.22.0-alpha.2
    sha: 134c78d2243839dae953743862b32d89c1421b74640de0fbeb0f80c23a22eb71
  - kind: registry
    name: glib-sys
    version: 0.22.0-alpha.2
    sha: 4579f9083d705e2018e769be800688f159577f7afee6db1d13e2f570cc8c8efe
  - kind: registry
    name: gobject-sys
    version: 0.22.0-alpha.2
    sha: d4b1e4e515a0325dfaabc6368150bdb0b930c095c5ee7cd06044b0e7c07918dc
  - kind: registry
    name: gstreamer
    version: 0.25.0-alpha.1
    sha: 10b4f9209d8742f1b850bac7a2c7df82ddc9a1cead6cc75f999cdf807302cb87
  - kind: registry
    name: gstreamer-app
    version: 0.25.0-alpha.1
    sha: a91a967631584849112033d321beb6688996cad154694e7fa9f0f9aba8db7856
  - kind: registry
    name: gstreamer-app-sys
    version: 0.25.0-alpha.1
    sha: 52625e0711307b00c8ec50a98460f69ff2fd3bca2a75ede9e9e12cfc16926fe6
  - kind: registry
    name: gstreamer-base
    version: 0.25.0-alpha.1
    sha: af58013bb55c7c6b5c62931c447dc5d26f80bef42d827a560f1e7d7856ff3d60
  - kind: registry
    name: gstreamer-base-sys
    version: 0.25.0-alpha.1
    sha: 6e8979d8bea7828584b0e0c3df2cbaca6d2805d52e23974bb05303436908352e
  - kind: registry
    name: gstreamer-sys
    version: 0.25.0-alpha.1
    sha: 616f1d4c2aaf8c813c3ca3cec74baba9234fd732c27d7776960265628253f6d7
  - kind: registry
    name: gstreamer-video
    version: 0.25.0-alpha.1
    sha: 3c597636a58d54edba7d8942db3211df7feec60db76ca6c47bc4a79527b4c69c
  - kind: registry
    name: gstreamer-video-sys
    version: 0.25.0-alpha.1
    sha: 374eb29d9e1df65caba3ea81527968d862a68e5177f5dd2d43cf349f589b0ac2
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
    version: 2.13.0
    sha: 7714e70437a7dc3ac8eb7e6f8df75fd8eb422675fc7678aff7364301092b1017
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
    version: 1.0.17
    sha: 92ecc6618181def0457392ccd0ee51198e065e016d1d527a7ac1b6dc7c1f09d2
  - kind: registry
    name: js-sys
    version: 0.3.83
    sha: 464a3709c7f55f1f721e5389aa6ea4e3bc6aba669353300af094b29ffbdde1d8
  - kind: registry
    name: kstring
    version: 2.0.2
    sha: 558bf9508a558512042d3095138b1f7b8fe90c5467d94f9f1da28b3731c5dbd1
  - kind: registry
    name: libc
    version: 0.2.180
    sha: bcc35a38544a891a5f7c865aca548a982ccb3b8650a5b06d0fd33a10283c56fc
  - kind: registry
    name: libglycin-rebind
    version: 0.1.0-alpha.3
    sha: 6d812877ba3cdbbf1964cab1f16e6754646f258f2b27052bdb8e43a8300d5925
  - kind: registry
    name: libglycin-rebind-sys
    version: 0.1.0-alpha.3
    sha: 79e90027e938fbe22f27da3127ee2a5f1e4bfbb75ad20ef02605cee9fffdc13d
  - kind: registry
    name: memchr
    version: 2.7.6
    sha: f52b00d39961fc5b2736ea853c9cc86238e165017a493d1d5c8eac6bdc4cc273
  - kind: registry
    name: moxcms
    version: 0.7.11
    sha: ac9557c559cd6fc9867e122e20d2cbefc9ca29d80d027a8e39310920ed2f0a97
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
    version: 0.6.1
    sha: aca39cf52b03268400c16eeb9b56382ea3c3353409309b63f5c8f0b1faf42754
  - kind: registry
    name: pastey
    version: 0.2.1
    sha: b867cad97c0791bbd3aaa6472142568c6c9e8f71937e98379f584cfb0cf35bec
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
    name: proc-macro2
    version: 1.0.105
    sha: 535d180e0ecab6268a3e718bb9fd44db66bbbc256257165fc699dadf70d16fe7
  - kind: registry
    name: pxfm
    version: 0.1.27
    sha: 7186d3822593aa4393561d186d1393b3923e9d6163d3fbfd6e825e3e6cf3e6a8
  - kind: registry
    name: quote
    version: 1.0.43
    sha: dc74d9a594b72ae6656596548f56f667211f8a97b3d4c3d467150794690dc40a
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
    version: 1.0.149
    sha: 83fc039473c5595ace860d8c4fafa220ff474b3fc6bfdb4293327f1a37e94d86
  - kind: registry
    name: serde_spanned
    version: 1.0.4
    sha: f8bbf91e5a4d6315eee45e704372590b30e260ee83af6639d64557f51b067776
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
    version: 2.0.114
    sha: d4d107df263a3013ef9b1879b0df87d706ff80f65a86ea879bd9c31f9b307c2a
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
    version: 0.9.11+spec-1.1.0
    sha: f3afc9a848309fe1aaffaed6e1546a7a14de1f935dc9d89d32afd9a44bab7c46
  - kind: registry
    name: toml_datetime
    version: 0.7.5+spec-1.1.0
    sha: 92e1cfed4a3038bc5a127e35a2d360f145e1f4b971b551a2ba5fd7aedf7e1347
  - kind: registry
    name: toml_parser
    version: 1.0.6+spec-1.1.0
    sha: a3198b4b0a8e11f09dd03e133c0280504d0801269e9afa46362ffde1cbeebf44
  - kind: registry
    name: toml_writer
    version: 1.0.6+spec-1.1.0
    sha: ab16f14aed21ee8bfd8ec22513f7287cd4a91aa92e44edfe2c17ddd004e92607
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
    version: 0.2.106
    sha: 0d759f433fa64a2d763d1340820e46e111a7a5ab75f993d1852d70b03dbb80fd
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.106
    sha: 48cb0d2638f8baedbc542ed444afc0644a29166f1595371af4fecf8ce1e7eeb3
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.106
    sha: cefb59d5cd5f92d9dcf80e4683949f15ca4b511f4ac0a6e14d4e1ac60c6ecd40
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.106
    sha: cbc538057e648b67f72a982e708d485b2efa771e1ac05fec311f9f63e5800db4
  - kind: registry
    name: web-sys
    version: 0.3.83
    sha: 9b32828d774c412041098d182a8b38b16ea816958e07cf40eec2bc080ae137ac
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
    version: 0.8.33
    sha: 668f5168d10b9ee831de31933dc111a459c97ec93225beb307aed970d1372dfd
  - kind: registry
    name: zerocopy-derive
    version: 0.8.33
    sha: 2c7962b26b0a8685668b671ee4b54d007a67d4eaf05fda79ac0ecf41e32270f1
  - kind: registry
    name: zmij
    version: 1.0.14
    sha: bd8f3f50b848df28f887acb68e41201b5aea6bc8a8dacc00fb40635ff9a72fea
build-depends:
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glycin.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-good.bst
