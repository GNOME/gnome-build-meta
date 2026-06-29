kind: meson

sources:
- kind: tar
  url: gnome_downloads:gst-thumbnailers/1.1/gst-thumbnailers-1.1.alpha.tar.xz
  ref: 349330282001ac5f0043193bb5a69ed1a63600a6ac93584613f3ac3849902819
- kind: cargo2
  ref:
  - kind: registry
    name: aho-corasick
    version: 1.1.4
    sha: ddd31a130427c27518df266943a5308ed92d4b226cc639f5a8f1002816174301
  - kind: registry
    name: alloca
    version: 0.4.0
    sha: e5a7d05ea6aea7e9e64d25b9156ba2fee3fdd659e34e41063cd2fc7cd020d7f4
  - kind: registry
    name: anes
    version: 0.1.6
    sha: 4b46cbb362ab8752921c97e041f5e366ee6297bd428a31275b9fcf1e380f7299
  - kind: registry
    name: anstyle
    version: 1.0.14
    sha: 940b3a0ca603d1eade50a4846a2afffd5ef57a9feac2c0e2ec2e14f9ead76000
  - kind: registry
    name: atomic_refcell
    version: 0.1.14
    sha: 21e4227379beff4205943696e6c3e0cd809bacdf3f0edd6e3dd153e2269571a4
  - kind: registry
    name: autocfg
    version: 1.5.1
    sha: f2032f911046de80f0a198e0901378627c33f59ea0ac00e363d481118bd70a53
  - kind: registry
    name: bitflags
    version: 2.13.0
    sha: b4388bee8683e3d04af747c73422af53102d2bd24d9eadb6cbc100baef4b43f8
  - kind: registry
    name: bumpalo
    version: 3.20.3
    sha: 72f5acc6cb2ba439de613abc23857ec3d78374d8ed5ac84e9d11336e87da8649
  - kind: registry
    name: bytemuck
    version: 1.25.0
    sha: c8efb64bd706a16a1bdde310ae86b351e4d21550d98d056f22f8a7f7a2183fec
  - kind: registry
    name: byteorder-lite
    version: 0.1.0
    sha: 8f1fe948ff07f4bd06c30984e69f5b4899c516a3ef74f34df92a2df2ab535495
  - kind: registry
    name: cast
    version: 0.3.0
    sha: 37b2a672a2cb129a2e41c10b1224bb368f9f37a2b16b612598138befd7b37eb5
  - kind: registry
    name: cc
    version: 1.2.65
    sha: e228eec9be7c17ccb640b59b36a5cd805ea2a564a4c5e162c2f659fea30d3b96
  - kind: registry
    name: cfg-expr
    version: 0.20.8
    sha: fb693542bcafa528e198be0ebd9d3632ca5b7c93dbe7237460e199910835997c
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
    version: 4.6.1
    sha: 1ddb117e43bbf7dacf0a4190fef4d345b9bad68dfc649cb349e7d17d28428e51
  - kind: registry
    name: clap_builder
    version: 4.6.0
    sha: 714a53001bf66416adb0e2ef5ac857140e7dc3a0c48fb28b2f10762fc4b5069f
  - kind: registry
    name: clap_derive
    version: 4.6.1
    sha: f2ce8604710f6733aa641a2b3731eaa1e8b3d9973d5e3565da11800813f997a9
  - kind: registry
    name: clap_lex
    version: 1.1.0
    sha: c8d4a3bb8b1e0c1050499d1815f5ab16d04f0959b233085fb31653fbfc9d98f9
  - kind: registry
    name: criterion
    version: 0.8.2
    sha: 950046b2aa2492f9a536f5f4f9a3de7b9e2476e575e05bd6c333371add4d98f3
  - kind: registry
    name: criterion-plot
    version: 0.8.2
    sha: d8d80a2f4f5b554395e47b5d8305bc3d27813bacb73493eb1001e8f76dae29ea
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
    version: 1.16.0
    sha: 91622ff5e7162018101f2fea40d6ebf4a78bbe5a49736a2020649edf9693679e
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
  - kind: registry
    name: find-msvc-tools
    version: 0.1.9
    sha: 5baebc0774151f905a1a2cc41989300b1e6fbb29aff0ceffa1064fdd3088d582
  - kind: registry
    name: futures-channel
    version: 0.3.32
    sha: 07bbe89c50d7a535e539b8c17bc0b49bdb77747034daa8087407d655f3f7cc1d
  - kind: registry
    name: futures-core
    version: 0.3.32
    sha: 7e3450815272ef58cec6d564423f6e755e25379b217b0bc688e295ba24df6b1d
  - kind: registry
    name: futures-executor
    version: 0.3.32
    sha: baf29c38818342a3b26b5b923639e7b1f4a61fc5e76102d4b1981c6dc7a7579d
  - kind: registry
    name: futures-io
    version: 0.3.32
    sha: cecba35d7ad927e23624b22ad55235f2239cfa44fd10428eecbeba6d6a717718
  - kind: registry
    name: futures-macro
    version: 0.3.32
    sha: e835b70203e41293343137df5c0664546da5745f82ec9b84d40be8336958447b
  - kind: registry
    name: futures-sink
    version: 0.3.32
    sha: c39754e157331b013978ec91992bde1ac089843443c49cbc7f46150b0fad0893
  - kind: registry
    name: futures-task
    version: 0.3.32
    sha: 037711b3d59c33004d3856fbdc83b99d4ff37a24768fa1be9ce3538a1cde4393
  - kind: registry
    name: futures-util
    version: 0.3.32
    sha: 389ca41296e6190b48053de0321d02a77f32f8a5d2461dd38762c0593805c6d6
  - kind: registry
    name: gio
    version: 0.22.8
    sha: 8b3e1f669909c326b9413bde5a742097b8c90a7d78f45326db13668984769ded
  - kind: registry
    name: gio-sys
    version: 0.22.8
    sha: 353fdc7da7cd16da916104b1e0e4e7de380ec9c8aaa20d4d742d66310ab4b0d5
  - kind: registry
    name: glib
    version: 0.22.8
    sha: ddbcf514bd1881fc1b960e4e52b4e82873f4da3bceddbd58d42827b508888100
  - kind: registry
    name: glib-macros
    version: 0.22.6
    sha: 506d23499707c7142898429757e8d9a3871d965239a2cb66dfa05052be6d6f19
  - kind: registry
    name: glib-sys
    version: 0.22.8
    sha: 030967459f9f676851872c6304adea7825c6d462ec9b72554c733cf0c5952233
  - kind: registry
    name: gobject-sys
    version: 0.22.6
    sha: 22a861859b887a79cf461359c192c97a57d8fb0229dd291232e57aa11f6fa72c
  - kind: registry
    name: gstreamer
    version: 0.25.3
    sha: ab4527e1b9bae8d29ce137bde5b8eec8ae8f78f13ad00fc6e70cbe227d6ad027
  - kind: registry
    name: gstreamer-app
    version: 0.25.2
    sha: 97f8ae9238c2352398dcc084de28df3f7099af216ac6c160b52318d23f25c010
  - kind: registry
    name: gstreamer-app-sys
    version: 0.25.0
    sha: 7a74a8211e5d7df2f45b612c284ddf56b92bdf4e879e8ed72e7c46dd0842e158
  - kind: registry
    name: gstreamer-base
    version: 0.25.3
    sha: c91c94a4d3047d05dd6e1f6d91c74f61f56384c7ea1c9d0c1051572eeeb0138d
  - kind: registry
    name: gstreamer-base-sys
    version: 0.25.3
    sha: 709fbbc623dc066908ba10c43d629c21096508dea04796592a206c4edd864e37
  - kind: registry
    name: gstreamer-sys
    version: 0.25.2
    sha: 533fa8d28fc830eafccbcfcfddb390563ea5d3a351af2c3aab99e197e5f5b1ba
  - kind: registry
    name: gstreamer-video
    version: 0.25.3
    sha: 7907cb8a73edc98cf279e5de7370bb2c245b7bedf623ba8c7e59648cd4739133
  - kind: registry
    name: gstreamer-video-sys
    version: 0.25.3
    sha: 94f6753d53c9a5e274f33441bee2c7dabef82edefb39605b75c834d24af89e7e
  - kind: registry
    name: half
    version: 2.7.1
    sha: 6ea2d84b969582b4b1864a92dc5d27cd2b77b622a8d79306834f1be5ba20d84b
  - kind: registry
    name: hashbrown
    version: 0.17.1
    sha: ed5909b6e89a2db4456e54cd5f673791d7eca6732202bbf2a9cc504fe2f9b84a
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: image
    version: 0.25.10
    sha: 85ab80394333c02fe689eaf900ab500fbd0c2213da414687ebf995a65d5a6104
  - kind: registry
    name: indexmap
    version: 2.14.0
    sha: d466e9454f08e4a911e14806c24e16fba1b4c121d1ea474396f396069cf949d9
  - kind: registry
    name: itertools
    version: 0.13.0
    sha: 413ee7dfc52ee1a4949ceeb7dbc8a33f2d6c088194d9f922fb8318faf1f01186
  - kind: registry
    name: itertools
    version: 0.15.0
    sha: 8b4baf93f58d4425749ca49a51c50ebab072c5df6994d08fed93541c331481dc
  - kind: registry
    name: itoa
    version: 1.0.18
    sha: 8f42a60cbdf9a97f5d2305f08a87dc4e09308d1276d28c869c684d7777685682
  - kind: registry
    name: js-sys
    version: 0.3.103
    sha: 53b44bfcdb3f8d5837a46dae1ca9660a837176eee74a28b229bc626816589102
  - kind: registry
    name: kstring
    version: 2.0.2
    sha: 558bf9508a558512042d3095138b1f7b8fe90c5467d94f9f1da28b3731c5dbd1
  - kind: registry
    name: libc
    version: 0.2.186
    sha: 68ab91017fe16c622486840e4c83c9a37afeff978bd239b5293d61ece587de66
  - kind: registry
    name: libglycin-rebind
    version: 0.1.0
    sha: 79a080d11cbd053f65de1a9c7efd096fe2a0fde6244185bd452bb11fdeb98db3
  - kind: registry
    name: libglycin-rebind-sys
    version: 0.1.0
    sha: 65fecb1928f26a984b937deadbb0998f1a0f3c3db7fa2b9a493322e80b1f9f4b
  - kind: registry
    name: memchr
    version: 2.8.2
    sha: 88904434abc2901f197fe8cc55f0445e7ded921dba5911dad2e2b39b48e663c4
  - kind: registry
    name: moxcms
    version: 0.8.1
    sha: bb85c154ba489f01b25c0d36ae69a87e4a1c73a72631fc6c0eb6dde34a73e44b
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
    version: 1.21.4
    sha: 9f7c3e4beb33f85d45ae3e3a1792185706c8e16d043238c593331cc7cd313b50
  - kind: registry
    name: oorandom
    version: 11.1.5
    sha: d6790f58c7ff633d8771f42965289203411a5e5c68388703c06e14f24770b41e
  - kind: registry
    name: option-operations
    version: 0.6.1
    sha: aca39cf52b03268400c16eeb9b56382ea3c3353409309b63f5c8f0b1faf42754
  - kind: registry
    name: page_size
    version: 0.6.0
    sha: 30d5b2194ed13191c1999ae0704b7839fb18384fa22e49b57eeaa97d79ce40da
  - kind: registry
    name: pastey
    version: 0.2.3
    sha: 2ee67f1008b1ba2321834326597b8e186293b049a023cdef258527550b9935b4
  - kind: registry
    name: pin-project-lite
    version: 0.2.17
    sha: a89322df9ebe1c1578d689c92318e070967d1042b512afbe49518723f4e6d5cd
  - kind: registry
    name: pkg-config
    version: 0.3.33
    sha: 19f132c84eca552bf34cab8ec81f1c1dcc229b811638f9d283dceabe58c5569e
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
    version: 1.0.106
    sha: 8fd00f0bb2e90d81d1044c2b32617f68fcb9fa3bb7640c23e9c748e53fb30934
  - kind: registry
    name: pxfm
    version: 0.1.29
    sha: e0c5ccf5294c6ccd63a74f1565028353830a9c2f5eb0c682c355c471726a6e3f
  - kind: registry
    name: quote
    version: 1.0.46
    sha: dfbc457d0c7a0759a614551b11a6409e5951f6c7537be1f1b7682b9ae9230368
  - kind: registry
    name: rayon
    version: 1.12.0
    sha: fb39b166781f92d482534ef4b4b1b2568f42613b53e5b6c160e24cfbfa30926d
  - kind: registry
    name: rayon-core
    version: 1.13.0
    sha: 22e18b0f0062d30d4230b2e85ff77fdfe4326feb054b9783a3460d8435c8ab91
  - kind: registry
    name: regex
    version: 1.12.4
    sha: f1292b7759ae1cb9ec195452d1390a074f0cd8541ab7a5a8c31cd6db45d4a6ba
  - kind: registry
    name: regex-automata
    version: 0.4.14
    sha: 6e1dd4122fc1595e8162618945476892eefca7b88c52820e74af6262213cae8f
  - kind: registry
    name: regex-syntax
    version: 0.8.11
    sha: d6f6ff9a378485b298a5286656da665ba74413d36db0979633275d2e708145d4
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
    version: 1.0.150
    sha: e8014e44b4736ed0538adeecded0fce2a272f22dc9578a7eb6b2d9993c74cfb9
  - kind: registry
    name: serde_spanned
    version: 1.1.1
    sha: 6662b5879511e06e8999a8a235d848113e942c9124f211511b16466ee2995f26
  - kind: registry
    name: shlex
    version: 2.0.1
    sha: f8fadd59c855ef2080decdef8ff161eb6661b86933c9d82e5ba29dc602a55aba
  - kind: registry
    name: slab
    version: 0.4.12
    sha: 0c790de23124f9ab44544d7ac05d60440adc586479ce501c1d6d7da3cd8c9cf5
  - kind: registry
    name: smallvec
    version: 1.15.2
    sha: 8ed6a63f02c8539c91a8685a86f4099661ba3da017932f6ebbea6de3f0fa7c90
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - kind: registry
    name: syn
    version: 2.0.118
    sha: 1b9ae57f904213ebb649ce6895b8a66c66f0203b9319718f69a5612a065b1422
  - kind: registry
    name: system-deps
    version: 7.0.8
    sha: 396a35feb67335377e0251fcbc1092fc85c484bd4e3a7a54319399da127796e7
  - kind: registry
    name: target-lexicon
    version: 0.13.5
    sha: adb6935a6f5c20170eeceb1a3835a49e12e19d792f6dd344ccc76a985ca5a6ca
  - kind: registry
    name: thiserror
    version: 2.0.18
    sha: 4288b5bcbc7920c07a1149a35cf9590a2aa808e0bc1eafaade0b80947865fbc4
  - kind: registry
    name: thiserror-impl
    version: 2.0.18
    sha: ebc4ee7f67670e9b64d05fa4253e753e016c6c95ff35b89b7941d6b856dec1d5
  - kind: registry
    name: tinytemplate
    version: 1.2.1
    sha: be4d6b5f19ff7664e8c98d03e2139cb510db9b0a60b55f8e8709b689d939b6bc
  - kind: registry
    name: toml
    version: 1.1.2+spec-1.1.0
    sha: 81f3d15e84cbcd896376e6730314d59fb5a87f31e4b038454184435cd57defee
  - kind: registry
    name: toml_datetime
    version: 1.1.1+spec-1.1.0
    sha: 3165f65f62e28e0115a00b2ebdd37eb6f3b641855f9d636d3cd4103767159ad7
  - kind: registry
    name: toml_parser
    version: 1.1.2+spec-1.1.0
    sha: a2abe9b86193656635d2411dc43050282ca48aa31c2451210f4202550afb7526
  - kind: registry
    name: toml_writer
    version: 1.1.1+spec-1.1.0
    sha: 756daf9b1013ebe47a8776667b466417e2d4c5679d441c26230efd9ef78692db
  - kind: registry
    name: unicode-ident
    version: 1.0.24
    sha: e6e4313cd5fcd3dad5cafa179702e2b244f760991f45397d14d4ebf38247da75
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
    version: 0.2.126
    sha: 4b067c0c11094aef6b7a801c1e34a26affafdf3d051dba08456b868789aaf9a4
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.126
    sha: 167ce5e579f6bcf889c4f7175a8a5a585de84e8ff93976ce393efa5f2837aab1
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.126
    sha: f3997c7839262f4ef12cf90b818d6340c18e80f263f1a94bf157d0ec4420380e
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.126
    sha: dc1b4cb0cc549fcf58d7dfc081778139b3d283a081644e833e84682ad71cea24
  - kind: registry
    name: web-sys
    version: 0.3.103
    sha: 8622dcb61c0bcc9fffa6938bed81210af2da9a7e4a1a834b2e37a59b6dfb6141
  - kind: registry
    name: winapi
    version: 0.3.9
    sha: 5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419
  - kind: registry
    name: winapi-i686-pc-windows-gnu
    version: 0.4.0
    sha: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
  - kind: registry
    name: winapi-util
    version: 0.1.11
    sha: c2a7b1c03c876122aa43f3020e6c3c3ee5c05081c9a00739faf7503aeba10d22
  - kind: registry
    name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
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
    version: 1.0.3
    sha: 0592e1c9d151f854e6fd382574c3a0855250e1d9b2f99d9281c6e6391af352f1
  - kind: registry
    name: zerocopy
    version: 0.8.52
    sha: ce1022995ff5ff5d841ad7d994facc23098cd40152f2c1d11cd607c6f530653f
  - kind: registry
    name: zerocopy-derive
    version: 0.8.52
    sha: 1ae7f38b72ec2a254e2b87ef277cf2cd4fb97cbebf944faa6f33354da0867930
  - kind: registry
    name: zmij
    version: 1.0.21
    sha: b8848ee67ecc8aedbaf3e4122217aff892639231befc6a1b58d29fff4c2cabaa
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/rust.bst

depends:
- sdk/glycin.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-good.bst
