kind: meson

sources:
- kind: git_repo
  url: gnome:loupe.git
  track: main
  ref: 49.0-4-gb59a69b2cce84aff2d43221d7b8771d2104e9e7e
- kind: cargo2

  ref:
  - kind: registry
    name: adler2
    version: 2.0.1
    sha: 320119579fcad9c21884f5c4861d16174d0e06250625266f50fe6898340abefa
  - kind: registry
    name: aho-corasick
    version: 1.1.3
    sha: 8e60d3430d3a69478ad0993f19238d2df97c507009a52b3c10addcd7f6bcb916
  - kind: registry
    name: anyhow
    version: 1.0.99
    sha: b0674a1ddeecb70197781e945de4b3b8ffb61fa939a5597bcf48503737663100
  - kind: registry
    name: arc-swap
    version: 1.7.1
    sha: 69f7f8c3906b62b754cd5326047894316021dcfe5a194c8ea52bdd94934a3457
  - kind: registry
    name: ashpd
    version: 0.12.0
    sha: da0986d5b4f0802160191ad75f8d33ada000558757db3defb70299ca95d9fcbd
  - kind: registry
    name: async-broadcast
    version: 0.7.2
    sha: 435a87a52755b8f27fcf321ac4f04b2802e337c8c4872923137471ec39c37532
  - kind: registry
    name: async-channel
    version: 2.5.0
    sha: 924ed96dd52d1b75e9c1a3e6275715fd320f5f9439fb5a4a11fa51f4221158d2
  - kind: registry
    name: async-executor
    version: 1.13.3
    sha: 497c00e0fd83a72a79a39fcbd8e3e2f055d6f6c7e025f3b3d91f4f8e76527fb8
  - kind: registry
    name: async-fs
    version: 2.1.3
    sha: 09f7e37c0ed80b2a977691c47dae8625cfb21e205827106c64f7c588766b2e50
  - kind: registry
    name: async-io
    version: 2.5.0
    sha: 19634d6336019ef220f09fd31168ce5c184b295cbf80345437cc36094ef223ca
  - kind: registry
    name: async-lock
    version: 3.4.1
    sha: 5fd03604047cee9b6ce9de9f70c6cd540a0520c813cbd49bae61f33ab80ed1dc
  - kind: registry
    name: async-net
    version: 2.0.0
    sha: b948000fad4873c1c9339d60f2623323a0cfd3816e5181033c6a5cb68b2accf7
  - kind: registry
    name: async-process
    version: 2.4.0
    sha: 65daa13722ad51e6ab1a1b9c01299142bc75135b337923cfa10e79bbbd669f00
  - kind: registry
    name: async-recursion
    version: 1.1.1
    sha: 3b43422f69d8ff38f95f1b2bb76517c91589a924d1559a0e935d7c8ce0274c11
  - kind: registry
    name: async-signal
    version: 0.2.12
    sha: f567af260ef69e1d52c2b560ce0ea230763e6fbb9214a85d768760a920e3e3c1
  - kind: registry
    name: async-task
    version: 4.7.1
    sha: 8b75356056920673b02621b35afd0f7dda9306d03c79a30f5c56c44cf256e3de
  - kind: registry
    name: async-trait
    version: 0.1.89
    sha: 9035ad2d096bed7955a320ee7e2230574d28fd3c3a0f186cbea1ff3c7eed5dbb
  - kind: registry
    name: atomic-waker
    version: 1.1.2
    sha: 1505bd5d3d116872e7271a6d4e16d81d0c8570876c8de68093a09ac269d8aac0
  - kind: registry
    name: autocfg
    version: 1.5.0
    sha: c08606f8c3cbf4ce6ec8e28fb0014a2c086708fe954eaa885384a6165172e7e8
  - kind: registry
    name: bitflags
    version: 2.9.4
    sha: 2261d10cca569e4643e526d8dc2e62e433cc8aba21ab764233731f8d369bf394
  - kind: registry
    name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - kind: registry
    name: blocking
    version: 1.6.2
    sha: e83f8d02be6967315521be875afa792a316e28d57b5a2d401897e2a7921b7f21
  - kind: registry
    name: bytemuck
    version: 1.23.2
    sha: 3995eaeebcdf32f91f980d360f78732ddc061097ab4e39991ae7a6ace9194677
  - kind: registry
    name: byteorder
    version: 1.5.0
    sha: 1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b
  - kind: registry
    name: cairo-rs
    version: 0.21.1
    sha: 1158f326d7b755a9ae2b36c5b5391400e3431f3b77418cedb6d7130126628f10
  - kind: registry
    name: cairo-sys-rs
    version: 0.21.1
    sha: b963177900ec8e783927e5ed99e16c0ec1b723f1f125dff8992db28ef35c62c3
  - kind: registry
    name: cc
    version: 1.2.36
    sha: 5252b3d2648e5eedbc1a6f501e3c795e07025c1e93bbf8bbdd6eef7f447a6d54
  - kind: registry
    name: cfg-expr
    version: 0.20.2
    sha: c8d458d63f0f0f482c8da9b7c8b76c21bd885a02056cc94c6404d861ca2b8206
  - kind: registry
    name: cfg-if
    version: 1.0.3
    sha: 2fd1289c04a9ea8cb22300a459a72a385d7c73d3259e2ed7dcb2af674838cfa9
  - kind: registry
    name: cfg_aliases
    version: 0.2.1
    sha: 613afe47fcd5fac7ccf1db93babcb082c5994d996f20b8b159f2ad1658eb5724
  - kind: registry
    name: chrono
    version: 0.4.42
    sha: 145052bdd345b87320e369255277e3fb5152762ad123a901ef5c262dd38fe8d2
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: crc32fast
    version: 1.5.0
    sha: 9481c1c90cbf2ac953f07c8d4a58aa3945c425b7185c9154d67a65e4230da511
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
    name: encoding_rs
    version: 0.8.35
    sha: 75030f3c4f45dafd7586dd6780965a8c7e8e285a5ecb86713e63a79c5b2766f3
  - kind: registry
    name: endi
    version: 1.1.0
    sha: a3d8a32ae18130a3c84dd492d4215c3d913c3b07c6b63c2eb3eb7ff1101ab7bf
  - kind: registry
    name: enumflags2
    version: 0.7.12
    sha: 1027f7680c853e056ebcec683615fb6fbbc07dbaa13b4d5d9442b146ded4ecef
  - kind: registry
    name: enumflags2_derive
    version: 0.7.12
    sha: 67c78a4d8fdf9953a5c9d458f9efe940fd97a0cab0941c075a813ac594733827
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
    version: 0.3.14
    sha: 39cab71617ae0d63f51a36d69f866391735b51691dbda63cf6f96d042b63efeb
  - kind: registry
    name: event-listener
    version: 5.4.1
    sha: e13b66accf52311f30a0db42147dadea9850cb48cd070028831ae5f5d4b856ab
  - kind: registry
    name: event-listener-strategy
    version: 0.5.4
    sha: 8be9f3dfaaffdae2972880079a491a1a8bb7cbed0b8dd7a347f668b4150a3b93
  - kind: registry
    name: fastrand
    version: 2.3.0
    sha: 37909eebbb50d72f9059c3b6d82c0463f2ff062c9e95845c43a6c9c0355411be
  - kind: registry
    name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - kind: registry
    name: find-msvc-tools
    version: 0.1.1
    sha: 7fd99930f64d146689264c637b5af2f0233a933bef0d8570e2526bf9e083192d
  - kind: registry
    name: flate2
    version: 1.1.2
    sha: 4a3d7db9596fecd151c5f638c0ee5d5bd487b6e0ea232e5dc96d5250f6f94b1d
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
    version: 1.2.2
    sha: cb4cb245038516f5f85277875cdaa4f7d2c9a0fa0468de06ed190163b1581fcf
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
    version: 2.6.1
    sha: f78e10609fe0e0b3f4157ffab1876319b5b0db102a2c60dc4626306dc46b44ad
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
    name: gdk-pixbuf
    version: 0.21.1
    sha: 3c7330cdbbc653df431331ae3d9d59e985a0fecaf33d74c7c1c5d13ab0245f6c
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.21.1
    sha: e25899cc931dc28cba912ebec793b730f53d2d419f90a562fcb29b53bd10aa82
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
    name: gdk4-x11
    version: 0.10.0
    sha: 0634a3d51ccb33e6644d7a4ec29551e1ea2ea6692c420ba6eeae8c42b3363fbc
  - kind: registry
    name: gdk4-x11-sys
    version: 0.10.0
    sha: e387238aacc531f93d9031b69c74ce2236b5fd6438e55bc8b7b79a60c883c350
  - kind: registry
    name: getrandom
    version: 0.3.3
    sha: 26145e563e54f2cadc477553f1ec5ee650b00862f0a58bcd12cbdc5f0ea2d2f4
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
    version: 0.21.1
    sha: 52b5e3f390d01b79e30da451dd00e27cd1ac2de81658e3abf6c1fc3229b24c5f
  - kind: registry
    name: gio-sys
    version: 0.21.1
    sha: a03f2234671e5a588cfe1f59c2b22c103f5772ea351be9cc824a9ce0d06d99fd
  - kind: registry
    name: glib
    version: 0.21.1
    sha: 60bdc26493257b5794ba9301f7cbaf7ab0d69a570bfbefa4d7d360e781cb5205
  - kind: registry
    name: glib-macros
    version: 0.21.0
    sha: e772291ebea14c28eb11bb75741f62f4a4894f25e60ce80100797b6b010ef0f9
  - kind: registry
    name: glib-sys
    version: 0.21.1
    sha: dc7c43cff6a7dc43821e45ebf172399437acd6716fa2186b6852d2b397bf622d
  - kind: registry
    name: glycin
    version: 3.0.0
    sha: 3b70ebfc9e7c504e99580122d58174a3976f086ec55834692e44dd7489d36ed9
  - kind: registry
    name: glycin-common
    version: 1.0.0
    sha: a2382f0d91d42f750486e7c8316cba4781404e574458b5f28d91daff1656e73b
  - kind: registry
    name: glycin-utils
    version: 4.0.0
    sha: 127d5f71bf307364e30ef0b6720a7a9557b2b642a933c2e048ac5f5fba2dc1c3
  - kind: registry
    name: gobject-sys
    version: 0.21.1
    sha: 3e9a190eef2bce144a6aa8434e306974c6062c398e0a33a146d60238f9062d5c
  - kind: registry
    name: graphene-rs
    version: 0.21.1
    sha: d96914394464c04df8279c23976293afd53b2588e03c9d8d9662ef6528654a85
  - kind: registry
    name: graphene-sys
    version: 0.21.1
    sha: cf8205bb19b7a041cf059be3c94d6b23b3f2c6c96362c44311dcf184e4a9422a
  - kind: registry
    name: gsk4
    version: 0.10.0
    sha: d5dbe33ceed6fc20def67c03d36e532f5a4a569ae437ae015a7146094f31e10c
  - kind: registry
    name: gsk4-sys
    version: 0.10.0
    sha: 8d76011d55dd19fde16ffdedee08877ae6ec942818cfa7bc08a91259bc0b9fc9
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
    name: gufo
    version: 0.3.0
    sha: fbd1a9cdb84d3166fa067fa352651f9212567af36701230e7dd7044919e1ce78
  - kind: registry
    name: gufo-common
    version: 1.0.1
    sha: 98bebe9ba4be92d3932246ecfbe261106e3013266604f8cbf0ca9ee9df7edf99
  - kind: registry
    name: gufo-exif
    version: 0.3.0
    sha: 9d2b06ed83ed41cff519aeac7bc7ae4580c7b8ffd8f5688f4dcc362df1f1d349
  - kind: registry
    name: gufo-jpeg
    version: 0.3.0
    sha: 2ddb8a93bbd671390189f8dee0209731200bdfe403606c6abf6a2aaec5a935f5
  - kind: registry
    name: gufo-png
    version: 0.3.0
    sha: 6efe26f06316c479656b897b7374fa97a44a89de91dcf427178901937d8afaba
  - kind: registry
    name: gufo-tiff
    version: 0.3.0
    sha: ebb22afeeb3c8733cc65bce0116489da9fc8649f3c7b4bcc61b5ee31416cf9af
  - kind: registry
    name: gufo-webp
    version: 0.3.0
    sha: 78b5ff49ef9a4b4163cf846534e13b2e8b867d404e7c540facda6e3e7f210224
  - kind: registry
    name: gufo-xmp
    version: 0.3.0
    sha: 86844cef8838b44b8750f95d3de02d5a17999ca61afc00026b058b3d18dec4c4
  - kind: registry
    name: gvdb
    version: 0.9.0
    sha: b9d94c8a63f94bbc35cf63e105791c5992bd60d4516d41fe5bf3db8d10b30b43
  - kind: registry
    name: gvdb-macros
    version: 0.1.15
    sha: e9ead18b3ca995ee40dc08121c75ffc2d8695fbd1a1ced48c3632c7c1ce00b2c
  - kind: registry
    name: gweather-sys
    version: 4.6.0
    sha: 9cffbe67680461903bbc83915f28d957975998f7a2943db01752e08679fcd081
  - kind: registry
    name: half
    version: 2.6.0
    sha: 459196ed295495a68f7d7fe1d84f6c4b7ff0e21fe3017b2f283c6fac3ad803c9
  - kind: registry
    name: hashbrown
    version: 0.15.5
    sha: 9229cfe53dfd69f0609a49f65461bd93001ea1ef889cd5529dd176593f5338a1
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: hermit-abi
    version: 0.5.2
    sha: fc0fef456e4baa96da950455cd02c081ca953b141298e41db3fc7e36b1da849c
  - kind: registry
    name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - kind: registry
    name: icu_collections
    version: 2.0.0
    sha: 200072f5d0e3614556f94a9930d5dc3e0662a652823904c3a75dc3b0af7fee47
  - kind: registry
    name: icu_locale_core
    version: 2.0.0
    sha: 0cde2700ccaed3872079a65fb1a78f6c0a36c91570f28755dda67bc8f7d9f00a
  - kind: registry
    name: icu_normalizer
    version: 2.0.0
    sha: 436880e8e18df4d7bbc06d58432329d6458cc84531f7ac5f024e93deadb37979
  - kind: registry
    name: icu_normalizer_data
    version: 2.0.0
    sha: 00210d6893afc98edb752b664b8890f0ef174c8adbb8d0be9710fa66fbbf72d3
  - kind: registry
    name: icu_properties
    version: 2.0.1
    sha: 016c619c1eeb94efb86809b015c58f479963de65bdb6253345c1a1276f22e32b
  - kind: registry
    name: icu_properties_data
    version: 2.0.1
    sha: 298459143998310acd25ffe6810ed544932242d3f07083eee1084d83a71bd632
  - kind: registry
    name: icu_provider
    version: 2.0.0
    sha: 03c80da27b5f4187909049ee2d72f276f0d9f99a42c306bd0131ecfe04d8e5af
  - kind: registry
    name: idna
    version: 1.1.0
    sha: 3b0875f23caa03898994f6ddc501886a45c7d3d62d04d2d90788d47be1b1e4de
  - kind: registry
    name: idna_adapter
    version: 1.2.1
    sha: 3acae9609540aa318d1bc588455225fb2085b9ed0c4f6bd0d9d5bcd86f1a0344
  - kind: registry
    name: indexmap
    version: 2.11.1
    sha: 206a8042aec68fa4a62e8d3f7aa4ceb508177d9324faf261e1959e495b7a1921
  - kind: registry
    name: itoa
    version: 1.0.15
    sha: 4a5f13b858c8d314ee3e8f639011f7ccefe71f97f96e50151fb991f267928e2c
  - kind: registry
    name: jiff
    version: 0.2.15
    sha: be1f93b8b1eb69c77f24bbb0afdf66f54b632ee39af40ca21c4365a1d7347e49
  - kind: registry
    name: jiff-static
    version: 0.2.15
    sha: 03343451ff899767262ec32146f6d559dd759fdadf42ff0e227c7c48f72594b4
  - kind: registry
    name: jobserver
    version: 0.1.34
    sha: 9afb3de4395d6b3e67a780b6de64b51c978ecf11cb9a462c66be7d4ca9039d33
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: lcms2
    version: 6.1.1
    sha: b75877b724685dd49310bdbadbf973fc69b1d01992a6d4a861b928fc3943f87b
  - kind: registry
    name: lcms2-sys
    version: 4.0.6
    sha: 1c2604b23848ca80b2add60f0fb2270fd980e622c25029b6597fa01cfd5f8d5f
  - kind: registry
    name: libadwaita
    version: 0.8.0
    sha: 4df6715d1257bd8c093295b77a276ed129d73543b10304fec5829ced5d5b7c41
  - kind: registry
    name: libadwaita-sys
    version: 0.8.0
    sha: fdf8950090cc180250cdb1ff859a39748feeda7a53a9f28ead3a17a14cc37ae2
  - kind: registry
    name: libc
    version: 0.2.175
    sha: 6a82ae493e598baaea5209805c49bbf2ea7de956d50d7da0da1164f9c6d28543
  - kind: registry
    name: libgweather
    version: 4.6.0
    sha: 666424a45de09ec2ed8c2964704fe4f56555299a6ed930db9df5a5d847fec99e
  - kind: registry
    name: libloading
    version: 0.8.8
    sha: 07033963ba89ebaf1584d767badaa2e8fcec21aedea6b8c0346d487d49c28667
  - kind: registry
    name: libseccomp
    version: 0.4.0
    sha: 0e5310a2c5b6ffbc094b5f70a2ca7b79ed36ad90e6f90994b166489a1bce3fcc
  - kind: registry
    name: libseccomp-sys
    version: 0.3.0
    sha: 60276e2d41bbb68b323e566047a1bfbf952050b157d8b5cdc74c07c1bf4ca3b6
  - kind: registry
    name: linux-raw-sys
    version: 0.11.0
    sha: df1d3c3b53da64cf5760482273a98e575c651a67eec7f77df96b5b642de8f039
  - kind: registry
    name: litemap
    version: 0.8.0
    sha: 241eaef5fd12c88705a01fc1066c48c4b36e0dd4377dcdc7ec3942cea7a69956
  - kind: registry
    name: litrs
    version: 0.5.1
    sha: 1e4cf394bcd88ba72eb3b2862e21ef6458b0e1586654e213b0176e667bb9d19e
  - kind: registry
    name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - kind: registry
    name: log
    version: 0.4.28
    sha: 34080505efa8e45a4b816c349525ebe327ceaa8559756f0356cba97ef3bf7432
  - kind: registry
    name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - kind: registry
    name: matchers
    version: 0.2.0
    sha: d1525a2a28c7f4fa0fc98bb91ae755d1e2d1505079e05539e35bc876b5d65ae9
  - kind: registry
    name: memchr
    version: 2.7.5
    sha: 32a282da65faaf38286cf3be983213fcf1d2e2a58700e808f83f4ea9a4804bc0
  - kind: registry
    name: memfd
    version: 0.6.5
    sha: ad38eb12aea514a0466ea40a80fd8cc83637065948eb4a426e4aa46261175227
  - kind: registry
    name: memmap2
    version: 0.9.8
    sha: 843a98750cd611cc2965a8213b53b43e715f13c37a9e096c6408e69990961db7
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: miniz_oxide
    version: 0.8.9
    sha: 1fa76a2c86f704bdb222d66965fb3d63269ce38518b83cb0575fca855ebb6316
  - kind: registry
    name: nix
    version: 0.30.1
    sha: 74523f3a35e05aba87a1d978330aef40f67b0304ac79c1c00b294c9830543db6
  - kind: registry
    name: nu-ansi-term
    version: 0.50.1
    sha: d4a28e057d01f97e61255210fcff094d74ed0466038633e95017f5beb68e4399
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
    version: 1.21.3
    sha: 42f5e15c9953c5e4ccceeb2e7382a716482c34515315f7b03532b8b4e8393d2d
  - kind: registry
    name: ordered-stream
    version: 0.2.0
    sha: 9aa2b01e1d916879f73a53d01d1d6cee68adbb31d6d9177a8cfce093cced1d50
  - kind: registry
    name: pango
    version: 0.21.1
    sha: ab47feb3403aa564edaeb68620c5b9159f8814733a7dd45f0b1a27d19de362fe
  - kind: registry
    name: pango-sys
    version: 0.21.1
    sha: 1f855bccb447644e149fae79086e1f81514c30fe5e9b8bd257d9d3c941116c86
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
    version: 2.3.2
    sha: 9b4f627cb1b25917193a259e49bdad08f671f8d9708acfd5fe0a8c1455d87220
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
    version: 3.10.0
    sha: b5bd19146350fe804f7cb2669c851c03d69da628803dab0d98018142aaa5d829
  - kind: registry
    name: portable-atomic
    version: 1.11.1
    sha: f84267b20a16ea918e43c6a88433c2d54fa145c92a811b5b047ccbe153674483
  - kind: registry
    name: portable-atomic-util
    version: 0.2.4
    sha: d8a2f0d8d040d7848a709caf78912debcc3f33ee4b3cac47d73d1e1069e83507
  - kind: registry
    name: potential_utf
    version: 0.1.3
    sha: 84df19adbe5b5a0782edcab45899906947ab039ccf4573713735ee7de1e6b08a
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
    version: 1.0.101
    sha: 89ae43fd86e4158d6db51ad8e2b80f313af9cc74f5c0e03ccb87de09998732de
  - kind: registry
    name: quick-xml
    version: 0.38.3
    sha: 42a232e7487fc2ef313d96dde7948e7a3c05101870d8985e4fd8d26aedd27b89
  - kind: registry
    name: quote
    version: 1.0.40
    sha: 1885c039570dc00dcb4ff087a89e185fd56bae234ddc7f056a945bf36467248d
  - kind: registry
    name: r-efi
    version: 5.3.0
    sha: 69cdb34c158ceb288df11e18b4bd39de994f6657d83847bdffdbd7f346754b0f
  - kind: registry
    name: rand
    version: 0.9.2
    sha: 6db2770f06117d490610c7488547d543617b21bfa07796d7a12f6f1bd53850d1
  - kind: registry
    name: rand_chacha
    version: 0.9.0
    sha: d3022b5f1df60f26e1ffddd6c66e8aa15de382ae63b3a0c1bfc0e4d3e3f325cb
  - kind: registry
    name: rand_core
    version: 0.9.3
    sha: 99d9a13982dcf210057a8a78572b2217b667c3beacbf3a0d8b454f6f82837d38
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
    version: 1.11.2
    sha: 23d7fd106d8c02486a8d64e778353d1cffe08ce79ac2e82f540c86d0facf6912
  - kind: registry
    name: regex-automata
    version: 0.4.10
    sha: 6b9458fa0bfeeac22b5ca447c63aaf45f28439a709ccd244698632f9aa6394d6
  - kind: registry
    name: regex-syntax
    version: 0.8.6
    sha: caf4aa5b0f434c91fe5c7f1ecb6a5ece2130b02ad2a590589dda5146df959001
  - kind: registry
    name: rmp
    version: 0.8.14
    sha: 228ed7c16fa39782c3b3468e974aec2795e9089153cd08ee2e9aefb3613334c4
  - kind: registry
    name: rmp-serde
    version: 1.3.0
    sha: 52e599a477cf9840e92f2cde9a7189e67b42c57532749bf90aea6ec10facd4db
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: rustix
    version: 1.1.2
    sha: cd15f8a2c5551a84d56efdc1cd049089e409ac19a3072d5037a17fd70719ff3e
  - kind: registry
    name: ryu
    version: 1.0.20
    sha: 28d3b2b1366ec20994f1fd18c3c594f05c5dd4bc44d8bb0c1c632c8d6829481f
  - kind: registry
    name: same-file
    version: 1.0.6
    sha: 93fc1dc3aaa9bfed95e02e6eadabb4baf7e3078b0bd1b4d7b6b0b68378900502
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
    name: serde_json
    version: 1.0.143
    sha: d401abef1d108fbd9cbaebc3e46611f4b1021f714a0597a71f41ee463f5f4a5a
  - kind: registry
    name: serde_repr
    version: 0.1.20
    sha: 175ee3e80ae9982737ca543e96133087cbd9a485eecc3bc4de9c1a37b47ea59c
  - kind: registry
    name: serde_spanned
    version: 0.6.9
    sha: bf41e0cfaf7226dca15e8197172c295a782857fcb97fad1808a166870dee75a3
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
    version: 1.4.6
    sha: b2a4719bff48cee6b39d12c020eeb490953ad2443b7055bd0b21fca26bd8c28b
  - kind: registry
    name: slab
    version: 0.4.11
    sha: 7a2ae44ef20feb57a68b23d846850f861394c2e02dc425a50098ae8c90267589
  - kind: registry
    name: smallvec
    version: 1.15.1
    sha: 67b1b7a3b5fe4f1376887184045fcf45c69e92af734b7aaddc05fb777b6fbd03
  - kind: registry
    name: stable_deref_trait
    version: 1.2.0
    sha: a8f112729512f8e442d81f95a8a7ddf2b7c6b8a1a6f509a95864142b30cab2d3
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - kind: registry
    name: strum
    version: 0.27.2
    sha: af23d6f6c1a224baef9d3f61e287d2761385a5b88fdab4eb4c6f11aeb54c4bcf
  - kind: registry
    name: strum_macros
    version: 0.27.2
    sha: 7695ce3845ea4b33927c055a39dc438a45b059f7c1b3d91d38d10355fb8cbca7
  - kind: registry
    name: syn
    version: 2.0.106
    sha: ede7c438028d4436d71104916910f5bb611972c5cfd7f89b8300a8186e6fada6
  - kind: registry
    name: synstructure
    version: 0.13.2
    sha: 728a70f3dbaf5bab7f0c4b1ac8d7ae5ea60a4b5549c8a5914361c99147a709d2
  - kind: registry
    name: system-deps
    version: 7.0.5
    sha: e4be53aa0cba896d2dc615bd42bbc130acdcffa239e0a2d965ea5b3b2a86ffdb
  - kind: registry
    name: target-lexicon
    version: 0.13.2
    sha: e502f78cdbb8ba4718f566c418c52bc729126ffd16baee5baa718cf25dd5a69a
  - kind: registry
    name: temp-dir
    version: 0.1.16
    sha: 83176759e9416cf81ee66cb6508dbfe9c96f20b8b56265a39917551c23c70964
  - kind: registry
    name: tempfile
    version: 3.22.0
    sha: 84fa4d11fadde498443cca10fd3ac23c951f0dc59e080e9f4b93d4df4e4eea53
  - kind: registry
    name: thiserror
    version: 2.0.16
    sha: 3467d614147380f2e4e374161426ff399c91084acd2363eaf549172b3d5e60c0
  - kind: registry
    name: thiserror-impl
    version: 2.0.16
    sha: 6c5e1be1c48b9172ee610da68fd9cd2770e7a4056cb3fc98710ee6906f0c7960
  - kind: registry
    name: thread_local
    version: 1.1.9
    sha: f60246a4944f24f6e018aa17cdeffb7818b76356965d03b07d6a9886e8962185
  - kind: registry
    name: tinystr
    version: 0.8.1
    sha: 5d4f6d1145dcb577acf783d4e601bc1d76a13337bb54e6233add580b07344c8b
  - kind: registry
    name: toml
    version: 0.8.23
    sha: dc1beb996b9d83529a9e75c17a1686767d148d70663143c7854d8b4a09ced362
  - kind: registry
    name: toml_datetime
    version: 0.6.11
    sha: 22cddaf88f4fbc13c51aebbf5f8eceb5c7c5a9da2ac40a13519eb5b0a0e8f11c
  - kind: registry
    name: toml_edit
    version: 0.22.27
    sha: 41fe8c660ae4257887cf66394862d21dbca4a6ddd26f04a3560410406a2f819a
  - kind: registry
    name: tracing
    version: 0.1.41
    sha: 784e0ac535deb450455cbfa28a6f0df145ea1bb7ae51b821cf5e7927fdcfbdd0
  - kind: registry
    name: tracing-attributes
    version: 0.1.30
    sha: 81383ab64e72a7a8b8e13130c49e3dab29def6d0c7d76a03087b3cf71c5c6903
  - kind: registry
    name: tracing-core
    version: 0.1.34
    sha: b9d12581f227e93f094d3af2ae690a574abb8a2b9b7a96e7cfe9647b2b617678
  - kind: registry
    name: tracing-log
    version: 0.2.0
    sha: ee855f1f400bd0e5c02d150ae5de3840039a3f54b025156404e34c23c03f47c3
  - kind: registry
    name: tracing-subscriber
    version: 0.3.20
    sha: 2054a14f5307d601f88daf0553e1cbf472acc4f2c51afab632431cdcd72124d5
  - kind: registry
    name: uds_windows
    version: 1.1.0
    sha: 89daebc3e6fd160ac4aa9fc8b3bf71e1f74fbf92367ae71fb83a037e8bf164b9
  - kind: registry
    name: unicode-ident
    version: 1.0.19
    sha: f63a545481291138910575129486daeaf8ac54aee4387fe7906919f7830c7d9d
  - kind: registry
    name: url
    version: 2.5.7
    sha: 08bc136a29a3d1758e07a9cca267be308aeebf5cfd5a10f3f67ab2097683ef5b
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
    name: walkdir
    version: 2.5.0
    sha: 29790946404f91d9c5d06f9874efddea1dc06c5efe94541a7d6863108e3a5e4b
  - kind: registry
    name: wasi
    version: 0.14.5+wasi-0.2.4
    sha: a4494f6290a82f5fe584817a676a34b9d6763e8d9d18204009fb31dceca98fd4
  - kind: registry
    name: wasip2
    version: 1.0.0+wasi-0.2.4
    sha: 03fa2761397e5bd52002cd7e73110c71af2109aca4e521a9f40473fe685b0a24
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
    version: 0.1.3
    sha: 5e6ad25900d524eaabdbbb96d20b4311e1e7ae1699af4fb28c17ae66c80d798a
  - kind: registry
    name: windows-link
    version: 0.2.0
    sha: 45e46c0661abb7180e7b9c281db115305d49ca1709ab8242adf09666d2173c65
  - kind: registry
    name: windows-sys
    version: 0.52.0
    sha: 282be5f36a8ce781fad8c8ae18fa3f9beff57ec1b52cb3de0789201425d9a33d
  - kind: registry
    name: windows-sys
    version: 0.60.2
    sha: f2f500e4d28234f72040990ec9d39e3a6b950f9f22d3dba18416c35882612bcb
  - kind: registry
    name: windows-sys
    version: 0.61.0
    sha: e201184e40b2ede64bc2ea34968b28e33622acdbbf37104f0e4a33f7abe657aa
  - kind: registry
    name: windows-targets
    version: 0.52.6
    sha: 9b724f72796e036ab90c1021d4780d4d3d648aca59e491e6b98e725b84e99973
  - kind: registry
    name: windows-targets
    version: 0.53.3
    sha: d5fe6031c4041849d7c496a8ded650796e7b6ecc19df1a431c1a363342e5dc91
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.52.6
    sha: 32a4622180e7a0ec044bb555404c800bc9fd9ec262ec147edd5989ccd0c02cd3
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.53.0
    sha: 86b8d5f90ddd19cb4a147a5fa63ca848db3df085e25fee3cc10b39b6eebae764
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.52.6
    sha: 09ec2a7bb152e2252b53fa7803150007879548bc709c039df7627cabbd05d469
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.53.0
    sha: c7651a1f62a11b8cbd5e0d42526e55f2c99886c77e007179efff86c2b137e66c
  - kind: registry
    name: windows_i686_gnu
    version: 0.52.6
    sha: 8e9b5ad5ab802e97eb8e295ac6720e509ee4c243f69d781394014ebfe8bbfa0b
  - kind: registry
    name: windows_i686_gnu
    version: 0.53.0
    sha: c1dc67659d35f387f5f6c479dc4e28f1d4bb90ddd1a5d3da2e5d97b42d6272c3
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.52.6
    sha: 0eee52d38c090b3caa76c563b86c3a4bd71ef1a819287c19d586d7334ae8ed66
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.53.0
    sha: 9ce6ccbdedbf6d6354471319e781c0dfef054c81fbc7cf83f338a4296c0cae11
  - kind: registry
    name: windows_i686_msvc
    version: 0.52.6
    sha: 240948bc05c5e7c6dabba28bf89d89ffce3e303022809e73deaefe4f6ec56c66
  - kind: registry
    name: windows_i686_msvc
    version: 0.53.0
    sha: 581fee95406bb13382d2f65cd4a908ca7b1e4c2f1917f143ba16efe98a589b5d
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.52.6
    sha: 147a5c80aabfbf0c7d901cb5895d1de30ef2907eb21fbbab29ca94c5b08b1a78
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.53.0
    sha: 2e55b5ac9ea33f2fc1716d1742db15574fd6fc8dadc51caab1c16a3d3b4190ba
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.52.6
    sha: 24d5b23dc417412679681396f2b49f3de8c1473deb516bd34410872eff51ed0d
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.53.0
    sha: 0a6e035dd0599267ce1ee132e51c27dd29437f63325753051e71dd9e42406c57
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.52.6
    sha: 589f6da84c646204747d1270a2a5661ea66ed1cced2631d546fdfb155959f9ec
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.53.0
    sha: 271414315aff87387382ec3d271b52d7ae78726f5d44ac98b4f4030c91880486
  - kind: registry
    name: winnow
    version: 0.7.13
    sha: 21a0236b59786fed61e2a80582dd500fe61f18b5dca67a4a067d0bc9039339cf
  - kind: registry
    name: wit-bindgen
    version: 0.45.1
    sha: 5c573471f125075647d03df72e026074b7203790d41351cd6edc96f46bcccd36
  - kind: registry
    name: writeable
    version: 0.6.1
    sha: ea2f10b9bb0928dfb1b42b65e1f9e36f7f54dbdf08457afefb38afcdec4fa2bb
  - kind: registry
    name: x11
    version: 2.21.0
    sha: 502da5464ccd04011667b11c435cb992822c2c0dbde1770c988480d312a0db2e
  - kind: registry
    name: xml-rs
    version: 0.8.27
    sha: 6fd8403733700263c6eb89f192880191f1b83e332f7a20371ddcf421c4a337c7
  - kind: registry
    name: yeslogic-fontconfig-sys
    version: 6.0.0
    sha: 503a066b4c037c440169d995b869046827dbc71263f6e8f3be6d77d4f3229dbd
  - kind: registry
    name: yoke
    version: 0.8.0
    sha: 5f41bb01b8226ef4bfd589436a297c53d118f65921786300e427be8d487695cc
  - kind: registry
    name: yoke-derive
    version: 0.8.0
    sha: 38da3c9736e16c5d3c8c597a9aaa5d1fa565d0532ae05e27c24aa62fb32c0ab6
  - kind: registry
    name: zbus
    version: 5.11.0
    sha: 2d07e46d035fb8e375b2ce63ba4e4ff90a7f73cf2ffb0138b29e1158d2eaadf7
  - kind: registry
    name: zbus_macros
    version: 5.11.0
    sha: 57e797a9c847ed3ccc5b6254e8bcce056494b375b511b3d6edcec0aeb4defaca
  - kind: registry
    name: zbus_names
    version: 4.2.0
    sha: 7be68e64bf6ce8db94f63e72f0c7eb9a60d733f7e0499e628dfab0f84d6bcb97
  - kind: registry
    name: zerocopy
    version: 0.8.27
    sha: 0894878a5fa3edfd6da3f88c4805f4c8558e2b996227a3d864f47fe11e38282c
  - kind: registry
    name: zerocopy-derive
    version: 0.8.27
    sha: 88d2b8d9c68ad2b9e4340d7832716a4d21a22a1154777ad56ea55c51a9cf3831
  - kind: registry
    name: zerofrom
    version: 0.1.6
    sha: 50cc42e0333e05660c3587f3bf9d0478688e15d870fab3346451ce7f8c9fbea5
  - kind: registry
    name: zerofrom-derive
    version: 0.1.6
    sha: d71e5d6e06ab090c67b5e44993ec16b72dcbaabc526db883a360057678b48502
  - kind: registry
    name: zerotrie
    version: 0.2.2
    sha: 36f0bbd478583f79edad978b407914f61b2972f5af6fa089686016be8f9af595
  - kind: registry
    name: zerovec
    version: 0.11.4
    sha: e7aa2bd55086f1ab526693ecbe444205da57e25f4489879da80635a46d90e73b
  - kind: registry
    name: zerovec-derive
    version: 0.11.1
    sha: 5b96237efa0c878c64bd89c436f661be4e46b2f3eff1ebb976f7ef2321d2f58f
  - kind: registry
    name: zvariant
    version: 5.7.0
    sha: 999dd3be73c52b1fccd109a4a81e4fcd20fab1d3599c8121b38d04e1419498db
  - kind: registry
    name: zvariant_derive
    version: 5.7.0
    sha: 6643fd0b26a46d226bd90d3f07c1b5321fe9bb7f04673cb37ac6d6883885b68e
  - kind: registry
    name: zvariant_utils
    version: 3.2.1
    sha: c6949d142f89f6916deca2232cf26a8afacf2b9fdc35ce766105e104478be599
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glycin.bst
- core-deps/libgweather.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libseccomp.bst
