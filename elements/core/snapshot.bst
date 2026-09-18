kind: meson

sources:
- kind: git_repo
  url: gnome:snapshot.git
  track: main
  ref: 51.0-2-g77eb167485ef94512c1f3fc58cda1433f698e38d
- kind: cargo2
  ref:
  - kind: registry
    name: aho-corasick
    version: 1.1.5
    sha: c982642fa9e8606056828ee9a8505737230110bb1099153c79efe865c59d12ba
  - kind: registry
    name: allocator-api2
    version: 0.2.21
    sha: 683d7910e743518b0e34f1186f92494becacb047c7b6bf616c96772180fef923
  - kind: registry
    name: anyhow
    version: 1.0.104
    sha: 330a5ed07fa54e4702c9d6c4174f74427fc0ef6e214bbd677ae50a5099946470
  - kind: registry
    name: ashpd
    version: 0.13.13
    sha: fb8421aaa9644a5faf26735f258b669b15f063313ef8f8e2bdb28912a1a6f111
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
    version: 1.14.0
    sha: c96bf972d85afc50bf5ab8fe2d54d1586b4e0b46c97c50a0c9e71e2f7bcd812a
  - kind: registry
    name: async-io
    version: 2.6.0
    sha: 456b8a8feb6f42d237746d4b3e9a178494627745c3c56c6ea55d92ba50d026fc
  - kind: registry
    name: async-lock
    version: 3.4.2
    sha: 290f7f2596bd5b78a9fec8088ccd89180d7f9f55b94b0576823bbbdc72ee8311
  - kind: registry
    name: async-process
    version: 2.5.0
    sha: fc50921ec0055cdd8a16de48773bfeec5c972598674347252c0399676be7da75
  - kind: registry
    name: async-recursion
    version: 1.1.1
    sha: 3b43422f69d8ff38f95f1b2bb76517c91589a924d1559a0e935d7c8ce0274c11
  - kind: registry
    name: async-signal
    version: 0.2.14
    sha: 52b5aaafa020cf5053a01f2a60e8ff5dccf550f0f77ec54a4e47285ac2bab485
  - kind: registry
    name: async-task
    version: 4.7.1
    sha: 8b75356056920673b02621b35afd0f7dda9306d03c79a30f5c56c44cf256e3de
  - kind: registry
    name: async-trait
    version: 0.1.92
    sha: 82f6aeea286b8eb4dd3431a1be1b59d290ace00f5bfd8e2a159bc2a05e2c1667
  - kind: registry
    name: atomic-waker
    version: 1.1.2
    sha: 1505bd5d3d116872e7271a6d4e16d81d0c8570876c8de68093a09ac269d8aac0
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
    version: 2.13.2
    sha: 3ded4057c258ba199e2d26386d3af3780957ecaee6c4ef4041c6b4b8b97c0b06
  - kind: registry
    name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - kind: registry
    name: blocking
    version: 1.7.0
    sha: a70e4329df6cb94385eed412ec92375c3cdd8a6e502493d1229b6414e4036dfa
  - kind: registry
    name: bumpalo
    version: 3.20.3
    sha: 72f5acc6cb2ba439de613abc23857ec3d78374d8ed5ac84e9d11336e87da8649
  - kind: registry
    name: cairo-rs
    version: 0.22.9
    sha: df683f1d30b457964673a5541a4603208ef95ab6873d2a55871895cf310f3b56
  - kind: registry
    name: cairo-sys-rs
    version: 0.22.9
    sha: ee548131103ad8f698c6725669647b9c757b3b66992dd6a026037596417bee21
  - kind: registry
    name: cc
    version: 1.4.6
    sha: a3eb0f42d6c360dc3f8a821f6bf2fdea7f72bfd36b3076eb0e6d1e9e0752fff4
  - kind: registry
    name: cfg-expr
    version: 0.20.9
    sha: fe4ece8474b5f766c63426647e7b4b316b67431ade1036a8313cee24a03ae917
  - kind: registry
    name: cfg-if
    version: 1.0.5
    sha: 4e7648175b45a9a48536d676f68d918270699102aa8dab5496df06904c914600
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: crossbeam-utils
    version: 0.8.23
    sha: a31eee39dddec8330830986fcd7625edb5a24ec90ea038215273bbc3adb08ac6
  - kind: registry
    name: either
    version: 1.18.0
    sha: 252afb9ae5eaa683babdc6a068b3f5726eb19e05070c731f9b2a23a7c3e8ed34
  - kind: registry
    name: endi
    version: 1.1.1
    sha: 66b7e2430c6dff6a955451e2cfc438f09cea1965a9d6f87f7e3b90decc014099
  - kind: registry
    name: enumflags2
    version: 0.7.12
    sha: 1027f7680c853e056ebcec683615fb6fbbc07dbaa13b4d5d9442b146ded4ecef
  - kind: registry
    name: enumflags2_derive
    version: 0.7.12
    sha: 67c78a4d8fdf9953a5c9d458f9efe940fd97a0cab0941c075a813ac594733827
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
    version: 5.4.2
    sha: 5a23add41df1562121a9393cb065eab5146a1242410f23a644851e90cfd669d2
  - kind: registry
    name: event-listener-strategy
    version: 0.5.4
    sha: 8be9f3dfaaffdae2972880079a491a1a8bb7cbed0b8dd7a347f668b4150a3b93
  - kind: registry
    name: fastrand
    version: 2.5.0
    sha: da7c62ceae207dd37ea5b845da6a0696c799f85e97da1ab5b7910be3c1c80223
  - kind: registry
    name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - kind: registry
    name: find-msvc-tools
    version: 0.1.12
    sha: 3e0f1c7c3a72c66fd80abe965175f7523475c0489a87d3ff9d6e8c87d87a9d2d
  - kind: registry
    name: foldhash
    version: 0.2.0
    sha: 77ce24cb58228fbb8aa041425bb1050850ac19177686ea6e0f41a70416f56fdb
  - kind: registry
    name: formatx
    version: 0.4.2
    sha: c59d4b42303d6fdd5f2e058d7a420103752ec6c4bf260c08abd86a14ea5223a3
  - kind: registry
    name: futures-channel
    version: 0.3.34
    sha: b1f9e3d69d39e4862ffed03ed071a76f9a13ba1d9109d355b0f0aa6b15e393c4
  - kind: registry
    name: futures-core
    version: 0.3.34
    sha: 92d699e522242e69e3003b94ecc1f960f3a5e015aa7c5d7486e65ad01dd94f5e
  - kind: registry
    name: futures-executor
    version: 0.3.34
    sha: 031b47cf1a3c6cc8bc2fc76cd437f521619387907d469316e7c0bc278f1f5432
  - kind: registry
    name: futures-io
    version: 0.3.34
    sha: 53c0fa8157de1303bfffdaa1cc2a673bfffb60102f76b0ef4441659124373fed
  - kind: registry
    name: futures-lite
    version: 2.6.1
    sha: f78e10609fe0e0b3f4157ffab1876319b5b0db102a2c60dc4626306dc46b44ad
  - kind: registry
    name: futures-macro
    version: 0.3.34
    sha: 9fb9654ba8355388abeb8dcb4fc62f511300867002afc858860463bdd9fe0c44
  - kind: registry
    name: futures-task
    version: 0.3.34
    sha: cd417de3d1d015fc3bfd2b1ea46dfc7bab72ef86f1cc7cc9c78e728b34a6d1fd
  - kind: registry
    name: futures-util
    version: 0.3.34
    sha: 0d50a92467f8ba5dd6e3ee5d4bd04d73ab2e4e1c44474a0674821dfce14b79bc
  - kind: registry
    name: g2gen
    version: 1.2.2
    sha: c5a7e0eb46f83a20260b850117d204366674e85d3a908d90865c78df9a6b1dfc
  - kind: registry
    name: g2p
    version: 1.2.2
    sha: 539e2644c030d3bf4cd208cb842d2ce2f80e82e6e8472390bcef83ceba0d80ad
  - kind: registry
    name: g2poly
    version: 1.2.2
    sha: 312d2295c7302019c395cfb90dacd00a82a2eabd700429bba9c7a3f38dbbe11b
  - kind: registry
    name: gdk-pixbuf
    version: 0.22.0
    sha: 25f420376dbee041b2db374ce4573892a36222bb3f6c0c43e24f0d67eae9b646
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.22.9
    sha: 9d5209294ba3775f9b650bf78bfadeba4332089f2329b3e2f6ce0a4957a45bff
  - kind: registry
    name: gdk4
    version: 0.11.4
    sha: d81e2a6c6ecba2aab60633a98df1868b03fa0bfdce8105edc27c1bccf71f0e39
  - kind: registry
    name: gdk4-sys
    version: 0.11.4
    sha: 3d8f608d8d7d229975c4d0d026f5d3071598c4ddab3c5262b0a31840fec78d13
  - kind: registry
    name: gdk4-wayland
    version: 0.11.4
    sha: 32d95828dadc0357dee236cc6a5712808bd894d3217159982592ce24f2b8aaf7
  - kind: registry
    name: gdk4-wayland-sys
    version: 0.11.0
    sha: 653cafb8715f2ac1c56edaf8060d9360ae3acbe3c6fb61b676a2917d42b668cf
  - kind: registry
    name: gdk4-x11
    version: 0.11.4
    sha: 9d892b4cf5a07e90e1390e93cd792975746c68b59f790a2de9e96ce77211ea9a
  - kind: registry
    name: gdk4-x11-sys
    version: 0.11.0
    sha: 24d41f2e28f62378b081288914325d73bddbb6ccbbadb41aa6392afc71d27002
  - kind: registry
    name: getrandom
    version: 0.4.3
    sha: 300e883d756b2e4ec94e02791f39b04b522276138852cfc41d9fb7e904106099
  - kind: registry
    name: gettext-rs
    version: 0.8.0
    sha: 9df5e3fa8c077b15fdfa8ce130e2bc73d663b8aaa6d51b71421b8659980b1d80
  - kind: registry
    name: gettext-sys
    version: 0.27.0
    sha: 4caa7e4460b196107cc1bb2629488e8b6dbb7f34f6683ea6753c4ac22f590785
  - kind: registry
    name: gio
    version: 0.22.9
    sha: b399f4650bb52c051f3fdf49a234e8a27ab5725c8cd774556c55eee64b2c0350
  - kind: registry
    name: gio-sys
    version: 0.22.9
    sha: 6c28739f914c15b87a9856000bed9cbd5b3a8afbca5e982d9a299e1601422cb5
  - kind: registry
    name: glib
    version: 0.22.9
    sha: 18b9b8d350db41f690ec1b87109f202782748bbd8ab2f2ede17cb40d29e2838c
  - kind: registry
    name: glib-macros
    version: 0.22.9
    sha: c9597c68fa7bdf4154a3079642cd21c4dccac0b0bdd2897d82861523bf91e7b9
  - kind: registry
    name: glib-sys
    version: 0.22.9
    sha: 99b38907e67e40dec9b60f858bcada952598719cb512a13eb13d6cdcd16f8295
  - kind: registry
    name: gobject-sys
    version: 0.22.9
    sha: 07595c9ba696bd9819cb6a8df39f08078f3dd679508fe052dd558492c2053834
  - kind: registry
    name: graphene-rs
    version: 0.22.8
    sha: eb856b9c558971c3f13ab692358926da710b046932a4e087aedcc35b040d7dff
  - kind: registry
    name: graphene-sys
    version: 0.22.9
    sha: 97842c7543828f98aa5583aa54fcda28aa84fa2b0f8c556142177f7bbb638057
  - kind: registry
    name: gsk4
    version: 0.11.4
    sha: b867be1c5f14dcb8f552c0eff6e9a9b1da5f8b43943e8efc3a63c889d84952ff
  - kind: registry
    name: gsk4-sys
    version: 0.11.4
    sha: 5b7c7eb2e681ee896646cfb8872b431f24d09f53ba9283289d9b10caa6707088
  - kind: registry
    name: gstreamer
    version: 0.25.3
    sha: ab4527e1b9bae8d29ce137bde5b8eec8ae8f78f13ad00fc6e70cbe227d6ad027
  - kind: registry
    name: gstreamer-audio
    version: 0.25.3
    sha: f97532c3e21287a6e94563a328cce89367324acf8a4489291b40ede2e39163a0
  - kind: registry
    name: gstreamer-audio-sys
    version: 0.25.3
    sha: 2abfb81a073c5c8fb115a3639f47b6430f669ee9fa29123bb0116c9ef59d7d16
  - kind: registry
    name: gstreamer-base
    version: 0.25.3
    sha: c91c94a4d3047d05dd6e1f6d91c74f61f56384c7ea1c9d0c1051572eeeb0138d
  - kind: registry
    name: gstreamer-base-sys
    version: 0.25.3
    sha: 709fbbc623dc066908ba10c43d629c21096508dea04796592a206c4edd864e37
  - kind: registry
    name: gstreamer-pbutils
    version: 0.25.2
    sha: 2230395c2bf062b2538350e6a962b1ff5888f1b29cd65cd1d96dfd5ff74dfb66
  - kind: registry
    name: gstreamer-pbutils-sys
    version: 0.25.2
    sha: eefc07f8f23ca04fae932accefcf22059060b4e3fd41c6445a502cd31c1350b6
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
    name: gtk4
    version: 0.11.4
    sha: 98a0a0466484f64b07b5b8184d43fa46be78eb0b8e04ae4e179af31d770b76d9
  - kind: registry
    name: gtk4-macros
    version: 0.11.4
    sha: 5ac7179400a36a04de039c24206bb841c5596992b907b43b23ee8d5bdc40d00e
  - kind: registry
    name: gtk4-sys
    version: 0.11.4
    sha: 82b8f954786af0b1984425c4446b77f5ff6594346181316be3f850caab1c6f01
  - kind: registry
    name: hashbrown
    version: 0.17.1
    sha: ed5909b6e89a2db4456e54cd5f673791d7eca6732202bbf2a9cc504fe2f9b84a
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: hermit-abi
    version: 0.5.3
    sha: e17592d60ebacc7d5e169f4663c5f84f9161cc90328abcfe8456f41e4dfcb284
  - kind: registry
    name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - kind: registry
    name: indexmap
    version: 2.14.2
    sha: cc4e190f5d26ca7051642629da2c52fc03bde85a03197c99408dcd291734c855
  - kind: registry
    name: itertools
    version: 0.15.0
    sha: 8b4baf93f58d4425749ca49a51c50ebab072c5df6994d08fed93541c331481dc
  - kind: registry
    name: js-sys
    version: 0.3.105
    sha: ce57d20d1ea864ce2ac172ab472d409214f4fd359f0b2a2775abdf522e2af99e
  - kind: registry
    name: kstring
    version: 2.0.2
    sha: 558bf9508a558512042d3095138b1f7b8fe90c5467d94f9f1da28b3731c5dbd1
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: libadwaita
    version: 0.9.2
    sha: 85b9900e67182a4b5b1f157b448d94f0715c8b9770cce21cf000801917f53bfa
  - kind: registry
    name: libadwaita-sys
    version: 0.9.2
    sha: 28d3c27642b389852aa99341bd4a4c19ec6f8a2b63ebdd7f5ba1952198079ccd
  - kind: registry
    name: libc
    version: 0.2.189
    sha: 3eaf3ede3fee6db1a4c2ee091bf8a8b4dccdc6d17f656fb07896ee72867612f2
  - kind: registry
    name: libglycin-gtk4-rebind
    version: 0.2.0
    sha: 897c6ad17e6e3b00b35fe322acb3b885ee89f03169a7baaefe2d808ad6f4c468
  - kind: registry
    name: libglycin-gtk4-rebind-sys
    version: 0.2.0
    sha: 1bdcb0d86235d26251ce2c254d9d1e3cd73e7cc49ccfba6d44539781c91a3818
  - kind: registry
    name: libglycin-rebind
    version: 0.2.0
    sha: dce49a371434ab7715f8eff1fbe618c46834a71be828980e60fc1012aabb111d
  - kind: registry
    name: libglycin-rebind-sys
    version: 0.2.0
    sha: d81df05d922413e5cd8a30f6598ae6c0c0dd835e7cfb8990ef9953b4aa188ed3
  - kind: registry
    name: linux-raw-sys
    version: 0.12.1
    sha: 32a66949e030da00e8c7d4434b251670a91556f4144941d37452769c25d58a53
  - kind: registry
    name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - kind: registry
    name: log
    version: 0.4.34
    sha: f9f8bd3e56ce4dfc153cf470fffbfa98c7620958b312ca5c3a4b8d5181fd13c6
  - kind: registry
    name: lru
    version: 0.18.4
    sha: ff9840bcc50b71349309900da0ce7279aa336ae71d73250b07998932c7d97c25
  - kind: registry
    name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - kind: registry
    name: memchr
    version: 2.8.3
    sha: cf8baf1c55e62ffcace7a9f06f4bd9cd3f0c4beb022d3b367256b91b87513d98
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: muldiv
    version: 1.0.1
    sha: 956787520e75e9bd233246045d19f42fb73242759cc57fba9611d940ae96d4b0
  - kind: registry
    name: nu-ansi-term
    version: 0.50.3
    sha: 7957b9740744892f114936ab4a57b3f487491bbeafaf8083688b16841a4240e5
  - kind: registry
    name: num-integer
    version: 0.1.47
    sha: 7ce2d95d4b3734dc35aa2f45e1aa22cd416814592a4f9d9205e11affd5b8e10b
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
    version: 1.21.4
    sha: 9f7c3e4beb33f85d45ae3e3a1792185706c8e16d043238c593331cc7cd313b50
  - kind: registry
    name: option-operations
    version: 0.6.1
    sha: aca39cf52b03268400c16eeb9b56382ea3c3353409309b63f5c8f0b1faf42754
  - kind: registry
    name: ordered-stream
    version: 0.2.0
    sha: 9aa2b01e1d916879f73a53d01d1d6cee68adbb31d6d9177a8cfce093cced1d50
  - kind: registry
    name: pango
    version: 0.22.9
    sha: 0b2022dbbd82e1c42bd950a6f1df9b98c796e725dce5ec275e03cbf9772e4efa
  - kind: registry
    name: pango-sys
    version: 0.22.9
    sha: ca02d64761b74d56cdd4b437db6d73dc95e6c0d40f27e1c707952c0f09052948
  - kind: registry
    name: parking
    version: 2.2.1
    sha: f38d5652c16fde515bb1ecef450ab0f6a219d619a7274976324d5e377f7dceba
  - kind: registry
    name: pastey
    version: 0.2.3
    sha: 2ee67f1008b1ba2321834326597b8e186293b049a023cdef258527550b9935b4
  - kind: registry
    name: pin-project-lite
    version: 0.2.17
    sha: a89322df9ebe1c1578d689c92318e070967d1042b512afbe49518723f4e6d5cd
  - kind: registry
    name: piper
    version: 0.2.5
    sha: c835479a4443ded371d6c535cbfd8d31ad92c5d23ae9770a61bc155e4992a3c1
  - kind: registry
    name: pkg-config
    version: 0.3.34
    sha: f6b464fbc74e149a392436b17d523f769e057cb6877f6a5c4618bc6f11800548
  - kind: registry
    name: polling
    version: 3.11.0
    sha: 5d0e4f59085d47d8241c88ead0f274e8a0cb551f3625263c05eb8dd897c34218
  - kind: registry
    name: proc-macro-crate
    version: 3.5.0
    sha: e67ba7e9b2b56446f1d419b1d807906278ffa1a658a8a5d8a39dcb1f5a78614f
  - kind: registry
    name: proc-macro2
    version: 1.0.107
    sha: 985e7ec9bb745e6ce6535b544d84d6cd6f7ad8bd711c398938ae983b91a766d9
  - kind: registry
    name: quote
    version: 1.0.47
    sha: 1fbf4db142a473a8d80c26bbf18454ed458bf8d26c8219c331daecfdbd079001
  - kind: registry
    name: r-efi
    version: 6.0.0
    sha: f8dcc9c7d52a811697d2151c701e0d08956f92b0e24136cf4cf27b57a6a0d9bf
  - kind: registry
    name: regex
    version: 1.13.1
    sha: f020237b6c8eed93db2e2cb53c00c60a8e1bc73da7d073199a1180401450218d
  - kind: registry
    name: regex-automata
    version: 0.4.18
    sha: ad8553b9b26413251cbf30e620595c7a41b3887f03da04579c0e6b0d6a06b4b2
  - kind: registry
    name: regex-syntax
    version: 0.8.11
    sha: d6f6ff9a378485b298a5286656da665ba74413d36db0979633275d2e708145d4
  - kind: registry
    name: rqrr
    version: 0.11.0
    sha: 8d084c50c5cfa397a081850da329566c8667b0b6c4e81da16abff1fef27de93b
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: rustix
    version: 1.1.5
    sha: 891efababe418670775f199f0d233d84843c227a0949a883ce15b37c78d6629d
  - kind: registry
    name: rustversion
    version: 1.0.23
    sha: cf54715a573b99ac80df0bc206da022bcd442c974952c7b9720069370852e21f
  - kind: registry
    name: semver
    version: 1.0.28
    sha: 8a7852d02fc848982e0c167ef163aaff9cd91dc640ba85e263cb1ce46fae51cd
  - kind: registry
    name: serde
    version: 1.0.229
    sha: 4148590afebada386688f18773da617792bf2ef03ffc1e4cbd2b1d45b023e0ba
  - kind: registry
    name: serde_core
    version: 1.0.229
    sha: 67dca2c9c51e58a4791a4b1ed58308b39c64224d349a935ab5039aa360942a48
  - kind: registry
    name: serde_derive
    version: 1.0.229
    sha: e7a5d71263a5a7d47b41f6b3f06ba276f10cc18b0931f1799f710578e2309348
  - kind: registry
    name: serde_repr
    version: 0.1.21
    sha: 8d3b1629de253c70a0508c3899572da79ca359fdab27c7920ff00406df418906
  - kind: registry
    name: serde_spanned
    version: 1.1.1
    sha: 6662b5879511e06e8999a8a235d848113e942c9124f211511b16466ee2995f26
  - kind: registry
    name: sharded-slab
    version: 0.1.7
    sha: f40ca3c46823713e0d4209592e8d6e826aa57e928f09752619fc696c499637f6
  - kind: registry
    name: shlex
    version: 2.0.1
    sha: f8fadd59c855ef2080decdef8ff161eb6661b86933c9d82e5ba29dc602a55aba
  - kind: registry
    name: signal-hook-registry
    version: 1.4.8
    sha: c4db69cba1110affc0e9f7bcd48bbf87b3f4fc7c61fc9155afd4c469eb3d6c1b
  - kind: registry
    name: slab
    version: 0.4.12
    sha: 0c790de23124f9ab44544d7ac05d60440adc586479ce501c1d6d7da3cd8c9cf5
  - kind: registry
    name: smallvec
    version: 1.16.1
    sha: ba467056f1b547ed52077911161fc86985becbc60e8e1857c8a144dab0def891
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - kind: registry
    name: syn
    version: 2.0.119
    sha: 872831b642d1a07999a962a351ed35b955ea2cfc8f3862091e2a240a84f17297
  - kind: registry
    name: syn
    version: 3.0.6
    sha: 8593e8e72159ed2257d083c7a454a85cbf854f37a0966d8d483aff8c8a3ebcee
  - kind: registry
    name: system-deps
    version: 7.0.8
    sha: 396a35feb67335377e0251fcbc1092fc85c484bd4e3a7a54319399da127796e7
  - kind: registry
    name: system-deps
    version: 9.0.0
    sha: 8a0dae2cbca1f0ff93795713cfe0a4c02f760e3c0b8ae2ab4ec4045808ff429f
  - kind: registry
    name: target-lexicon
    version: 0.13.5
    sha: adb6935a6f5c20170eeceb1a3835a49e12e19d792f6dd344ccc76a985ca5a6ca
  - kind: registry
    name: temp-dir
    version: 0.1.16
    sha: 83176759e9416cf81ee66cb6508dbfe9c96f20b8b56265a39917551c23c70964
  - kind: registry
    name: tempfile
    version: 3.27.0
    sha: 32497e9a4c7b38532efcdebeef879707aa9f794296a4f0244f6f69e9bc8574bd
  - kind: registry
    name: thiserror
    version: 2.0.20
    sha: ec86235f5fcc2a73650310756d2ac5b138a5780bbbdfae3eeccec992c435ba4f
  - kind: registry
    name: thiserror-impl
    version: 2.0.20
    sha: bc04cd3e1236dd4a98afca4569f2deb3f120e5422a4023be2cb683f8486292af
  - kind: registry
    name: thread_local
    version: 1.1.10
    sha: 1ad99c4c6d32803332c548b1af0540b357b3f5fc0be8f6c6bfe8b2e6ae784070
  - kind: registry
    name: toml
    version: 1.1.6+spec-1.1.0
    sha: 920602543f0911ab71da12c50d59701da54c196d1a2bf5cb4b75667f137a406a
  - kind: registry
    name: toml_datetime
    version: 1.1.1+spec-1.1.0
    sha: 3165f65f62e28e0115a00b2ebdd37eb6f3b641855f9d636d3cd4103767159ad7
  - kind: registry
    name: toml_edit
    version: 0.25.15+spec-1.1.0
    sha: 1340ea94a5856333492c9064b02c778b191dd2c853778d9609debdcdfea3a614
  - kind: registry
    name: toml_parser
    version: 1.1.3+spec-1.1.0
    sha: 1d38ac1cf9b95face32296c0a3ede1fdc270627c9d9c02a7274dd6d960dc4d56
  - kind: registry
    name: toml_writer
    version: 1.1.2+spec-1.1.0
    sha: 7d56353a2a665ad0f41a421187180aab746c8c325620617ad883a99a1cbe66d2
  - kind: registry
    name: tracing
    version: 0.1.44
    sha: 63e71662fa4b2a2c3a26f570f037eb95bb1f85397f3cd8076caed2f026a6d100
  - kind: registry
    name: tracing-attributes
    version: 0.1.31
    sha: 7490cfa5ec963746568740651ac6781f701c9c5ea257c58e057f3ba8cf69e8da
  - kind: registry
    name: tracing-core
    version: 0.1.36
    sha: db97caf9d906fbde555dd62fa95ddba9eecfd14cb388e4f491a66d74cd5fb79a
  - kind: registry
    name: tracing-log
    version: 0.2.0
    sha: ee855f1f400bd0e5c02d150ae5de3840039a3f54b025156404e34c23c03f47c3
  - kind: registry
    name: tracing-subscriber
    version: 0.3.23
    sha: cb7f578e5945fb242538965c2d0b04418d38ec25c79d160cd279bf0731c8d319
  - kind: registry
    name: uds_windows
    version: 1.2.1
    sha: f2f6fb2847f6742cd76af783a2a2c49e9375d0a111c7bef6f71cd9e738c72d6e
  - kind: registry
    name: unicode-ident
    version: 1.0.26
    sha: d245f478577f809a851594d02313b640fb437e0bb33866753cff937863096954
  - kind: registry
    name: uuid
    version: 1.26.1
    sha: 2ef6dac1e96601b4fb3acccccff2139741fcb757cb9a36089bf5be91cfb285ce
  - kind: registry
    name: valuable
    version: 0.1.1
    sha: ba73ea9cf16a25df0c8caa16c51acb937d5712a8429db78a3ee29d5dcacd3a65
  - kind: registry
    name: version-compare
    version: 0.2.1
    sha: 03c2856837ef78f57382f06b2b8563a2f512f7185d732608fd9176cb3b8edf0e
  - kind: registry
    name: wasm-bindgen
    version: 0.2.128
    sha: aecb87a33d3b0c5e3b7aa46336eaf486cffafbd281b195e4c8b80d50df2351bf
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.128
    sha: a690d511e3c1a8b3a55e33511e3c2c00c78415cd23650f32b808627f5696b9ed
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.128
    sha: 411e4887f0071ef2d2164a9d5fdf2d20efbef78fccd3a78b0c10a1dc5295e48a
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.128
    sha: 81941cd78d0c92026c33e5e01312845a4cb1e9af3407f9134b100dd03144103e
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
    name: windows-link
    version: 0.2.1
    sha: f0805222e57f7521d6a62e36fa9163bc891acd422f971defe97d64e70d0a4fe5
  - kind: registry
    name: windows-sys
    version: 0.61.2
    sha: ae137229bcbd6cdf0f7b80a31df61766145077ddf49416a728b02cb3921ff3fc
  - kind: registry
    name: winnow
    version: 1.0.4
    sha: 23b97319f7b8343df12cc98938e5c3eb436064524c8d2b4e30a1d3a36eecdf81
  - kind: registry
    name: x11-dl
    version: 2.21.0
    sha: 38735924fedd5314a6e548792904ed8c6de6636285cb9fec04d5b1db85c1516f
  - kind: registry
    name: zbus
    version: 5.19.0
    sha: 5db4be7c075cb421e4b7ee645541604239bd243ba7c357511f4ff3a74b555907
  - kind: registry
    name: zbus_macros
    version: 5.19.0
    sha: 2990635d09ade6df1868f72f8cac69a876a90981e8bd3c40b1be413f8dc88f40
  - kind: registry
    name: zbus_names
    version: 4.3.4
    sha: d8bf88b4a3ff53e883001e0e0115b297a9d53c31b9c1edd2bfdd853e3428624e
  - kind: registry
    name: zcheapstr
    version: 1.1.0
    sha: d1afec51604565183aeb5c54c20aeab286120d4e4460f7f76e3e8bb8c0d99473
  - kind: registry
    name: zvariant
    version: 5.15.0
    sha: c1d34c27cc6cdd1f458427519dd6b8612f7b7e3f7b9a0b2355d041dda9869147
  - kind: registry
    name: zvariant_derive
    version: 5.15.0
    sha: 864155e69b4352db0c7f374917bf45d1e0c8d17659c8b3dbf9795f3673f8c497
  - kind: registry
    name: zvariant_utils
    version: 4.2.0
    sha: bad0294361a320b694a328460dc73add56c306150f5cb6bfafc44446120008a3
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/rust.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gst-plugin-gtk4.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libglycin-gtk4.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-good.bst
- freedesktop-sdk.bst:components/libseccomp.bst
