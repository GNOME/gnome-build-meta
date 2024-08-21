kind: meson

sources:
- kind: git_repo
  url: gnome:snapshot.git
  track: main
  ref: 48.0.1-4-geda2fe579e365bc979097ae754085098df999a64
- kind: cargo2
  ref:
  - kind: registry
    name: aho-corasick
    version: 1.1.3
    sha: 8e60d3430d3a69478ad0993f19238d2df97c507009a52b3c10addcd7f6bcb916
  - kind: registry
    name: allocator-api2
    version: 0.2.21
    sha: 683d7910e743518b0e34f1186f92494becacb047c7b6bf616c96772180fef923
  - kind: registry
    name: anyhow
    version: 1.0.97
    sha: dcfed56ad506cb2c684a14971b8861fdc3baaaae314b9e5f9bb532cbe3ba7a4f
  - kind: registry
    name: ashpd
    version: 0.11.0
    sha: 6cbdf310d77fd3aaee6ea2093db7011dc2d35d2eb3481e5607f1f8d942ed99df
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
    name: async-net
    version: 2.0.0
    sha: b948000fad4873c1c9339d60f2623323a0cfd3816e5181033c6a5cb68b2accf7
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
    version: 0.1.87
    sha: d556ec1359574147ec0c4fc5eb525f3f23263a592b1a9c07e0a75b427de55c97
  - kind: registry
    name: atomic-waker
    version: 1.1.2
    sha: 1505bd5d3d116872e7271a6d4e16d81d0c8570876c8de68093a09ac269d8aac0
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
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - kind: registry
    name: bitflags
    version: 2.9.0
    sha: 5c8214115b7bf84099f1309324e63141d4c5d7cc26862f97a0a857dbefe165bd
  - kind: registry
    name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - kind: registry
    name: blocking
    version: 1.6.1
    sha: 703f41c54fc768e63e091340b424302bb1c29ef4aa0c7f10fe849dfb114d29ea
  - kind: registry
    name: bytemuck
    version: 1.22.0
    sha: b6b1fc10dbac614ebc03540c9dbd60e83887fda27794998c6528f1782047d540
  - kind: registry
    name: byteorder
    version: 1.5.0
    sha: 1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b
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
    version: 1.2.16
    sha: be714c154be609ec7f5dad223a33bf1482fff90472de28f7362806e6d4832b8c
  - kind: registry
    name: cfg-expr
    version: 0.17.2
    sha: 8d4ba6e40bd1184518716a6e1a781bf9160e286d219ccdb8ab2612e74cfe4789
  - kind: registry
    name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - kind: registry
    name: cfg_aliases
    version: 0.2.1
    sha: 613afe47fcd5fac7ccf1db93babcb082c5994d996f20b8b159f2ad1658eb5724
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: crossbeam-utils
    version: 0.8.21
    sha: d0a5c400df2834b80a4c3327b3aad3a4c4cd4de0629063962b03235697506a28
  - kind: registry
    name: displaydoc
    version: 0.2.5
    sha: 97369cbbc041bc366949bc74d34658d6cda5621039731c6310521892a3a20ae0
  - kind: registry
    name: dlib
    version: 0.5.2
    sha: 330c60081dcc4c72131f8eb70510f1ac07223e5d4163db481a04a0befcffa412
  - kind: registry
    name: dunce
    version: 1.0.5
    sha: 92773504d58c093f6de2459af4af33faa518c13451eb8f2b5698ed3d36e7c813
  - kind: registry
    name: either
    version: 1.15.0
    sha: 48c757948c5ede0e46177b7add2e67155f70e33c07fea8284df6576da70b3719
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
    version: 0.11.7
    sha: c3716d7a920fb4fac5d84e9d4bce8ceb321e9414b4409da61b07b75c1e3d0697
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
  - kind: registry
    name: errno
    version: 0.3.10
    sha: 33d852cb9b869c2a9b3df2f71a3074817f01e1844f839a144f5fcef059a4eb5d
  - kind: registry
    name: event-listener
    version: 5.4.0
    sha: 3492acde4c3fc54c845eaab3eed8bd00c7a7d881f78bfc801e43a93dec1331ae
  - kind: registry
    name: event-listener-strategy
    version: 0.5.3
    sha: 3c3e4e0dd3673c1139bf041f3008816d9cf2946bbfac2945c09e523b8d7b05b2
  - kind: registry
    name: fastrand
    version: 2.3.0
    sha: 37909eebbb50d72f9059c3b6d82c0463f2ff062c9e95845c43a6c9c0355411be
  - kind: registry
    name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - kind: registry
    name: foldhash
    version: 0.1.4
    sha: a0d2fde1f7b3d48b8395d5f2de76c18a528bd6a9cdde438df747bfcba3e05d6f
  - kind: registry
    name: foreign-types
    version: 0.5.0
    sha: d737d9aa519fb7b749cbc3b962edcf310a8dd1f4b67c91c4f83975dbdd17d965
  - kind: registry
    name: foreign-types-macros
    version: 0.2.3
    sha: 1a5c6c585bc94aaf2c7b51dd4c2ba22680844aba4c687be581871a6f518c5742
  - kind: registry
    name: foreign-types-shared
    version: 0.3.1
    sha: aa9a19cbb55df58761df49b23516a86d432839add4af60fc256da840f66ed35b
  - kind: registry
    name: form_urlencoded
    version: 1.2.1
    sha: e13624c2627564efccf4934284bdd98cbaa14e79b0b5a141218e507b3a823456
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
    name: futures-task
    version: 0.3.31
    sha: f90f7dce0722e95104fcb095585910c0977252f286e354b5e3bd38902cd99988
  - kind: registry
    name: futures-timer
    version: 3.0.3
    sha: f288b0a4f20f9a56b5d1da57e2227c661b7b16168e2f72365f57b63326e29b24
  - kind: registry
    name: futures-util
    version: 0.3.31
    sha: 9fa08315bb612088cc391249efdc3bc77536f16c91f6cf495e6fbe85b20a4a81
  - kind: registry
    name: g2gen
    version: 1.2.0
    sha: 39a8e3a10ca47bce6c3f36b5ed98a08636806e07793390a5bce8c2cab2eee309
  - kind: registry
    name: g2p
    version: 1.2.0
    sha: 5bce512b75277aca7d5e1a9efa4d2966b29b5da602af3e29a65e14dc210274ae
  - kind: registry
    name: g2poly
    version: 1.2.0
    sha: feebd4c1b1833bea3876ecc7c2f84520818f86de7b4c3b82e064f68ea1d8cdaa
  - kind: registry
    name: gdk-pixbuf
    version: 0.20.9
    sha: 7563afd6ff0a221edfbb70a78add5075b8d9cb48e637a40a24c3ece3fea414d0
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.20.7
    sha: 67f2587c9202bf997476bbba6aaed4f78a11538a2567df002a5f57f5331d0b5c
  - kind: registry
    name: gdk4
    version: 0.9.6
    sha: 4850c9d9c1aecd1a3eb14fadc1cdb0ac0a2298037e116264c7473e1740a32d60
  - kind: registry
    name: gdk4-sys
    version: 0.9.6
    sha: 6f6eb95798e2b46f279cf59005daf297d5b69555428f185650d71974a910473a
  - kind: registry
    name: gdk4-wayland
    version: 0.9.6
    sha: bd34518488cd624a85e75e82540bc24c72cfeb0aea6bad7faed683ca3977dba0
  - kind: registry
    name: gdk4-wayland-sys
    version: 0.9.6
    sha: 7c7a0f2332c531d62ee3f14f5e839ac1abac59e9b052adf1495124c00d89a34b
  - kind: registry
    name: gdk4-x11
    version: 0.9.6
    sha: 5c3e7380a9a206b170e1b52b5f25581406db816c68f4e7140dbef89a9e5b52ac
  - kind: registry
    name: gdk4-x11-sys
    version: 0.9.6
    sha: 070bd50a053f90d7fdf6be1d75672ea0f97c0e5da3a10dc6d02e5defcb0db32f
  - kind: registry
    name: getrandom
    version: 0.3.1
    sha: 43a49c392881ce6d5c3b8cb70f98717b7c07aabbdff06687b9030dbfbe2725f8
  - kind: registry
    name: gettext-rs
    version: 0.7.2
    sha: a44e92f7dc08430aca7ed55de161253a22276dfd69c5526e5c5e95d1f7cf338a
  - kind: registry
    name: gettext-sys
    version: 0.22.5
    sha: bb45773f5b8945f12aecd04558f545964f943dacda1b1155b3d738f5469ef661
  - kind: registry
    name: gio
    version: 0.20.9
    sha: a4f00c70f8029d84ea7572dd0e1aaa79e5329667b4c17f329d79ffb1e6277487
  - kind: registry
    name: gio-sys
    version: 0.20.9
    sha: 160eb5250a26998c3e1b54e6a3d4ea15c6c7762a6062a19a7b63eff6e2b33f9e
  - kind: registry
    name: glib
    version: 0.20.9
    sha: 707b819af8059ee5395a2de9f2317d87a53dbad8846a2f089f0bb44703f37686
  - kind: registry
    name: glib-macros
    version: 0.20.7
    sha: 715601f8f02e71baef9c1f94a657a9a77c192aea6097cf9ae7e5e177cd8cde68
  - kind: registry
    name: glib-sys
    version: 0.20.9
    sha: a8928869a44cfdd1fccb17d6746e4ff82c8f82e41ce705aa026a52ca8dc3aefb
  - kind: registry
    name: glycin
    version: 2.1.0
    sha: c1496acef16890b0022c61298052d4ca3e1a121dd4696166c3d19242581bdb9a
  - kind: registry
    name: glycin-utils
    version: 3.0.0
    sha: 4348643b905fc981acf8ed0315ab8e315ce771cedb65034562f477cbaa4b1ee1
  - kind: registry
    name: gobject-sys
    version: 0.20.9
    sha: c773a3cb38a419ad9c26c81d177d96b4b08980e8bdbbf32dace883e96e96e7e3
  - kind: registry
    name: graphene-rs
    version: 0.20.9
    sha: 3cbc5911bfb32d68dcfa92c9510c462696c2f715548fcd7f3f1be424c739de19
  - kind: registry
    name: graphene-sys
    version: 0.20.7
    sha: 11a68d39515bf340e879b72cecd4a25c1332557757ada6e8aba8654b4b81d23a
  - kind: registry
    name: gsk4
    version: 0.9.6
    sha: 61f5e72f931c8c9f65fbfc89fe0ddc7746f147f822f127a53a9854666ac1f855
  - kind: registry
    name: gsk4-sys
    version: 0.9.6
    sha: 755059de55fa6f85a46bde8caf03e2184c96bfda1f6206163c72fb0ea12436dc
  - kind: registry
    name: gstreamer
    version: 0.23.5
    sha: 2188fe829b0ebe12e4cf2bbcf6658470a936269daba7afae92847a2af32c9105
  - kind: registry
    name: gstreamer-audio
    version: 0.23.5
    sha: 49118ca684e2fc42207509fcac8497d91079c2ffe8ff2b4ae99e71dbafef1ede
  - kind: registry
    name: gstreamer-audio-sys
    version: 0.23.5
    sha: 7d469526ecf30811b50a6460fd285ee40d189c46048b3d0c69b67a04b414fb51
  - kind: registry
    name: gstreamer-base
    version: 0.23.5
    sha: ad33dd444db0d215ac363164f900f800ffb93361ad8a60840e95e14b7de985e8
  - kind: registry
    name: gstreamer-base-sys
    version: 0.23.5
    sha: 114b2a704f19a70f20c54b00e54f5d5376bbf78bd2791e6beb0776c997d8bf24
  - kind: registry
    name: gstreamer-pbutils
    version: 0.23.5
    sha: acf4bf5857fa22f910634e86a5bce33b5581a9e90caa4e32fd4a20bdd4c83ed0
  - kind: registry
    name: gstreamer-pbutils-sys
    version: 0.23.5
    sha: 304101f5fccbbe41e0169536777ddb7680c2c837e18575c22b30fc20cedfb76f
  - kind: registry
    name: gstreamer-sys
    version: 0.23.5
    sha: fe159238834058725808cf6604a7c5d9e4a50e1eacd7b0c63bce2fe3a067dbd1
  - kind: registry
    name: gstreamer-video
    version: 0.23.5
    sha: ad242d388b63c91652c8157de3b0c1f709e49c941a0aae1952455f6ee326ca2d
  - kind: registry
    name: gstreamer-video-sys
    version: 0.23.5
    sha: 465ff496889fb38be47f5e821163c2e83414d87c4aa55f5aae62dc7200971d4d
  - kind: registry
    name: gtk4
    version: 0.9.6
    sha: af1c491051f030994fd0cde6f3c44f3f5640210308cff1298c7673c47408091d
  - kind: registry
    name: gtk4-macros
    version: 0.9.5
    sha: 0ed1786c4703dd196baf7e103525ce0cf579b3a63a0570fe653b7ee6bac33999
  - kind: registry
    name: gtk4-sys
    version: 0.9.6
    sha: 41e03b01e54d77c310e1d98647d73f996d04b2f29b9121fe493ea525a7ec03d6
  - kind: registry
    name: gufo-common
    version: 0.2.0
    sha: ccb2b4c040e67e6d6ad954f04693a11864df82bce6c6c468524b6a78bb75581f
  - kind: registry
    name: gufo-exif
    version: 0.2.0
    sha: ca82b09b4055d19955579ac4d3fc9ead97392d616624863bd55af500d3232ff0
  - kind: registry
    name: hashbrown
    version: 0.15.2
    sha: bf151400ff0baff5465007dd2f3e717f3fe502074ca563069ce3a6629d07b289
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: hermit-abi
    version: 0.4.0
    sha: fbf6a919d6cf397374f7dfeeea91d974c7c0a7221d0d0f4f20d859d329e53fcc
  - kind: registry
    name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - kind: registry
    name: icu_collections
    version: 1.5.0
    sha: db2fa452206ebee18c4b5c2274dbf1de17008e874b4dc4f0aea9d01ca79e4526
  - kind: registry
    name: icu_locid
    version: 1.5.0
    sha: 13acbb8371917fc971be86fc8057c41a64b521c184808a698c02acc242dbf637
  - kind: registry
    name: icu_locid_transform
    version: 1.5.0
    sha: 01d11ac35de8e40fdeda00d9e1e9d92525f3f9d887cdd7aa81d727596788b54e
  - kind: registry
    name: icu_locid_transform_data
    version: 1.5.0
    sha: fdc8ff3388f852bede6b579ad4e978ab004f139284d7b28715f773507b946f6e
  - kind: registry
    name: icu_normalizer
    version: 1.5.0
    sha: 19ce3e0da2ec68599d193c93d088142efd7f9c5d6fc9b803774855747dc6a84f
  - kind: registry
    name: icu_normalizer_data
    version: 1.5.0
    sha: f8cafbf7aa791e9b22bec55a167906f9e1215fd475cd22adfcf660e03e989516
  - kind: registry
    name: icu_properties
    version: 1.5.1
    sha: 93d6020766cfc6302c15dbbc9c8778c37e62c14427cb7f6e601d849e092aeef5
  - kind: registry
    name: icu_properties_data
    version: 1.5.0
    sha: 67a8effbc3dd3e4ba1afa8ad918d5684b8868b3b26500753effea8d2eed19569
  - kind: registry
    name: icu_provider
    version: 1.5.0
    sha: 6ed421c8a8ef78d3e2dbc98a973be2f3770cb42b606e3ab18d6237c4dfde68d9
  - kind: registry
    name: icu_provider_macros
    version: 1.5.0
    sha: 1ec89e9337638ecdc08744df490b221a7399bf8d164eb52a665454e60e075ad6
  - kind: registry
    name: idna
    version: 1.0.3
    sha: 686f825264d630750a544639377bae737628043f20d38bbc029e8f29ea968a7e
  - kind: registry
    name: idna_adapter
    version: 1.2.0
    sha: daca1df1c957320b2cf139ac61e7bd64fed304c5040df000a745aa1de3b4ef71
  - kind: registry
    name: indexmap
    version: 2.8.0
    sha: 3954d50fe15b02142bf25d3b8bdadb634ec3948f103d04ffe3031bc8fe9d7058
  - kind: registry
    name: itertools
    version: 0.13.0
    sha: 413ee7dfc52ee1a4949ceeb7dbc8a33f2d6c088194d9f922fb8318faf1f01186
  - kind: registry
    name: jiff
    version: 0.2.4
    sha: d699bc6dfc879fb1bf9bdff0d4c56f0884fc6f0d0eb0fba397a6d00cd9a6b85e
  - kind: registry
    name: jiff-static
    version: 0.2.4
    sha: 8d16e75759ee0aa64c57a56acbf43916987b20c77373cb7e808979e02b93c9f9
  - kind: registry
    name: jobserver
    version: 0.1.32
    sha: 48d1dbcbbeb6a7fec7e059840aa538bd62aaccf972c7346c4d9d2059312853d0
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: lcms2
    version: 6.1.0
    sha: 680ec3fa42c36e0af9ca02f20a3742a82229c7f1ee0e6754294de46a80be6f74
  - kind: registry
    name: lcms2-sys
    version: 4.0.5
    sha: 593265f9a3172180024fb62580ee31348f31be924b19416da174ebb7fb623d2e
  - kind: registry
    name: libadwaita
    version: 0.7.1
    sha: 8611ee9fb85e7606c362b513afcaf5b59853f79e4d98caaaf581d99465014247
  - kind: registry
    name: libadwaita-sys
    version: 0.7.1
    sha: b099a223560118d4d4fa04b6d23f3ea5b7171fe1d83dfb7e6b45b54cdfc83af9
  - kind: registry
    name: libc
    version: 0.2.171
    sha: c19937216e9d3aa9956d9bb8dfc0b0c8beb6058fc4f7a4dc4d850edf86a237d6
  - kind: registry
    name: libloading
    version: 0.8.6
    sha: fc2f4eb4bc735547cfed7c0a4922cbd04a4655978c09b54f1f7b228750664c34
  - kind: registry
    name: libseccomp
    version: 0.3.0
    sha: 21c57fd8981a80019807b7b68118618d29a87177c63d704fc96e6ecd003ae5b3
  - kind: registry
    name: libseccomp-sys
    version: 0.2.1
    sha: 9a7cbbd4ad467251987c6e5b47d53b11a5a05add08f2447a9e2d70aef1e0d138
  - kind: registry
    name: linux-raw-sys
    version: 0.4.15
    sha: d26c52dbd32dccf2d10cac7725f8eae5296885fb5703b261f7d0a0739ec807ab
  - kind: registry
    name: linux-raw-sys
    version: 0.9.3
    sha: fe7db12097d22ec582439daf8618b8fdd1a7bef6270e9af3b1ebcd30893cf413
  - kind: registry
    name: litemap
    version: 0.7.5
    sha: 23fb14cb19457329c82206317a5663005a4d404783dc74f4252769b0d5f42856
  - kind: registry
    name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - kind: registry
    name: log
    version: 0.4.26
    sha: 30bde2b3dc3671ae49d8e2e9f044c7c005836e7a023ee57cffa25ab82764bb9e
  - kind: registry
    name: lru
    version: 0.12.5
    sha: 234cf4f4a04dc1f57e24b96cc0cd600cf2af460d4161ac5ecdd0af8e1f3b2a38
  - kind: registry
    name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - kind: registry
    name: memchr
    version: 2.7.4
    sha: 78ca9ab1a0babb1e7d5695e3530886289c18cf2f87ec19a575a0abdce112e3a3
  - kind: registry
    name: memfd
    version: 0.6.4
    sha: b2cffa4ad52c6f791f4f8b15f0c05f9824b2ced1160e88cc393d64fff9a8ac64
  - kind: registry
    name: memmap2
    version: 0.9.5
    sha: fd3f7eed9d3848f8b98834af67102b720745c4ec028fcd0aa0239277e7de374f
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: muldiv
    version: 1.0.1
    sha: 956787520e75e9bd233246045d19f42fb73242759cc57fba9611d940ae96d4b0
  - kind: registry
    name: nix
    version: 0.29.0
    sha: 71e2746dc3a24dd78b3cfcb7be93368c6de9963d30f43a6a73998a9cf4b17b46
  - kind: registry
    name: nu-ansi-term
    version: 0.46.0
    sha: 77a8165726e8236064dbb45459242600304b42a5ea24ee2948e18e023bf7ba84
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
    name: objc
    version: 0.2.7
    sha: 915b1b472bc21c53464d6c8461c9d3af805ba1ef837e1cac254428f4a77177b1
  - kind: registry
    name: objc-foundation
    version: 0.1.1
    sha: 1add1b659e36c9607c7aab864a76c7a4c2760cd0cd2e120f3fb8b952c7e22bf9
  - kind: registry
    name: objc_id
    version: 0.1.1
    sha: c92d4ddb4bd7b50d730c215ff871754d0da6b2178849f8a2a2ab69712d0c073b
  - kind: registry
    name: once_cell
    version: 1.21.1
    sha: d75b0bedcc4fe52caa0e03d9f1151a323e4aa5e2d78ba3580400cd3c9e2bc4bc
  - kind: registry
    name: option-operations
    version: 0.5.0
    sha: 7c26d27bb1aeab65138e4bf7666045169d1717febcc9ff870166be8348b223d0
  - kind: registry
    name: ordered-stream
    version: 0.2.0
    sha: 9aa2b01e1d916879f73a53d01d1d6cee68adbb31d6d9177a8cfce093cced1d50
  - kind: registry
    name: overload
    version: 0.1.1
    sha: b15813163c1d831bf4a13c3610c05c0d03b39feb07f7e09fa234dac9b15aaf39
  - kind: registry
    name: pango
    version: 0.20.9
    sha: 6b1f5dc1b8cf9bc08bfc0843a04ee0fa2e78f1e1fa4b126844a383af4f25f0ec
  - kind: registry
    name: pango-sys
    version: 0.20.9
    sha: 0dbb9b751673bd8fe49eb78620547973a1e719ed431372122b20abd12445bab5
  - kind: registry
    name: parking
    version: 2.2.1
    sha: f38d5652c16fde515bb1ecef450ab0f6a219d619a7274976324d5e377f7dceba
  - kind: registry
    name: paste
    version: 1.0.15
    sha: 57c0d7b74b563b49d38dae00a0c37d4d6de9b432382b2892f0574ddcae73fd0a
  - kind: registry
    name: percent-encoding
    version: 2.3.1
    sha: e3148f5046208a5d56bcfc03053e3ca6334e51da8dfb19b6cdc8b306fae3283e
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
    name: pkg-config
    version: 0.3.32
    sha: 7edddbd0b52d732b21ad9a5fab5c704c14cd949e5e9a1ec5929a24fded1b904c
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
    version: 1.0.94
    sha: a31971752e70b8b2686d7e46ec17fb38dad4051d94024c88df49b667caea9c84
  - kind: registry
    name: quote
    version: 1.0.40
    sha: 1885c039570dc00dcb4ff087a89e185fd56bae234ddc7f056a945bf36467248d
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
    name: rmp
    version: 0.8.14
    sha: 228ed7c16fa39782c3b3468e974aec2795e9089153cd08ee2e9aefb3613334c4
  - kind: registry
    name: rmp-serde
    version: 1.3.0
    sha: 52e599a477cf9840e92f2cde9a7189e67b42c57532749bf90aea6ec10facd4db
  - kind: registry
    name: rqrr
    version: 0.9.0
    sha: f126a9b02152815d84315316e7a759ee18a216d057095d56d19cec68a428b385
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: rustix
    version: 0.38.44
    sha: fdb5bc1ae2baa591800df16c9ca78619bf65c0488b41b96ccec5d11220d8c154
  - kind: registry
    name: rustix
    version: 1.0.2
    sha: f7178faa4b75a30e269c71e61c353ce2748cf3d76f0c44c393f4e60abf49b825
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
    name: serde_repr
    version: 0.1.20
    sha: 175ee3e80ae9982737ca543e96133087cbd9a485eecc3bc4de9c1a37b47ea59c
  - kind: registry
    name: serde_spanned
    version: 0.6.8
    sha: 87607cb1398ed59d48732e575a4c28a7a8ebf2454b964fe3f224f2afc07909e1
  - kind: registry
    name: sharded-slab
    version: 0.1.7
    sha: f40ca3c46823713e0d4209592e8d6e826aa57e928f09752619fc696c499637f6
  - kind: registry
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
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
    version: 1.14.0
    sha: 7fcf8323ef1faaee30a44a340193b1ac6814fd9b7b4e88e9d4519a3e4abe1cfd
  - kind: registry
    name: stable_deref_trait
    version: 1.2.0
    sha: a8f112729512f8e442d81f95a8a7ddf2b7c6b8a1a6f509a95864142b30cab2d3
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - kind: registry
    name: syn
    version: 2.0.100
    sha: b09a44accad81e1ba1cd74a32461ba89dee89095ba17b32f5d03683b1b1fc2a0
  - kind: registry
    name: synstructure
    version: 0.13.1
    sha: c8af7666ab7b6390ab78131fb5b0fce11d6b7a6951602017c35fa82800708971
  - kind: registry
    name: system-deps
    version: 7.0.3
    sha: 66d23aaf9f331227789a99e8de4c91bf46703add012bdfd45fdecdfb2975a005
  - kind: registry
    name: target-lexicon
    version: 0.12.16
    sha: 61c41af27dd6d1e27b1b16b489db798443478cef1f06a660c96db617ba5de3b1
  - kind: registry
    name: temp-dir
    version: 0.1.14
    sha: bc1ee6eef34f12f765cb94725905c6312b6610ab2b0940889cfe58dae7bc3c72
  - kind: registry
    name: tempfile
    version: 3.19.0
    sha: 488960f40a3fd53d72c2a29a58722561dee8afdd175bd88e3db4677d7b2ba600
  - kind: registry
    name: thiserror
    version: 2.0.12
    sha: 567b8a2dae586314f7be2a752ec7474332959c6460e02bde30d702a66d488708
  - kind: registry
    name: thiserror-impl
    version: 2.0.12
    sha: 7f7cf42b4507d8ea322120659672cf1b9dbb93f8f2d4ecfd6e51350ff5b17a1d
  - kind: registry
    name: thread_local
    version: 1.1.8
    sha: 8b9ef9bad013ada3808854ceac7b46812a6465ba368859a37e2100283d2d719c
  - kind: registry
    name: tinystr
    version: 0.7.6
    sha: 9117f5d4db391c1cf6927e7bea3db74b9a1c1add8f7eda9ffd5364f40f57b82f
  - kind: registry
    name: toml
    version: 0.8.20
    sha: cd87a5cdd6ffab733b2f74bc4fd7ee5fff6634124999ac278c35fc78c6120148
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
    name: tracing-log
    version: 0.2.0
    sha: ee855f1f400bd0e5c02d150ae5de3840039a3f54b025156404e34c23c03f47c3
  - kind: registry
    name: tracing-subscriber
    version: 0.3.19
    sha: e8189decb5ac0fa7bc8b96b7cb9b2701d60d48805aca84a238004d665fcc4008
  - kind: registry
    name: uds_windows
    version: 1.1.0
    sha: 89daebc3e6fd160ac4aa9fc8b3bf71e1f74fbf92367ae71fb83a037e8bf164b9
  - kind: registry
    name: unicode-ident
    version: 1.0.18
    sha: 5a5f39404a5da50712a4c1eecf25e90dd62b613502b7e925fd4e4d19b5c96512
  - kind: registry
    name: url
    version: 2.5.4
    sha: 32f8b686cadd1473f4bd0117a5d28d36b1ade384ea9b5069a1c40aefed7fda60
  - kind: registry
    name: utf16_iter
    version: 1.0.5
    sha: c8232dd3cdaed5356e0f716d285e4b40b932ac434100fe9b7e0e8e935b9e6246
  - kind: registry
    name: utf8_iter
    version: 1.0.4
    sha: b6c140620e7ffbb22c2dee59cafe6084a59b5ffc27a8859a5f0d494b5d52b6be
  - kind: registry
    name: valuable
    version: 0.1.1
    sha: ba73ea9cf16a25df0c8caa16c51acb937d5712a8429db78a3ee29d5dcacd3a65
  - kind: registry
    name: version-compare
    version: 0.2.0
    sha: 852e951cb7832cb45cb1169900d19760cfa39b82bc0ea9c0e5a14ae88411c98b
  - kind: registry
    name: wasi
    version: 0.13.3+wasi-0.2.2
    sha: 26816d2e1a4a36a2940b96c5296ce403917633dff8f3440e9b236ed6f6bacad2
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
    version: 0.7.4
    sha: 0e97b544156e9bebe1a0ffbc03484fc1ffe3100cbce3ffb17eac35f7cdd7ab36
  - kind: registry
    name: wit-bindgen-rt
    version: 0.33.0
    sha: 3268f3d866458b787f390cf61f4bbb563b922d091359f9608842999eaee3943c
  - kind: registry
    name: write16
    version: 1.0.0
    sha: d1890f4022759daae28ed4fe62859b1236caebfc61ede2f63ed4e695f3f6d936
  - kind: registry
    name: writeable
    version: 0.5.5
    sha: 1e9df38ee2d2c3c5948ea468a8406ff0db0b29ae1ffde1bcf20ef305bcc95c51
  - kind: registry
    name: xdg-home
    version: 1.3.0
    sha: ec1cdab258fb55c0da61328dc52c8764709b249011b2cad0454c72f0bf10a1f6
  - kind: registry
    name: yeslogic-fontconfig-sys
    version: 6.0.0
    sha: 503a066b4c037c440169d995b869046827dbc71263f6e8f3be6d77d4f3229dbd
  - kind: registry
    name: yoke
    version: 0.7.5
    sha: 120e6aef9aa629e3d4f52dc8cc43a015c7724194c97dfaf45180d2daf2b77f40
  - kind: registry
    name: yoke-derive
    version: 0.7.5
    sha: 2380878cad4ac9aac1e2435f3eb4020e8374b5f13c296cb75b4620ff8e229154
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
    version: 0.8.23
    sha: fd97444d05a4328b90e75e503a34bad781f14e28a823ad3557f0750df1ebcbc6
  - kind: registry
    name: zerocopy-derive
    version: 0.8.23
    sha: 6352c01d0edd5db859a63e2605f4ea3183ddbd15e2c4a9e7d32184df75e4f154
  - kind: registry
    name: zerofrom
    version: 0.1.6
    sha: 50cc42e0333e05660c3587f3bf9d0478688e15d870fab3346451ce7f8c9fbea5
  - kind: registry
    name: zerofrom-derive
    version: 0.1.6
    sha: d71e5d6e06ab090c67b5e44993ec16b72dcbaabc526db883a360057678b48502
  - kind: registry
    name: zerovec
    version: 0.10.4
    sha: aa2b893d79df23bfb12d5461018d408ea19dfafe76c2c7ef6d4eba614f8ff079
  - kind: registry
    name: zerovec-derive
    version: 0.10.3
    sha: 6eafa6dfb17584ea3e2bd6e76e0cc15ad7af12b09abdd1ca55961bed9b1063c6
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
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gst-plugin-gtk4.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-good.bst
- freedesktop-sdk.bst:components/libseccomp.bst

variables:
  meson-local: >-
    -Dx11=disabled
