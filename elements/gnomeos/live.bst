kind: meson

sources:
- kind: local
  path: files/gnomeos/live
- kind: cargo2
  ref:
  - kind: registry
    name: addr2line
    version: 0.24.2
    sha: dfbe277e56a376000877090da837660b4427aad530e3028d44e0bffe4f89a1c1
  - kind: registry
    name: adler2
    version: 2.0.0
    sha: 512761e0bb2578dd7380c6baaa0f4ce03e84f95e960231d1dec8bf4d7d6e2627
  - kind: registry
    name: aho-corasick
    version: 1.1.3
    sha: 8e60d3430d3a69478ad0993f19238d2df97c507009a52b3c10addcd7f6bcb916
  - kind: registry
    name: anstream
    version: 0.6.18
    sha: 8acc5369981196006228e28809f761875c0327210a891e941f4c683b3a99529b
  - kind: registry
    name: anstyle
    version: 1.0.10
    sha: 55cc3b69f167a1ef2e161439aa98aed94e6028e5f9a59be9a6ffb47aef1651f9
  - kind: registry
    name: anstyle-parse
    version: 0.2.6
    sha: 3b2d16507662817a6a20a9ea92df6652ee4f94f914589377d69f3b21bc5798a9
  - kind: registry
    name: anstyle-query
    version: 1.1.2
    sha: 79947af37f4177cfead1110013d678905c37501914fba0efea834c3fe9a8d60c
  - kind: registry
    name: anstyle-wincon
    version: 3.0.7
    sha: ca3534e77181a9cc07539ad51f2141fe32f6c3ffd4df76db8ad92346b003ae4e
  - kind: registry
    name: async-broadcast
    version: 0.7.2
    sha: 435a87a52755b8f27fcf321ac4f04b2802e337c8c4872923137471ec39c37532
  - kind: registry
    name: async-channel
    version: 2.3.1
    sha: 89b47800b0be77592da0afd425cc03468052844aff33b84e33cc696f64e77b6a
  - kind: registry
    name: async-executor
    version: 1.13.1
    sha: 30ca9a001c1e8ba5149f91a74362376cc6bc5b919d92d988668657bd570bdcec
  - kind: registry
    name: async-fs
    version: 2.1.2
    sha: ebcd09b382f40fcd159c2d695175b2ae620ffa5f3bd6f664131efff4e8b9e04a
  - kind: registry
    name: async-io
    version: 2.4.0
    sha: 43a2b323ccce0a1d90b449fd71f2a06ca7faa7c54c2751f06c9bd851fc061059
  - kind: registry
    name: async-lock
    version: 3.4.0
    sha: ff6e472cdea888a4bd64f342f09b3f50e1886d32afe8df3d663c01140b811b18
  - kind: registry
    name: async-process
    version: 2.3.0
    sha: 63255f1dc2381611000436537bbedfe83183faa303a5a0edaf191edef06526bb
  - kind: registry
    name: async-recursion
    version: 1.1.1
    sha: 3b43422f69d8ff38f95f1b2bb76517c91589a924d1559a0e935d7c8ce0274c11
  - kind: registry
    name: async-signal
    version: 0.2.10
    sha: 637e00349800c0bdf8bfc21ebbc0b6524abea702b0da4168ac00d070d0c0b9f3
  - kind: registry
    name: async-task
    version: 4.7.1
    sha: 8b75356056920673b02621b35afd0f7dda9306d03c79a30f5c56c44cf256e3de
  - kind: registry
    name: async-trait
    version: 0.1.88
    sha: e539d3fca749fcee5236ab05e93a52867dd549cc157c8cb7f99595f3cedffdb5
  - kind: registry
    name: atomic-waker
    version: 1.1.2
    sha: 1505bd5d3d116872e7271a6d4e16d81d0c8570876c8de68093a09ac269d8aac0
  - kind: registry
    name: autocfg
    version: 1.4.0
    sha: ace50bade8e6234aa140d9a2f552bbee1db4d353f69b8217bc503490fc1a9f26
  - kind: registry
    name: backtrace
    version: 0.3.74
    sha: 8d82cb332cdfaed17ae235a638438ac4d4839913cc2af585c3c6746e8f8bee1a
  - kind: registry
    name: bitflags
    version: 2.9.0
    sha: 5c8214115b7bf84099f1309324e63141d4c5d7cc26862f97a0a857dbefe165bd
  - kind: registry
    name: blocking
    version: 1.6.1
    sha: 703f41c54fc768e63e091340b424302bb1c29ef4aa0c7f10fe849dfb114d29ea
  - kind: registry
    name: bytes
    version: 1.10.1
    sha: d71b6127be86fdcfddb610f7182ac57211d4b18a3e9c82eb2d17662f2227ad6a
  - kind: registry
    name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - kind: registry
    name: cfg_aliases
    version: 0.2.1
    sha: 613afe47fcd5fac7ccf1db93babcb082c5994d996f20b8b159f2ad1658eb5724
  - kind: registry
    name: colorchoice
    version: 1.0.3
    sha: 5b63caa9aa9397e2d9480a9b13673856c78d8ac123288526c37d7839f2a86990
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: crossbeam-utils
    version: 0.8.21
    sha: d0a5c400df2834b80a4c3327b3aad3a4c4cd4de0629063962b03235697506a28
  - kind: registry
    name: endi
    version: 1.1.0
    sha: a3d8a32ae18130a3c84dd492d4215c3d913c3b07c6b63c2eb3eb7ff1101ab7bf
  - kind: registry
    name: enumflags2
    version: 0.7.11
    sha: ba2f4b465f5318854c6f8dd686ede6c0a9dc67d4b1ac241cf0eb51521a309147
  - kind: registry
    name: enumflags2_derive
    version: 0.7.11
    sha: fc4caf64a58d7a6d65ab00639b046ff54399a39f5f2554728895ace4b297cd79
  - kind: registry
    name: env_filter
    version: 0.1.3
    sha: 186e05a59d4c50738528153b83b0b0194d3a29507dfec16eccd4b342903397d0
  - kind: registry
    name: env_logger
    version: 0.11.8
    sha: 13c863f0904021b108aa8b2f55046443e6b1ebde8fd4a15c399893aae4fa069f
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
  - kind: registry
    name: errno
    version: 0.3.11
    sha: 976dd42dc7e85965fe702eb8164f21f450704bdde31faefd6471dba214cb594e
  - kind: registry
    name: event-listener
    version: 5.4.0
    sha: 3492acde4c3fc54c845eaab3eed8bd00c7a7d881f78bfc801e43a93dec1331ae
  - kind: registry
    name: event-listener-strategy
    version: 0.5.4
    sha: 8be9f3dfaaffdae2972880079a491a1a8bb7cbed0b8dd7a347f668b4150a3b93
  - kind: registry
    name: fastrand
    version: 2.3.0
    sha: 37909eebbb50d72f9059c3b6d82c0463f2ff062c9e95845c43a6c9c0355411be
  - kind: registry
    name: futures
    version: 0.3.31
    sha: 65bc07b1a8bc7c85c5f2e110c476c7389b4554ba72af57d8445ea63a576b0876
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
    name: futures-lite
    version: 2.6.0
    sha: f5edaec856126859abb19ed65f39e90fea3a9574b9707f13539acf4abf7eb532
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
    name: getrandom
    version: 0.3.2
    sha: 73fea8450eea4bac3940448fb7ae50d91f034f941199fcd9d909a5a07aa455f0
  - kind: registry
    name: gimli
    version: 0.31.1
    sha: 07e28edb80900c19c28f1072f2e8aeca7fa06b23cd4169cefe1af5aa3260783f
  - kind: registry
    name: hashbrown
    version: 0.15.2
    sha: bf151400ff0baff5465007dd2f3e717f3fe502074ca563069ce3a6629d07b289
  - kind: registry
    name: hermit-abi
    version: 0.4.0
    sha: fbf6a919d6cf397374f7dfeeea91d974c7c0a7221d0d0f4f20d859d329e53fcc
  - kind: registry
    name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - kind: registry
    name: indexmap
    version: 2.9.0
    sha: cea70ddb795996207ad57735b50c5982d8844f38ba9ee5f1aedcfb708a2aa11e
  - kind: registry
    name: is_terminal_polyfill
    version: 1.70.1
    sha: 7943c866cc5cd64cbc25b2e01621d07fa8eb2a1a23160ee81ce38704e97b8ecf
  - kind: registry
    name: itoa
    version: 1.0.15
    sha: 4a5f13b858c8d314ee3e8f639011f7ccefe71f97f96e50151fb991f267928e2c
  - kind: registry
    name: jiff
    version: 0.2.6
    sha: 1f33145a5cbea837164362c7bd596106eb7c5198f97d1ba6f6ebb3223952e488
  - kind: registry
    name: jiff-static
    version: 0.2.6
    sha: 43ce13c40ec6956157a3635d97a1ee2df323b263f09ea14165131289cb0f5c19
  - kind: registry
    name: libc
    version: 0.2.171
    sha: c19937216e9d3aa9956d9bb8dfc0b0c8beb6058fc4f7a4dc4d850edf86a237d6
  - kind: registry
    name: linux-raw-sys
    version: 0.4.15
    sha: d26c52dbd32dccf2d10cac7725f8eae5296885fb5703b261f7d0a0739ec807ab
  - kind: registry
    name: linux-raw-sys
    version: 0.9.3
    sha: fe7db12097d22ec582439daf8618b8fdd1a7bef6270e9af3b1ebcd30893cf413
  - kind: registry
    name: lock_api
    version: 0.4.12
    sha: 07af8b9cdd281b7915f413fa73f29ebd5d55d0d3f0155584dade1ff18cea1b17
  - kind: registry
    name: log
    version: 0.4.27
    sha: 13dc2df351e3202783a1fe0d44375f7295ffb4049267b0f3018346dc122a1d94
  - kind: registry
    name: memchr
    version: 2.7.4
    sha: 78ca9ab1a0babb1e7d5695e3530886289c18cf2f87ec19a575a0abdce112e3a3
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: miniz_oxide
    version: 0.8.8
    sha: 3be647b768db090acb35d5ec5db2b0e1f1de11133ca123b9eacf5137868f892a
  - kind: registry
    name: mio
    version: 1.0.3
    sha: 2886843bf800fba2e3377cff24abf6379b4c4d5c6681eaf9ea5b0d15090450bd
  - kind: registry
    name: nix
    version: 0.29.0
    sha: 71e2746dc3a24dd78b3cfcb7be93368c6de9963d30f43a6a73998a9cf4b17b46
  - kind: registry
    name: object
    version: 0.36.7
    sha: 62948e14d923ea95ea2c7c86c71013138b66525b86bdc08d2dcc262bdb497b87
  - kind: registry
    name: once_cell
    version: 1.21.3
    sha: 42f5e15c9953c5e4ccceeb2e7382a716482c34515315f7b03532b8b4e8393d2d
  - kind: registry
    name: ordered-stream
    version: 0.2.0
    sha: 9aa2b01e1d916879f73a53d01d1d6cee68adbb31d6d9177a8cfce093cced1d50
  - kind: registry
    name: parking
    version: 2.2.1
    sha: f38d5652c16fde515bb1ecef450ab0f6a219d619a7274976324d5e377f7dceba
  - kind: registry
    name: parking_lot
    version: 0.12.3
    sha: f1bf18183cf54e8d6059647fc3063646a1801cf30896933ec2311622cc4b9a27
  - kind: registry
    name: parking_lot_core
    version: 0.9.10
    sha: 1e401f977ab385c9e4e3ab30627d6f26d00e2c73eef317493c4ec6d468726cf8
  - kind: registry
    name: pin-project-lite
    version: 0.2.16
    sha: 3b3cff922bd51709b605d9ead9aa71031d81447142d828eb4a6eba76fe619f9b
  - kind: registry
    name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - kind: registry
    name: piper
    version: 0.2.4
    sha: 96c8c490f422ef9a4efd2cb5b42b76c8613d7e7dfc1caf667b8a3350a5acc066
  - kind: registry
    name: polling
    version: 3.7.4
    sha: a604568c3202727d1507653cb121dbd627a58684eb09a820fd746bee38b4442f
  - kind: registry
    name: portable-atomic
    version: 1.11.0
    sha: 350e9b48cbc6b0e028b0473b114454c6316e57336ee184ceab6e53f72c178b3e
  - kind: registry
    name: portable-atomic-util
    version: 0.2.4
    sha: d8a2f0d8d040d7848a709caf78912debcc3f33ee4b3cac47d73d1e1069e83507
  - kind: registry
    name: ppv-lite86
    version: 0.2.21
    sha: 85eae3c4ed2f50dcfe72643da4befc30deadb458a9b590d720cde2f2b1e97da9
  - kind: registry
    name: proc-macro-crate
    version: 3.3.0
    sha: edce586971a4dfaa28950c6f18ed55e0406c1ab88bbce2c6f6293a7aaba73d35
  - kind: registry
    name: proc-macro2
    version: 1.0.93
    sha: 60946a68e5f9d28b0dc1c21bb8a97ee7d018a8b322fa57838ba31cc878e22d99
  - kind: registry
    name: quote
    version: 1.0.38
    sha: 0e4dccaaaf89514f546c693ddc140f729f958c247918a13380cccc6078391acc
  - kind: registry
    name: r-efi
    version: 5.2.0
    sha: 74765f6d916ee2faa39bc8e68e4f3ed8949b48cccdac59983d287a7cb71ce9c5
  - kind: registry
    name: rand
    version: 0.9.0
    sha: 3779b94aeb87e8bd4e834cee3650289ee9e0d5677f976ecdb6d219e5f4f6cd94
  - kind: registry
    name: rand_chacha
    version: 0.9.0
    sha: d3022b5f1df60f26e1ffddd6c66e8aa15de382ae63b3a0c1bfc0e4d3e3f325cb
  - kind: registry
    name: rand_core
    version: 0.9.3
    sha: 99d9a13982dcf210057a8a78572b2217b667c3beacbf3a0d8b454f6f82837d38
  - kind: registry
    name: redox_syscall
    version: 0.5.11
    sha: d2f103c6d277498fbceb16e84d317e2a400f160f46904d5f5410848c829511a3
  - kind: registry
    name: regex
    version: 1.11.1
    sha: b544ef1b4eac5dc2db33ea63606ae9ffcfac26c1416a2806ae0bf5f56b201191
  - kind: registry
    name: regex-automata
    version: 0.4.9
    sha: 809e8dc61f6de73b46c85f4c96486310fe304c434cfa43669d7b40f711150908
  - kind: registry
    name: regex-syntax
    version: 0.8.5
    sha: 2b15c43186be67a4fd63bee50d0303afffcef381492ebe2c5d87f324e1b8815c
  - kind: registry
    name: rustc-demangle
    version: 0.1.24
    sha: 719b953e2095829ee67db738b3bfa9fa368c94900df327b3f07fe6e794d2fe1f
  - kind: registry
    name: rustix
    version: 0.38.44
    sha: fdb5bc1ae2baa591800df16c9ca78619bf65c0488b41b96ccec5d11220d8c154
  - kind: registry
    name: rustix
    version: 1.0.5
    sha: d97817398dd4bb2e6da002002db259209759911da105da92bec29ccb12cf58bf
  - kind: registry
    name: ryu
    version: 1.0.20
    sha: 28d3b2b1366ec20994f1fd18c3c594f05c5dd4bc44d8bb0c1c632c8d6829481f
  - kind: registry
    name: scopeguard
    version: 1.2.0
    sha: 94143f37725109f92c262ed2cf5e59bce7498c01bcc1502d7b9afe439a4e9f49
  - kind: registry
    name: serde
    version: 1.0.219
    sha: 5f0e2c6ed6606019b4e29e69dbaba95b11854410e5347d525002456dbbb786b6
  - kind: registry
    name: serde_derive
    version: 1.0.219
    sha: 5b0276cf7f2c73365f7157c8123c21cd9a50fbbd844757af28ca1f5925fc2a00
  - kind: registry
    name: serde_json
    version: 1.0.140
    sha: 20068b6e96dc6c9bd23e01df8827e6c7e1f2fddd43c21810382803c136b99373
  - kind: registry
    name: serde_repr
    version: 0.1.20
    sha: 175ee3e80ae9982737ca543e96133087cbd9a485eecc3bc4de9c1a37b47ea59c
  - kind: registry
    name: signal-hook-registry
    version: 1.4.2
    sha: a9e9e0b4211b72e7b8b6e85c807d36c212bdb33ea8587f7569562a84df5465b1
  - kind: registry
    name: slab
    version: 0.4.9
    sha: 8f92a496fb766b417c996b9c5e57daf2f7ad3b0bebe1ccfca4856390e3d3bb67
  - kind: registry
    name: smallvec
    version: 1.15.0
    sha: 8917285742e9f3e1683f0a9c4e6b57960b7314d0b08d30d1ecd426713ee2eee9
  - kind: registry
    name: socket2
    version: 0.5.8
    sha: c970269d99b64e60ec3bd6ad27270092a5394c4e309314b18ae3fe575695fbe8
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - kind: registry
    name: syn
    version: 2.0.98
    sha: 36147f1a48ae0ec2b5b3bc5b537d267457555a10dc06f3dbc8cb11ba3006d3b1
  - kind: registry
    name: tempfile
    version: 3.19.1
    sha: 7437ac7763b9b123ccf33c338a5cc1bac6f69b45a136c19bdd8a65e3916435bf
  - kind: registry
    name: tokio
    version: 1.44.2
    sha: e6b88822cbe49de4185e3a4cbf8321dd487cf5fe0c5c65695fef6346371e9c48
  - kind: registry
    name: tokio-macros
    version: 2.5.0
    sha: 6e06d43f1345a3bcd39f6a56dbb7dcab2ba47e68e8ac134855e7e2bdbaf8cab8
  - kind: registry
    name: toml_datetime
    version: 0.6.8
    sha: 0dd7358ecb8fc2f8d014bf86f6f638ce72ba252a2c3a2572f2a795f1d23efb41
  - kind: registry
    name: toml_edit
    version: 0.22.24
    sha: 17b4795ff5edd201c7cd6dca065ae59972ce77d1b80fa0a84d94950ece7d1474
  - kind: registry
    name: tracing
    version: 0.1.41
    sha: 784e0ac535deb450455cbfa28a6f0df145ea1bb7ae51b821cf5e7927fdcfbdd0
  - kind: registry
    name: tracing-attributes
    version: 0.1.28
    sha: 395ae124c09f9e6918a2310af6038fba074bcf474ac352496d5910dd59a2226d
  - kind: registry
    name: tracing-core
    version: 0.1.33
    sha: e672c95779cf947c5311f83787af4fa8fffd12fb27e4993211a84bdfd9610f9c
  - kind: registry
    name: uds_windows
    version: 1.1.0
    sha: 89daebc3e6fd160ac4aa9fc8b3bf71e1f74fbf92367ae71fb83a037e8bf164b9
  - kind: registry
    name: unicode-ident
    version: 1.0.17
    sha: 00e2473a93778eb0bad35909dff6a10d28e63f792f16ed15e404fca9d5eeedbe
  - kind: registry
    name: utf8parse
    version: 0.2.2
    sha: 06abde3611657adf66d383f00b093d7faecc7fa57071cce2578660c9f1010821
  - kind: registry
    name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
  - kind: registry
    name: wasi
    version: 0.14.2+wasi-0.2.4
    sha: 9683f9a5a998d873c0d21fcbe3c083009670149a8fab228644b8bd36b2c48cb3
  - kind: registry
    name: winapi
    version: 0.3.9
    sha: 5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419
  - kind: registry
    name: winapi-i686-pc-windows-gnu
    version: 0.4.0
    sha: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
  - kind: registry
    name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
  - kind: registry
    name: windows-sys
    version: 0.52.0
    sha: 282be5f36a8ce781fad8c8ae18fa3f9beff57ec1b52cb3de0789201425d9a33d
  - kind: registry
    name: windows-sys
    version: 0.59.0
    sha: 1e38bc4d79ed67fd075bcc251a1c39b32a1776bbe92e5bef1f0bf1f8c531853b
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
    version: 0.7.6
    sha: 63d3fcd9bba44b03821e7d699eeee959f3126dcc4aa8e4ae18ec617c2a5cea10
  - kind: registry
    name: wit-bindgen-rt
    version: 0.39.0
    sha: 6f42320e61fe2cfd34354ecb597f86f413484a798ba44a8ca1165c58d42da6c1
  - kind: registry
    name: xdg-home
    version: 1.3.0
    sha: ec1cdab258fb55c0da61328dc52c8764709b249011b2cad0454c72f0bf10a1f6
  - kind: registry
    name: zbus
    version: 5.5.0
    sha: 59c333f648ea1b647bc95dc1d34807c8e25ed7a6feff3394034dc4776054b236
  - kind: registry
    name: zbus_macros
    version: 5.5.0
    sha: f325ad10eb0d0a3eb060203494c3b7ec3162a01a59db75d2deee100339709fc0
  - kind: registry
    name: zbus_names
    version: 4.2.0
    sha: 7be68e64bf6ce8db94f63e72f0c7eb9a60d733f7e0499e628dfab0f84d6bcb97
  - kind: registry
    name: zerocopy
    version: 0.8.24
    sha: 2586fea28e186957ef732a5f8b3be2da217d65c5969d4b1e17f973ebbe876879
  - kind: registry
    name: zerocopy-derive
    version: 0.8.24
    sha: a996a8f63c5c4448cd959ac1bab0aaa3306ccfd060472f85943ee0750f0169be
  - kind: registry
    name: zvariant
    version: 5.4.0
    sha: b2df9ee044893fcffbdc25de30546edef3e32341466811ca18421e3cd6c5a3ac
  - kind: registry
    name: zvariant_derive
    version: 5.4.0
    sha: 74170caa85b8b84cc4935f2d56a57c7a15ea6185ccdd7eadb57e6edd90f94b2f
  - kind: registry
    name: zvariant_utils
    version: 3.2.0
    sha: e16edfee43e5d7b553b77872d99bc36afdda75c223ca7ad5e3fbecd82ca5fc34

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/rust.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/lvm2.bst
- freedesktop-sdk.bst:components/python3.bst
