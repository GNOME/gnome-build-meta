kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:jsparber/setup.git
  track: disks
  ref: a42607092829e1ab71b7bed8aaa9520c6ea36dda
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
    version: 1.0.100
    sha: a23eb6b1614318a8071c9b2521f36b424b2c83db5eb3a0fead4a6c0809af6e61
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
    name: async-io
    version: 2.6.0
    sha: 456b8a8feb6f42d237746d4b3e9a178494627745c3c56c6ea55d92ba50d026fc
  - kind: registry
    name: async-lock
    version: 3.4.1
    sha: 5fd03604047cee9b6ce9de9f70c6cd540a0520c813cbd49bae61f33ab80ed1dc
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
    version: 0.2.13
    sha: 43c070bbf59cd3570b6b2dd54cd772527c7c3620fce8be898406dd3ed6adc64c
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
    name: bumpalo
    version: 3.19.0
    sha: 46c5e41b57b8bba42a04676d81cb89e9ee8e859a1a66f80a5a72e1cb76b34d43
  - kind: registry
    name: byteorder
    version: 1.5.0
    sha: 1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b
  - kind: registry
    name: bytes
    version: 1.10.1
    sha: d71b6127be86fdcfddb610f7182ac57211d4b18a3e9c82eb2d17662f2227ad6a
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
    version: 1.2.41
    sha: ac9fe6cdbb24b6ade63616c0a0688e45bb56732262c158df3c0c4bea4ca47cb7
  - kind: registry
    name: cfg-expr
    version: 0.20.3
    sha: 1a2c5f3bf25ec225351aa1c8e230d04d880d3bd89dea133537dafad4ae291e5c
  - kind: registry
    name: cfg-if
    version: 1.0.4
    sha: 9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801
  - kind: registry
    name: cfg_aliases
    version: 0.2.1
    sha: 613afe47fcd5fac7ccf1db93babcb082c5994d996f20b8b159f2ad1658eb5724
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: constcat
    version: 0.6.1
    sha: 136d3e02915a2cea4d74caa8681e2d44b1c3254bdbf17d11d41d587ff858832c
  - kind: registry
    name: crc32fast
    version: 1.5.0
    sha: 9481c1c90cbf2ac953f07c8d4a58aa3945c425b7185c9154d67a65e4230da511
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
    version: 2.3.0
    sha: 37909eebbb50d72f9059c3b6d82c0463f2ff062c9e95845c43a6c9c0355411be
  - kind: registry
    name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - kind: registry
    name: find-msvc-tools
    version: 0.1.4
    sha: 52051878f80a721bb68ebfbc930e07b65ba72f2da88968ea5c06fd6ca3d3a127
  - kind: registry
    name: flate2
    version: 1.1.4
    sha: dc5a4e564e38c699f2880d3fda590bedc2e69f3f84cd48b457bd892ce61d0aa9
  - kind: registry
    name: formatx
    version: 0.2.4
    sha: d8866fac38f53fc87fa3ae1b09ddd723e0482f8fa74323518b4c59df2c55a00a
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
    version: 2.6.1
    sha: f78e10609fe0e0b3f4157ffab1876319b5b0db102a2c60dc4626306dc46b44ad
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
  - kind: git
    commit: a4eb9072bef8cfe72dc30a023d72b818f9c007d5
    repo: gnome_gitlab:jsparber/gnome-desktop-rs.git
    query:
      branch: update_everything
    name: gdesktop-enums
    version: 0.4.0
  - kind: git
    commit: a4eb9072bef8cfe72dc30a023d72b818f9c007d5
    repo: gnome_gitlab:jsparber/gnome-desktop-rs.git
    query:
      branch: update_everything
    name: gdesktop-enums-sys
    version: 0.4.0
  - kind: registry
    name: gdk-pixbuf
    version: 0.21.2
    sha: 2a3c64459f569154f37616fc28923bfac490d4aaa134aaf5eca58a2c0c13050f
  - kind: git
    commit: 9969d4f7afb760e57f97371265cf7955d4821995
    repo: github:gtk-rs/gtk-rs-core
    query:
      branch: main
    name: gdk-pixbuf
    version: 0.22.0
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.21.2
    sha: 3854ef7a6a8b8f3b4013a01d5f9cb0d1794ec4e810c6cb4e2cc6d980f1baf724
  - kind: git
    commit: 9969d4f7afb760e57f97371265cf7955d4821995
    repo: github:gtk-rs/gtk-rs-core
    query:
      branch: main
    name: gdk-pixbuf-sys
    version: 0.22.0
  - kind: registry
    name: gdk4
    version: 0.10.1
    sha: c7e292649dc26e3440c508a00f42ab39156008320dd6e962d63eaf626ba4d7f0
  - kind: registry
    name: gdk4-sys
    version: 0.10.1
    sha: f4f3174fa4f1e0bf2a7e04469b65db8f4d1db89a6f5cdc57727b14e97ce438cf
  - kind: registry
    name: getrandom
    version: 0.3.4
    sha: 899def5c37c4fd7b2664648c28120ecec138e4d395b459e5ca34f9cce2dd77fd
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
    version: 0.21.2
    sha: ed68efc12b748a771be2dccc49480d8584004382967c98323245fc3c38b74a42
  - kind: git
    commit: 9969d4f7afb760e57f97371265cf7955d4821995
    repo: github:gtk-rs/gtk-rs-core
    query:
      branch: main
    name: gio
    version: 0.22.0
  - kind: registry
    name: gio-sys
    version: 0.21.2
    sha: 171ed2f6dd927abbe108cfd9eebff2052c335013f5879d55bab0dc1dee19b706
  - kind: git
    commit: 9969d4f7afb760e57f97371265cf7955d4821995
    repo: github:gtk-rs/gtk-rs-core
    query:
      branch: main
    name: gio-sys
    version: 0.22.0
  - kind: registry
    name: glib
    version: 0.21.3
    sha: e1f2cbc4577536c849335878552f42086bfd25a8dcd6f54a18655cf818b20c8f
  - kind: git
    commit: 9969d4f7afb760e57f97371265cf7955d4821995
    repo: github:gtk-rs/gtk-rs-core
    query:
      branch: main
    name: glib
    version: 0.22.0
  - kind: registry
    name: glib-macros
    version: 0.21.2
    sha: 55eda916eecdae426d78d274a17b48137acdca6fba89621bd3705f2835bc719f
  - kind: git
    commit: 9969d4f7afb760e57f97371265cf7955d4821995
    repo: github:gtk-rs/gtk-rs-core
    query:
      branch: main
    name: glib-macros
    version: 0.22.0
  - kind: registry
    name: glib-sys
    version: 0.21.2
    sha: d09d3d0fddf7239521674e57b0465dfbd844632fec54f059f7f56112e3f927e1
  - kind: git
    commit: 9969d4f7afb760e57f97371265cf7955d4821995
    repo: github:gtk-rs/gtk-rs-core
    query:
      branch: main
    name: glib-sys
    version: 0.22.0
  - kind: registry
    name: glob
    version: 0.3.3
    sha: 0cc23270f6e1808e30a928bdc84dea0b9b4136a8bc82338574f23baf47bbd280
  - kind: git
    commit: a4eb9072bef8cfe72dc30a023d72b818f9c007d5
    repo: gnome_gitlab:jsparber/gnome-desktop-rs.git
    query:
      branch: update_everything
    name: gnome-desktop
    version: 0.5.0
  - kind: git
    commit: a4eb9072bef8cfe72dc30a023d72b818f9c007d5
    repo: gnome_gitlab:jsparber/gnome-desktop-rs.git
    query:
      branch: update_everything
    name: gnome-desktop-sys
    version: 0.5.0
  - kind: registry
    name: gobject-sys
    version: 0.21.2
    sha: 538e41d8776173ec107e7b0f2aceced60abc368d7e1d81c1f0e2ecd35f59080d
  - kind: git
    commit: 9969d4f7afb760e57f97371265cf7955d4821995
    repo: github:gtk-rs/gtk-rs-core
    query:
      branch: main
    name: gobject-sys
    version: 0.22.0
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
    name: gvdb
    version: 0.9.0
    sha: b9d94c8a63f94bbc35cf63e105791c5992bd60d4516d41fe5bf3db8d10b30b43
  - kind: registry
    name: gvdb-macros
    version: 0.1.15
    sha: e9ead18b3ca995ee40dc08121c75ffc2d8695fbd1a1ced48c3632c7c1ce00b2c
  - kind: registry
    name: hash32
    version: 0.3.1
    sha: 47d60b12902ba28e2730cd37e95b8c9223af2808df9e902d4df49588d1470606
  - kind: registry
    name: hashbrown
    version: 0.16.0
    sha: 5419bdc4f6a9207fbeba6d11b604d481addf78ecd10c11ad51e76c2f6482748d
  - kind: registry
    name: heapless
    version: 0.8.0
    sha: 0bfb9eb618601c89945a70e254898da93b13be0388091d42117462b265bb3fad
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
    version: 2.11.4
    sha: 4b0f83760fb341a774ed326568e19f5a863af4a952def8c39f9ab92fd95b88e5
  - kind: registry
    name: itoa
    version: 1.0.15
    sha: 4a5f13b858c8d314ee3e8f639011f7ccefe71f97f96e50151fb991f267928e2c
  - kind: registry
    name: js-sys
    version: 0.3.81
    sha: ec48937a97411dcb524a265206ccd4c90bb711fca92b2792c407f268825b9305
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: libadwaita
    version: 0.8.0
    sha: 4df6715d1257bd8c093295b77a276ed129d73543b10304fec5829ced5d5b7c41
  - kind: registry
    name: libadwaita-sys
    version: 0.8.0
    sha: fdf8950090cc180250cdb1ff859a39748feeda7a53a9f28ead3a17a14cc37ae2
  - kind: registry
    name: libappstream
    version: 0.4.0
    sha: 9fa0672e2ed0c5e37f614cf6fc287453398f604b3569a6c777cb1f7f20ce1786
  - kind: registry
    name: libappstream-sys
    version: 0.4.0
    sha: 342c5a04bd298e1c8dd4c3e872417d11076020739b2f8948dc9affdb19ac6317
  - kind: registry
    name: libc
    version: 0.2.177
    sha: 2874a2af47a2325c2001a6e6fad9b16a53b802102b528163885171cf92b15976
  - kind: registry
    name: linux-raw-sys
    version: 0.11.0
    sha: df1d3c3b53da64cf5760482273a98e575c651a67eec7f77df96b5b642de8f039
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
    name: mayheap
    version: 0.2.0
    sha: acbc2f58104ec9b149972c3b4108ece000cdad4f6df7c2e691fea572aadeba62
  - kind: registry
    name: memchr
    version: 2.7.6
    sha: f52b00d39961fc5b2736ea853c9cc86238e165017a493d1d5c8eac6bdc4cc273
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: miniz_oxide
    version: 0.8.9
    sha: 1fa76a2c86f704bdb222d66965fb3d63269ce38518b83cb0575fca855ebb6316
  - kind: registry
    name: mio
    version: 1.1.0
    sha: 69d83b0086dc8ecf3ce9ae2874b2d1290252e2a30720bea58a5c6639b0092873
  - kind: registry
    name: nix
    version: 0.30.1
    sha: 74523f3a35e05aba87a1d978330aef40f67b0304ac79c1c00b294c9830543db6
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
    version: 3.11.0
    sha: 5d0e4f59085d47d8241c88ead0f274e8a0cb551f3625263c05eb8dd897c34218
  - kind: registry
    name: proc-macro-crate
    version: 3.4.0
    sha: 219cb19e96be00ab2e37d6e299658a0cfa83e52429179969b0f0121b4ac46983
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
    version: 1.0.41
    sha: ce25767e7b499d1b604768e7cde645d14cc8584231ea6b295e9c9eb22c02e1d1
  - kind: registry
    name: r-efi
    version: 5.3.0
    sha: 69cdb34c158ceb288df11e18b4bd39de994f6657d83847bdffdbd7f346754b0f
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
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: rustix
    version: 1.1.2
    sha: cd15f8a2c5551a84d56efdc1cd049089e409ac19a3072d5037a17fd70719ff3e
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
    name: semver
    version: 1.0.27
    sha: d767eb0aabc880b29956c35734170f26ed551a859dbd361d140cdbeca61ab1e2
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
    name: serde_repr
    version: 0.1.20
    sha: 175ee3e80ae9982737ca543e96133087cbd9a485eecc3bc4de9c1a37b47ea59c
  - kind: registry
    name: serde_spanned
    version: 1.0.3
    sha: e24345aa0fe688594e73770a5f6d1b216508b4f93484c0026d521acd30134392
  - kind: registry
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
  - kind: registry
    name: signal-hook-registry
    version: 1.4.6
    sha: b2a4719bff48cee6b39d12c020eeb490953ad2443b7055bd0b21fca26bd8c28b
  - kind: registry
    name: simd-adler32
    version: 0.3.7
    sha: d66dc143e6b11c1eddc06d5c423cfc97062865baf299914ab64caa38182078fe
  - kind: registry
    name: slab
    version: 0.4.11
    sha: 7a2ae44ef20feb57a68b23d846850f861394c2e02dc425a50098ae8c90267589
  - kind: registry
    name: smallvec
    version: 1.15.1
    sha: 67b1b7a3b5fe4f1376887184045fcf45c69e92af734b7aaddc05fb777b6fbd03
  - kind: registry
    name: socket2
    version: 0.6.1
    sha: 17129e116933cf371d018bb80ae557e889637989d8638274fb25622827b03881
  - kind: registry
    name: stable_deref_trait
    version: 1.2.1
    sha: 6ce2be8dc25455e1f91df71bfa12ad37d7af1092ae736f3a6cd0e37bc7810596
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
    version: 7.0.6
    sha: c236d79f20808ca0084bfcd1a2fd6c686216b7f7a0c4fc39deb0cbf5eaab3713
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
    version: 3.23.0
    sha: 2d31c77bdf42a745371d260a26ca7163f1e0924b64afa0b688e61b5a9fa02f16
  - kind: registry
    name: thiserror
    version: 2.0.17
    sha: f63587ca0f12b72a0600bcba1d40081f830876000bb46dd2337a3051618f4fc8
  - kind: registry
    name: thiserror-impl
    version: 2.0.17
    sha: 3ff15c8ecd7de3849db632e14d18d2571fa09dfc5ed93479bc4485c7a517c913
  - kind: registry
    name: tokio
    version: 1.48.0
    sha: ff360e02eab121e0bc37a2d3b4d4dc622e6eda3a8e5253d5435ecf5bd4c68408
  - kind: registry
    name: tokio-stream
    version: 0.1.17
    sha: eca58d7bba4a75707817a2c44174253f9236b2d5fbd055602e9d5c07c139a047
  - kind: registry
    name: tokio-util
    version: 0.7.17
    sha: 2efa149fe76073d6e8fd97ef4f4eca7b67f599660115591483572e406e165594
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
    name: udisks2
    version: 0.3.1
    sha: ce19d0471b9df48c9625576e9f2a44b53fa680cfed49cbd7f89904d48c280620
  - kind: registry
    name: uds_windows
    version: 1.1.0
    sha: 89daebc3e6fd160ac4aa9fc8b3bf71e1f74fbf92367ae71fb83a037e8bf164b9
  - kind: registry
    name: unicode-ident
    version: 1.0.19
    sha: f63a545481291138910575129486daeaf8ac54aee4387fe7906919f7830c7d9d
  - kind: registry
    name: uuid
    version: 1.18.1
    sha: 2f87b8aa10b915a06587d0dec516c282ff295b475d94abf425d62b57710070a2
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
    version: 0.11.1+wasi-snapshot-preview1
    sha: ccf3ec651a847eb01de73ccad15eb7d99f80485de043efb2f370cd654f4ea44b
  - kind: registry
    name: wasip2
    version: 1.0.1+wasi-0.2.4
    sha: 0562428422c63773dad2c345a1882263bbf4d65cf3f42e90921f787ef5ad58e7
  - kind: registry
    name: wasm-bindgen
    version: 0.2.104
    sha: c1da10c01ae9f1ae40cbfac0bac3b1e724b320abfcf52229f80b547c0d250e2d
  - kind: registry
    name: wasm-bindgen-backend
    version: 0.2.104
    sha: 671c9a5a66f49d8a47345ab942e2cb93c7d1d0339065d4f8139c486121b43b19
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.104
    sha: 7ca60477e4c59f5f2986c50191cd972e3a50d8a95603bc9434501cf156a9a119
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.104
    sha: 9f07d2f20d4da7b26400c9f4a0511e6e0345b040694e8a75bd41d578fa4421d7
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.104
    sha: bad67dc8b2a1a6e5448428adec4c3e84c43e561d8c9ee8a9e5aabeb193ec41d1
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
    version: 0.60.2
    sha: f2f500e4d28234f72040990ec9d39e3a6b950f9f22d3dba18416c35882612bcb
  - kind: registry
    name: windows-sys
    version: 0.61.2
    sha: ae137229bcbd6cdf0f7b80a31df61766145077ddf49416a728b02cb3921ff3fc
  - kind: registry
    name: windows-targets
    version: 0.53.5
    sha: 4945f9f551b88e0d65f3db0bc25c33b8acea4d9e41163edf90dcd0b19f9069f3
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.53.1
    sha: a9d8416fa8b42f5c947f8482c43e7d89e73a173cead56d044f6a56104a6d1b53
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.53.1
    sha: b9d782e804c2f632e395708e99a94275910eb9100b2114651e04744e9b125006
  - kind: registry
    name: windows_i686_gnu
    version: 0.53.1
    sha: 960e6da069d81e09becb0ca57a65220ddff016ff2d6af6a223cf372a506593a3
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.53.1
    sha: fa7359d10048f68ab8b09fa71c3daccfb0e9b559aed648a8f95469c27057180c
  - kind: registry
    name: windows_i686_msvc
    version: 0.53.1
    sha: 1e7ac75179f18232fe9c285163565a57ef8d3c89254a30685b57d83a38d326c2
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.53.1
    sha: 9c3842cdd74a865a8066ab39c8a7a473c0778a3f29370b5fd6b4b9aa7df4a499
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.53.1
    sha: 0ffa179e2d07eee8ad8f57493436566c7cc30ac536a3379fdf008f47f6bb7ae1
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.53.1
    sha: d6bbff5f0aada427a1e5a6da5f1f98158182f26556f345ac9e04d36d0ebed650
  - kind: registry
    name: winnow
    version: 0.7.13
    sha: 21a0236b59786fed61e2a80582dd500fe61f18b5dca67a4a067d0bc9039339cf
  - kind: registry
    name: wit-bindgen
    version: 0.46.0
    sha: f17a85883d4e6d00e8a97c586de764dabcc06133f7f1d55dce5cdc070ad7fe59
  - kind: registry
    name: zbus
    version: 5.12.0
    sha: b622b18155f7a93d1cd2dc8c01d2d6a44e08fb9ebb7b3f9e6ed101488bad6c91
  - kind: registry
    name: zbus_macros
    version: 5.12.0
    sha: 1cdb94821ca8a87ca9c298b5d1cbd80e2a8b67115d99f6e4551ac49e42b6a314
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
    name: zlink
    version: 0.1.1
    sha: 7634ca4b6cb345152ca928eeccac58a4465e5b85729cfb84688ea17fd20ace01
  - kind: registry
    name: zlink-core
    version: 0.1.1
    sha: 51e1361a1fe6c1b7ce248a238a741c4859ccb2e0e2c7ad1376eff90a0ccf522e
  - kind: registry
    name: zlink-macros
    version: 0.1.1
    sha: e0c273db1b8e6272de24254a6595049b4c56d50f602fef4df8308cf4d19065ee
  - kind: registry
    name: zlink-tokio
    version: 0.1.1
    sha: 8b8fb85421076d375b3cb49c76b9c7de75264c0383f531e4a8ec4994b51c7808
  - kind: registry
    name: zvariant
    version: 5.8.0
    sha: 2be61892e4f2b1772727be11630a62664a1826b62efa43a6fe7449521cb8744c
  - kind: registry
    name: zvariant_derive
    version: 5.8.0
    sha: da58575a1b2b20766513b1ec59d8e2e68db2745379f961f86650655e862d2006
  - kind: registry
    name: zvariant_utils
    version: 3.2.1
    sha: c6949d142f89f6916deca2232cf26a8afacf2b9fdc35ce766105e104478be599
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- core/gnome-desktop.bst
- sdk/blueprint-compiler.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/lvm2.bst
