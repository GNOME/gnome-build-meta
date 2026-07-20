kind: meson

sources:
- kind: git_repo
  url: gnome:snapshot.git
  track: main
  ref: 51.alpha-5-gecc3a54678e099fedf2ea1252e9de42512eef338
- kind: cargo2
  ref:
  - kind: registry
    name: aho-corasick
    version: 1.1.4
    sha: ddd31a130427c27518df266943a5308ed92d4b226cc639f5a8f1002816174301
  - kind: registry
    name: allocator-api2
    version: 0.2.21
    sha: 683d7910e743518b0e34f1186f92494becacb047c7b6bf616c96772180fef923
  - kind: registry
    name: anyhow
    version: 1.0.103
    sha: 2a4385e2e34eb35d6b3efe798b9eb88096925d87726c0798709bf56d9ed84af3
  - kind: registry
    name: ashpd
    version: 0.13.12
    sha: 281e6645758940dee594495e28807a7672ce40f11ebf4df6c22c4fcd59e2689f
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
    version: 0.1.89
    sha: 9035ad2d096bed7955a320ee7e2230574d28fd3c3a0f186cbea1ff3c7eed5dbb
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
    version: 2.13.0
    sha: b4388bee8683e3d04af747c73422af53102d2bd24d9eadb6cbc100baef4b43f8
  - kind: registry
    name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - kind: registry
    name: blocking
    version: 1.6.2
    sha: e83f8d02be6967315521be875afa792a316e28d57b5a2d401897e2a7921b7f21
  - kind: registry
    name: bumpalo
    version: 3.20.3
    sha: 72f5acc6cb2ba439de613abc23857ec3d78374d8ed5ac84e9d11336e87da8649
  - kind: registry
    name: cairo-rs
    version: 0.22.0
    sha: 5cc8d9aa793480744cd9a0524fef1a2e197d9eaa0f739cde19d16aba530dcb95
  - kind: registry
    name: cairo-sys-rs
    version: 0.22.0
    sha: f8b4985713047f5faee02b8db6a6ef32bbb50269ff53c1aee716d1d195b76d54
  - kind: registry
    name: cc
    version: 1.2.66
    sha: f5d6cac793997bd970000024b2934968efe83b382de4fdcf4fcb46b6ee4ad996
  - kind: registry
    name: cfg-expr
    version: 0.20.8
    sha: fb693542bcafa528e198be0ebd9d3632ca5b7c93dbe7237460e199910835997c
  - kind: registry
    name: cfg-if
    version: 1.0.4
    sha: 9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: crossbeam-utils
    version: 0.8.22
    sha: 61803da095bee82a81bb1a452ecc25d3b2f1416d1897eb86430c6159ef717c17
  - kind: registry
    name: either
    version: 1.16.0
    sha: 91622ff5e7162018101f2fea40d6ebf4a78bbe5a49736a2020649edf9693679e
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
    version: 5.4.1
    sha: e13b66accf52311f30a0db42147dadea9850cb48cd070028831ae5f5d4b856ab
  - kind: registry
    name: event-listener-strategy
    version: 0.5.4
    sha: 8be9f3dfaaffdae2972880079a491a1a8bb7cbed0b8dd7a347f668b4150a3b93
  - kind: registry
    name: fastrand
    version: 2.4.1
    sha: 9f1f227452a390804cdb637b74a86990f2a7d7ba4b7d5693aac9b4dd6defd8d6
  - kind: registry
    name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - kind: registry
    name: find-msvc-tools
    version: 0.1.9
    sha: 5baebc0774151f905a1a2cc41989300b1e6fbb29aff0ceffa1064fdd3088d582
  - kind: registry
    name: foldhash
    version: 0.2.0
    sha: 77ce24cb58228fbb8aa041425bb1050850ac19177686ea6e0f41a70416f56fdb
  - kind: registry
    name: formatx
    version: 0.4.1
    sha: 1144371193022ef5985fbe5edd35ca9112e778393b7ecd60600bcbae2583cc77
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
    name: futures-lite
    version: 2.6.1
    sha: f78e10609fe0e0b3f4157ffab1876319b5b0db102a2c60dc4626306dc46b44ad
  - kind: registry
    name: futures-macro
    version: 0.3.32
    sha: e835b70203e41293343137df5c0664546da5745f82ec9b84d40be8336958447b
  - kind: registry
    name: futures-task
    version: 0.3.32
    sha: 037711b3d59c33004d3856fbdc83b99d4ff37a24768fa1be9ce3538a1cde4393
  - kind: registry
    name: futures-util
    version: 0.3.32
    sha: 389ca41296e6190b48053de0321d02a77f32f8a5d2461dd38762c0593805c6d6
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
    version: 0.22.0
    sha: 48f31b37b1fc4b48b54f6b91b7ef04c18e00b4585d98359dd7b998774bbd91fb
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
    version: 0.7.7
    sha: 5d5857dc1b7f0fee86961de833f434e29494d72af102ce5355738c0664222bdf
  - kind: registry
    name: gettext-sys
    version: 0.26.0
    sha: 4ea859ab0dd7e70ff823032b3e077d03d39c965d68c6c10775add60e999d8ee9
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
    name: graphene-rs
    version: 0.22.8
    sha: eb856b9c558971c3f13ab692358926da710b046932a4e087aedcc35b040d7dff
  - kind: registry
    name: graphene-sys
    version: 0.22.8
    sha: 5c7ffdfde88f3570d3705e0d8a2433e036d387a1f2930bbf47eafcb5f569fd04
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
    version: 0.16.1
    sha: 841d1cc9bed7f9236f321df977030373f4a4163ae1a7dbfe1a51a2c1a51d9100
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
    version: 0.5.2
    sha: fc0fef456e4baa96da950455cd02c081ca953b141298e41db3fc7e36b1da849c
  - kind: registry
    name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - kind: registry
    name: indexmap
    version: 2.14.0
    sha: d466e9454f08e4a911e14806c24e16fba1b4c121d1ea474396f396069cf949d9
  - kind: registry
    name: itertools
    version: 0.15.0
    sha: 8b4baf93f58d4425749ca49a51c50ebab072c5df6994d08fed93541c331481dc
  - kind: registry
    name: js-sys
    version: 0.3.103
    sha: 53b44bfcdb3f8d5837a46dae1ca9660a837176eee74a28b229bc626816589102
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
    version: 0.2.186
    sha: 68ab91017fe16c622486840e4c83c9a37afeff978bd239b5293d61ece587de66
  - kind: registry
    name: libglycin-gtk4-rebind
    version: 0.1.0
    sha: f06eb8570574e13c83b856f422a559704e6c1ed471c20f163e2ca05e505bfa7a
  - kind: registry
    name: libglycin-gtk4-rebind-sys
    version: 0.1.0
    sha: d5942c92d31c0a2a79cc2f64890c46952c91bccf0263d7ac4558bbdd116bab51
  - kind: registry
    name: libglycin-rebind
    version: 0.1.0
    sha: 79a080d11cbd053f65de1a9c7efd096fe2a0fde6244185bd452bb11fdeb98db3
  - kind: registry
    name: libglycin-rebind-sys
    version: 0.1.0
    sha: 65fecb1928f26a984b937deadbb0998f1a0f3c3db7fa2b9a493322e80b1f9f4b
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
    version: 0.4.33
    sha: 0ceec5bc11778974d1bcb055b18002eba7f4b3518b6a0081b3af5f21666da9ad
  - kind: registry
    name: lru
    version: 0.16.4
    sha: 7f66e8d5d03f609abc3a39e6f08e4164ebf1447a732906d39eb9b99b7919ef39
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
    version: 0.22.8
    sha: 5d800d8d0de2ad5d0fb046f5344dbaba14a003cf3dd27cc21d85893d35ea316c
  - kind: registry
    name: pango-sys
    version: 0.22.0
    sha: bbd111a20ca90fedf03e09c59783c679c00900f1d8491cca5399f5e33609d5d6
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
    version: 0.3.33
    sha: 19f132c84eca552bf34cab8ec81f1c1dcc229b811638f9d283dceabe58c5569e
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
    version: 1.0.106
    sha: 8fd00f0bb2e90d81d1044c2b32617f68fcb9fa3bb7640c23e9c748e53fb30934
  - kind: registry
    name: quote
    version: 1.0.46
    sha: dfbc457d0c7a0759a614551b11a6409e5951f6c7537be1f1b7682b9ae9230368
  - kind: registry
    name: r-efi
    version: 6.0.0
    sha: f8dcc9c7d52a811697d2151c701e0d08956f92b0e24136cf4cf27b57a6a0d9bf
  - kind: registry
    name: regex
    version: 1.13.0
    sha: 2a0e75113e14dc5acb068cd0786884f214f1312650a3d36d269f5c4f3cdee8a2
  - kind: registry
    name: regex-automata
    version: 0.4.15
    sha: 1f388202e4b80542a0921078cc23b6333bcf1409c1e3f86404cae4766a6131db
  - kind: registry
    name: regex-syntax
    version: 0.8.11
    sha: d6f6ff9a378485b298a5286656da665ba74413d36db0979633275d2e708145d4
  - kind: registry
    name: rqrr
    version: 0.10.1
    sha: ffbe87d9e8db95652c25ded2418150e00b08c2fde09e23ec15896d2c470c6631
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: rustix
    version: 1.1.4
    sha: b6fe4565b9518b83ef4f91bb47ce29620ca828bd32cb7e408f0062e9930ba190
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
    name: serde_repr
    version: 0.1.20
    sha: 175ee3e80ae9982737ca543e96133087cbd9a485eecc3bc4de9c1a37b47ea59c
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
    name: temp-dir
    version: 0.1.16
    sha: 83176759e9416cf81ee66cb6508dbfe9c96f20b8b56265a39917551c23c70964
  - kind: registry
    name: tempfile
    version: 3.27.0
    sha: 32497e9a4c7b38532efcdebeef879707aa9f794296a4f0244f6f69e9bc8574bd
  - kind: registry
    name: thiserror
    version: 2.0.18
    sha: 4288b5bcbc7920c07a1149a35cf9590a2aa808e0bc1eafaade0b80947865fbc4
  - kind: registry
    name: thiserror-impl
    version: 2.0.18
    sha: ebc4ee7f67670e9b64d05fa4253e753e016c6c95ff35b89b7941d6b856dec1d5
  - kind: registry
    name: thread_local
    version: 1.1.9
    sha: f60246a4944f24f6e018aa17cdeffb7818b76356965d03b07d6a9886e8962185
  - kind: registry
    name: toml
    version: 1.1.2+spec-1.1.0
    sha: 81f3d15e84cbcd896376e6730314d59fb5a87f31e4b038454184435cd57defee
  - kind: registry
    name: toml_datetime
    version: 1.1.1+spec-1.1.0
    sha: 3165f65f62e28e0115a00b2ebdd37eb6f3b641855f9d636d3cd4103767159ad7
  - kind: registry
    name: toml_edit
    version: 0.25.12+spec-1.1.0
    sha: d2153edc6955a6c354fad8f5efd38b6a8769bdccf9fe50f8e1329f81b0baa5d7
  - kind: registry
    name: toml_parser
    version: 1.1.2+spec-1.1.0
    sha: a2abe9b86193656635d2411dc43050282ca48aa31c2451210f4202550afb7526
  - kind: registry
    name: toml_writer
    version: 1.1.1+spec-1.1.0
    sha: 756daf9b1013ebe47a8776667b466417e2d4c5679d441c26230efd9ef78692db
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
    version: 1.0.24
    sha: e6e4313cd5fcd3dad5cafa179702e2b244f760991f45397d14d4ebf38247da75
  - kind: registry
    name: uuid
    version: 1.23.4
    sha: bf80a72845275afea99e7f2b434723d3bc7e38470fcd1c7ed39a599c73319a53
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
    version: 1.0.3
    sha: 0592e1c9d151f854e6fd382574c3a0855250e1d9b2f99d9281c6e6391af352f1
  - kind: registry
    name: x11-dl
    version: 2.21.0
    sha: 38735924fedd5314a6e548792904ed8c6de6636285cb9fec04d5b1db85c1516f
  - kind: registry
    name: zbus
    version: 5.17.0
    sha: a28b97f866896a4be7aefd2b5a8e01bb6773d19a775d54ab28b4d094b9a4480e
  - kind: registry
    name: zbus_macros
    version: 5.17.0
    sha: 5e05ad887425eecf5e8384dc2406a4a9313eb73468712fc1cdea362eb4fe0469
  - kind: registry
    name: zbus_names
    version: 4.3.3
    sha: 1039ca249fee9559680f3a9f05b55e0761fee51af4f6c1e7d8c1f31e549721d2
  - kind: registry
    name: zvariant
    version: 5.13.0
    sha: 7cf057bb00bf5c9ad77abb6147b0ca4818236a1858416e9d988e40d6322fefa7
  - kind: registry
    name: zvariant_derive
    version: 5.13.0
    sha: 8118ca6bda77bfc0ab51d660db0c955f2505eef854c9a449435bccb616933b31
  - kind: registry
    name: zvariant_utils
    version: 3.5.0
    sha: 90cb9383f9b45290407a1258b202d3f8f01db719eb60b4e4055c6375af4fc7c7
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
