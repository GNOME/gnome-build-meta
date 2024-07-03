kind: meson

sources:
- kind: git_repo
  url: gnome:loupe.git
  track: main
  ref: 47.alpha-6-gecc32af66490a63192a296e65743519f936e3caa
- kind: cargo2

  ref:
  - kind: registry
    name: addr2line
    version: 0.22.0
    sha: 6e4503c46a5c0c7844e948c9a4d6acd9f50cccb4de1c48eb9e291ea17470c678
  - kind: registry
    name: adler
    version: 1.0.2
    sha: f26201604c87b1e01bd3d98f8d5d9a8fcbb815e8cedb41ffccbeb4bf593a35fe
  - kind: registry
    name: aho-corasick
    version: 1.1.3
    sha: 8e60d3430d3a69478ad0993f19238d2df97c507009a52b3c10addcd7f6bcb916
  - kind: registry
    name: anstream
    version: 0.6.14
    sha: 418c75fa768af9c03be99d17643f93f79bbba589895012a80e3452a19ddda15b
  - kind: registry
    name: anstyle
    version: 1.0.7
    sha: 038dfcf04a5feb68e9c60b21c9625a54c2c0616e79b72b0fd87075a056ae1d1b
  - kind: registry
    name: anstyle-parse
    version: 0.2.4
    sha: c03a11a9034d92058ceb6ee011ce58af4a9bf61491aa7e1e59ecd24bd40d22d4
  - kind: registry
    name: anstyle-query
    version: 1.1.0
    sha: ad186efb764318d35165f1758e7dcef3b10628e26d41a44bc5550652e6804391
  - kind: registry
    name: anstyle-wincon
    version: 3.0.3
    sha: 61a38449feb7068f52bb06c12759005cf459ee52bb4adc1d5a7c4322d716fb19
  - kind: registry
    name: anyhow
    version: 1.0.86
    sha: b3d1d046238990b9cf5bcde22a3fb3584ee5cf65fb2765f454ed428c7a0063da
  - kind: registry
    name: arc-swap
    version: 1.7.1
    sha: 69f7f8c3906b62b754cd5326047894316021dcfe5a194c8ea52bdd94934a3457
  - kind: git
    commit: 8c147159f4de1d2e7c8fee8f040810509f218ed3
    repo: https://github.com/sophie-h/ashpd.git
    query:
      branch: wip/sophie-h/gtk-rs-0.20
    name: ashpd
    version: 0.9.0
  - kind: registry
    name: async-broadcast
    version: 0.7.1
    sha: 20cd0e2e25ea8e5f7e9df04578dc6cf5c83577fd09b1a46aaf5c85e1c33f2a7e
  - kind: registry
    name: async-channel
    version: 2.3.1
    sha: 89b47800b0be77592da0afd425cc03468052844aff33b84e33cc696f64e77b6a
  - kind: registry
    name: async-executor
    version: 1.12.0
    sha: c8828ec6e544c02b0d6691d21ed9f9218d0384a82542855073c2a3f58304aaf0
  - kind: registry
    name: async-fs
    version: 2.1.2
    sha: ebcd09b382f40fcd159c2d695175b2ae620ffa5f3bd6f664131efff4e8b9e04a
  - kind: registry
    name: async-io
    version: 2.3.3
    sha: 0d6baa8f0178795da0e71bc42c9e5d13261aac7ee549853162e66a241ba17964
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
    version: 2.2.3
    sha: f7eda79bbd84e29c2b308d1dc099d7de8dcc7035e48f4bf5dc4a531a44ff5e2a
  - kind: registry
    name: async-recursion
    version: 1.1.1
    sha: 3b43422f69d8ff38f95f1b2bb76517c91589a924d1559a0e935d7c8ce0274c11
  - kind: registry
    name: async-signal
    version: 0.2.8
    sha: 794f185324c2f00e771cd9f1ae8b5ac68be2ca7abb129a87afd6e86d228bc54d
  - kind: registry
    name: async-task
    version: 4.7.1
    sha: 8b75356056920673b02621b35afd0f7dda9306d03c79a30f5c56c44cf256e3de
  - kind: registry
    name: async-trait
    version: 0.1.80
    sha: c6fa2087f2753a7da8cc1c0dbfcf89579dd57458e36769de5ac750b4671737ca
  - kind: registry
    name: atomic-waker
    version: 1.1.2
    sha: 1505bd5d3d116872e7271a6d4e16d81d0c8570876c8de68093a09ac269d8aac0
  - kind: registry
    name: autocfg
    version: 1.3.0
    sha: 0c4b4d0bd25bd0b74681c0ad21497610ce1b7c91b1022cd21c80c6fbdd9476b0
  - kind: registry
    name: backtrace
    version: 0.3.73
    sha: 5cc23269a4f8976d0a4d2e7109211a419fe30e8d88d677cd60b6bc79c5732e0a
  - kind: registry
    name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - kind: registry
    name: bitflags
    version: 2.6.0
    sha: b048fb63fd8b5923fc5aa7b340d8e156aec7ec02f0c78fa8a6ddc2613f6f71de
  - kind: registry
    name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - kind: registry
    name: block-buffer
    version: 0.10.4
    sha: 3078c7629b62d3f0439517fa394996acacc5cbc91c5a20d8c658e77abd503a71
  - kind: registry
    name: blocking
    version: 1.6.1
    sha: 703f41c54fc768e63e091340b424302bb1c29ef4aa0c7f10fe849dfb114d29ea
  - kind: registry
    name: bytemuck
    version: 1.16.1
    sha: b236fc92302c97ed75b38da1f4917b5cdda4984745740f153a5d3059e48d725e
  - kind: registry
    name: byteorder
    version: 1.5.0
    sha: 1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core.git
    query:
      branch: master
    name: cairo-rs
    version: 0.20.0
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core.git
    query:
      branch: master
    name: cairo-sys-rs
    version: 0.20.0
  - kind: registry
    name: cc
    version: 1.0.101
    sha: ac367972e516d45567c7eafc73d24e1c193dcf200a8d94e9db7b3d38b349572d
  - kind: registry
    name: cfg-expr
    version: 0.15.8
    sha: d067ad48b8650848b989a59a86c6c36a995d02d2bf778d45c3c5d57bc2718f02
  - kind: registry
    name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - kind: registry
    name: cfg_aliases
    version: 0.1.1
    sha: fd16c4719339c4530435d38e511904438d07cce7950afa3718a84ac36c10e89e
  - kind: registry
    name: cfg_aliases
    version: 0.2.1
    sha: 613afe47fcd5fac7ccf1db93babcb082c5994d996f20b8b159f2ad1658eb5724
  - kind: registry
    name: colorchoice
    version: 1.0.1
    sha: 0b6a852b24ab71dffc585bcb46eaf7959d175cb865a7152e35b348d1b2960422
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: cpufeatures
    version: 0.2.12
    sha: 53fe5e26ff1b7aef8bca9c6080520cfb8d9333c7568e1829cef191a9723e5504
  - kind: registry
    name: crc32fast
    version: 1.4.2
    sha: a97769d94ddab943e4510d138150169a2758b5ef3eb191a9ee688de3e23ef7b3
  - kind: registry
    name: crossbeam-utils
    version: 0.8.20
    sha: 22ec99545bb0ed0ea7bb9b8e1e9122ea386ff8a48c0922e43f36d45ab09e0e80
  - kind: registry
    name: crypto-common
    version: 0.1.6
    sha: 1bfb12502f3fc46cca1bb51ac28df9d618d813cdc3d2f25b9fe775a34af26bb3
  - kind: registry
    name: cstr
    version: 0.2.12
    sha: 68523903c8ae5aacfa32a0d9ae60cadeb764e1da14ee0d26b1f3089f13a54636
  - kind: registry
    name: digest
    version: 0.10.7
    sha: 9ed9a281f7bc9b7576e61468ba615a66a5c8cfdff42420a70aa82701a3b1e292
  - kind: registry
    name: dlib
    version: 0.5.2
    sha: 330c60081dcc4c72131f8eb70510f1ac07223e5d4163db481a04a0befcffa412
  - kind: registry
    name: dunce
    version: 1.0.4
    sha: 56ce8c6da7551ec6c462cbaf3bfbc75131ebbfa1c944aeaa9dab51ca1c5f0c3b
  - kind: registry
    name: endi
    version: 1.1.0
    sha: a3d8a32ae18130a3c84dd492d4215c3d913c3b07c6b63c2eb3eb7ff1101ab7bf
  - kind: registry
    name: enumflags2
    version: 0.7.10
    sha: d232db7f5956f3f14313dc2f87985c58bd2c695ce124c8cdd984e08e15ac133d
  - kind: registry
    name: enumflags2_derive
    version: 0.7.10
    sha: de0d48a183585823424a4ce1aa132d174a6a81bd540895822eb4c8373a8e49e8
  - kind: registry
    name: env_filter
    version: 0.1.0
    sha: a009aa4810eb158359dda09d0c87378e4bbb89b5a801f016885a4707ba24f7ea
  - kind: registry
    name: env_logger
    version: 0.11.3
    sha: 38b35839ba51819680ba087cd351788c9a3c476841207e0b8cee0b04722343b9
  - kind: registry
    name: equivalent
    version: 1.0.1
    sha: 5443807d6dff69373d433ab9ef5378ad8df50ca6298caf15de6e52e24aaf54d5
  - kind: registry
    name: errno
    version: 0.3.9
    sha: 534c5cf6194dfab3db3242765c03bbe257cf92f22b38f6bc0c58d59108a820ba
  - kind: registry
    name: event-listener
    version: 5.3.1
    sha: 6032be9bd27023a771701cc49f9f053c751055f71efb2e0ae5c15809093675ba
  - kind: registry
    name: event-listener-strategy
    version: 0.5.2
    sha: 0f214dc438f977e6d4e3500aaa277f5ad94ca83fbbd9b1a15713ce2344ccc5a1
  - kind: registry
    name: fastrand
    version: 2.1.0
    sha: 9fc0510504f03c51ada170672ac806f1f105a88aa97a5281117e1ddc3368e51a
  - kind: registry
    name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - kind: registry
    name: flate2
    version: 1.0.30
    sha: 5f54427cfd1c7829e2a139fcefea601bf088ebca651d2bf53ebc600eac295dae
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
    version: 0.3.30
    sha: eac8f7d7865dcb88bd4373ab671c8cf4508703796caa2b1985a9ca867b3fcb78
  - kind: registry
    name: futures-core
    version: 0.3.30
    sha: dfc6580bb841c5a68e9ef15c77ccc837b40a7504914d52e47b8b0e9bbda25a1d
  - kind: registry
    name: futures-executor
    version: 0.3.30
    sha: a576fc72ae164fca6b9db127eaa9a9dda0d61316034f33a0a0d4eda41f02b01d
  - kind: registry
    name: futures-io
    version: 0.3.30
    sha: a44623e20b9681a318efdd71c299b6b222ed6f231972bfe2f224ebad6311f0c1
  - kind: registry
    name: futures-lite
    version: 2.3.0
    sha: 52527eb5074e35e9339c6b4e8d12600c7128b68fb25dcb9fa9dec18f7c25f3a5
  - kind: registry
    name: futures-macro
    version: 0.3.30
    sha: 87750cf4b7a4c0625b1529e4c543c2182106e4dedc60a2a6455e00d212c489ac
  - kind: registry
    name: futures-sink
    version: 0.3.30
    sha: 9fb8e00e87438d937621c1c6269e53f536c14d3fbd6a042bb24879e57d474fb5
  - kind: registry
    name: futures-task
    version: 0.3.30
    sha: 38d84fa142264698cdce1a9f9172cf383a0c82de1bddcf3092901442c4097004
  - kind: registry
    name: futures-timer
    version: 3.0.3
    sha: f288b0a4f20f9a56b5d1da57e2227c661b7b16168e2f72365f57b63326e29b24
  - kind: registry
    name: futures-util
    version: 0.3.30
    sha: 3d6401deb83407ab3da39eba7e33987a73c3df0c82b4bb5813ee871c19c41d48
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core.git
    query:
      branch: master
    name: gdk-pixbuf
    version: 0.20.0
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core.git
    query:
      branch: master
    name: gdk-pixbuf-sys
    version: 0.20.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs.git
    query:
      branch: master
    name: gdk4
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs.git
    query:
      branch: master
    name: gdk4-sys
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs.git
    query:
      branch: master
    name: gdk4-wayland
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs.git
    query:
      branch: master
    name: gdk4-wayland-sys
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs.git
    query:
      branch: master
    name: gdk4-x11
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs.git
    query:
      branch: master
    name: gdk4-x11-sys
    version: 0.9.0
  - kind: registry
    name: generic-array
    version: 0.14.7
    sha: 85649ca51fd72272d7821adaf274ad91c288277713d9c18820d8499a7ff69e9a
  - kind: registry
    name: getrandom
    version: 0.2.15
    sha: c4567c8db10ae91089c99af84c68c38da3ec2f087c3f82960bcdbf3656b6f4d7
  - kind: registry
    name: gettext-rs
    version: 0.7.0
    sha: e49ea8a8fad198aaa1f9655a2524b64b70eb06b2f3ff37da407566c93054f364
  - kind: registry
    name: gettext-sys
    version: 0.21.3
    sha: c63ce2e00f56a206778276704bbe38564c8695249fdc8f354b4ef71c57c3839d
  - kind: registry
    name: gimli
    version: 0.29.0
    sha: 40ecd4077b5ae9fd2e9e169b102c6c330d0605168eb0e8bf79952b256dbefffd
  - kind: registry
    name: gio
    version: 0.19.8
    sha: 4c49f117d373ffcc98a35d114db5478bc223341cff53e39a5d6feced9e2ddffe
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core.git
    query:
      branch: master
    name: gio
    version: 0.20.0
  - kind: registry
    name: gio-sys
    version: 0.19.8
    sha: 2cd743ba4714d671ad6b6234e8ab2a13b42304d0e13ab7eba1dcdd78a7d6d4ef
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core.git
    query:
      branch: master
    name: gio-sys
    version: 0.20.0
  - kind: registry
    name: glib
    version: 0.19.9
    sha: 39650279f135469465018daae0ba53357942a5212137515777d5fdca74984a44
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core.git
    query:
      branch: master
    name: glib
    version: 0.20.0
  - kind: registry
    name: glib-macros
    version: 0.19.9
    sha: 4429b0277a14ae9751350ad9b658b1be0abb5b54faa5bcdf6e74a3372582fad7
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core.git
    query:
      branch: master
    name: glib-macros
    version: 0.20.0
  - kind: registry
    name: glib-sys
    version: 0.19.8
    sha: 5c2dc18d3a82b0006d470b13304fbbb3e0a9bd4884cf985a60a7ed733ac2c4a5
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core.git
    query:
      branch: master
    name: glib-sys
    version: 0.20.0
  - kind: git
    commit: 8dc103d88ed8d4dbce7cd9a09842121f0d101734
    repo: https://gitlab.gnome.org/sophie-h/glycin
    name: glycin
    version: 2.0.0-alpha
  - kind: git
    commit: 8dc103d88ed8d4dbce7cd9a09842121f0d101734
    repo: https://gitlab.gnome.org/sophie-h/glycin
    name: glycin-utils
    version: 2.0.0-alpha
  - kind: registry
    name: gobject-sys
    version: 0.19.8
    sha: 2e697e252d6e0416fd1d9e169bda51c0f1c926026c39ca21fbe8b1bb5c3b8b9e
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core.git
    query:
      branch: master
    name: gobject-sys
    version: 0.20.0
  - kind: git
    commit: 942aaafc7c28a15bca4710db4355edd334aaf66a
    repo: https://github.com/gtk-rs/gtk-rs-core.git
    query:
      branch: master
    name: graphene-rs
    version: 0.20.0
  - kind: git
    commit: 942aaafc7c28a15bca4710db4355edd334aaf66a
    repo: https://github.com/gtk-rs/gtk-rs-core.git
    query:
      branch: master
    name: graphene-sys
    version: 0.20.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs.git
    query:
      branch: master
    name: gsk4
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs.git
    query:
      branch: master
    name: gsk4-sys
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs.git
    query:
      branch: master
    name: gtk4
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs.git
    query:
      branch: master
    name: gtk4-macros
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs.git
    query:
      branch: master
    name: gtk4-sys
    version: 0.9.0
  - kind: registry
    name: gufo-common
    version: 0.1.0-alpha
    sha: bdbc72e291765d0bdb342d2d91dee7046ed3225d1378da2f0ddfd9b60a7837df
  - kind: registry
    name: gufo-exif
    version: 0.1.0-alpha
    sha: e14eb8a2d4c8ccd4b1520809482d742663bd57c057f0dbcbb614a96ae507fe61
  - kind: registry
    name: gvdb
    version: 0.6.1
    sha: acfa8cd2aa58da96876eb6276afe617c414d5846d1229274a821c1f8e8aa9e02
  - kind: registry
    name: gvdb-macros
    version: 0.1.12
    sha: d6b224e38dcf849c0f3bcc301b14fc6c04693aa5ee22ebc964c6ad4b8e2ff5ea
  - kind: registry
    name: gweather-sys
    version: 4.4.0
    sha: dde1d5eedb5b83ca0a2345c29655b72ea4ea8922ea54e52a75fe60366fd8428b
  - kind: registry
    name: hashbrown
    version: 0.14.5
    sha: e5274423e17b7c9fc20b6e7e208532f9b19825d82dfd615708b70edd83df41f1
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
    name: humantime
    version: 2.1.0
    sha: 9a3a5bfb195931eeb336b2a7b4d761daec841b97f947d34394601737a7bba5e4
  - kind: registry
    name: idna
    version: 0.5.0
    sha: 634d9b1461af396cad843f47fdba5597a4f9e6ddd4bfb6ff5d85028c25cb12f6
  - kind: registry
    name: indexmap
    version: 2.2.6
    sha: 168fb715dda47215e360912c096649d23d58bf392ac62f73919e831745e40f26
  - kind: registry
    name: is_terminal_polyfill
    version: 1.70.0
    sha: f8478577c03552c21db0e2724ffb8986a5ce7af88107e6be5d2ee6e158c12800
  - kind: registry
    name: itoa
    version: 1.0.11
    sha: 49f1f14873335454500d59611f1cf4a4b0f786f9ac11f4312a78e4cf2566695b
  - kind: registry
    name: jobserver
    version: 0.1.31
    sha: d2b099aaa34a9751c5bf0878add70444e1ed2dd73f347be99003d4577277de6e
  - kind: registry
    name: kamadak-exif
    version: 0.5.5
    sha: ef4fc70d0ab7e5b6bafa30216a6b48705ea964cdfc29c050f2412295eba58077
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
  - kind: git
    commit: 2faebad724af2c1444d97a302fd39fff1bff83eb
    repo: https://gitlab.gnome.org/World/Rust/libadwaita-rs.git
    query:
      branch: master
    name: libadwaita
    version: 0.7.0
  - kind: git
    commit: 2faebad724af2c1444d97a302fd39fff1bff83eb
    repo: https://gitlab.gnome.org/World/Rust/libadwaita-rs.git
    query:
      branch: master
    name: libadwaita-sys
    version: 0.7.0
  - kind: registry
    name: libc
    version: 0.2.155
    sha: 97b3888a4aecf77e811145cadf6eef5901f4782c53886191b2f693f24761847c
  - kind: registry
    name: libgweather
    version: 4.4.0
    sha: 2cb8f774df868ceca45c30e19945b5895d599ed1ed33b28092eec9f38d4e3ba3
  - kind: registry
    name: libloading
    version: 0.8.4
    sha: e310b3a6b5907f99202fcdb4960ff45b93735d7c7d96b760fcff8db2dc0e103d
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
    version: 0.4.14
    sha: 78b3ae25bc7c8c38cec158d1f2757ee79e9b3740fbc7ccf0e59e4b08d793fa89
  - kind: registry
    name: litrs
    version: 0.4.1
    sha: b4ce301924b7887e9d637144fdade93f9dfff9b60981d4ac161db09720d39aa5
  - kind: registry
    name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - kind: registry
    name: log
    version: 0.4.22
    sha: a7a70ba024b9dc04c27ea2f0c0548feb474ec5c54bba33a7f72f873a39d07b24
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
    version: 0.9.4
    sha: fe751422e4a8caa417e13c3ea66452215d7d63e19e604f4980461212f3ae1322
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: miniz_oxide
    version: 0.7.4
    sha: b8a240ddb74feaf34a79a7add65a741f3167852fba007066dcac1ca548d89c08
  - kind: registry
    name: mutate_once
    version: 0.1.1
    sha: 16cf681a23b4d0a43fc35024c176437f9dcd818db34e0f42ab456a0ee5ad497b
  - kind: registry
    name: nix
    version: 0.28.0
    sha: ab2156c4fce2f8df6c499cc1c763e4394b7482525bf2a9701c9d79d215f519e4
  - kind: registry
    name: nix
    version: 0.29.0
    sha: 71e2746dc3a24dd78b3cfcb7be93368c6de9963d30f43a6a73998a9cf4b17b46
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
    name: object
    version: 0.36.0
    sha: 576dfe1fc8f9df304abb159d767a29d0476f7750fbf8aa7ad07816004a207434
  - kind: registry
    name: once_cell
    version: 1.19.0
    sha: 3fdb12b2476b595f9358c5161aa467c2438859caa136dec86c26fdd2efe17b92
  - kind: registry
    name: ordered-stream
    version: 0.2.0
    sha: 9aa2b01e1d916879f73a53d01d1d6cee68adbb31d6d9177a8cfce093cced1d50
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core.git
    query:
      branch: master
    name: pango
    version: 0.20.0
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core.git
    query:
      branch: master
    name: pango-sys
    version: 0.20.0
  - kind: registry
    name: parking
    version: 2.2.0
    sha: bb813b8af86854136c6922af0598d719255ecb2179515e6e7730d468f05c9cae
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
    version: 0.2.14
    sha: bda66fc9667c18cb2758a2ac84d1167245054bcf85d5d1aaa6923f45801bdd02
  - kind: registry
    name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - kind: registry
    name: piper
    version: 0.2.3
    sha: ae1d5c74c9876f070d3e8fd503d748c7d974c3e48da8f41350fa5222ef9b4391
  - kind: registry
    name: pkg-config
    version: 0.3.30
    sha: d231b230927b5e4ad203db57bbcbee2802f6bce620b1e4a9024a07d94e2907ec
  - kind: registry
    name: polling
    version: 3.7.2
    sha: a3ed00ed3fbf728b5816498ecd316d1716eecaced9c0c8d2c5a6740ca214985b
  - kind: registry
    name: ppv-lite86
    version: 0.2.17
    sha: 5b40af805b3121feab8a3c29f04d8ad262fa8e0561883e7653e024ae4479e6de
  - kind: registry
    name: proc-macro-crate
    version: 3.1.0
    sha: 6d37c51ca738a55da99dc0c4a34860fd675453b8b36209178c2249bb13651284
  - kind: registry
    name: proc-macro2
    version: 1.0.86
    sha: 5e719e8df665df0d1c8fbfd238015744736151d4445ec0836b8e628aae103b77
  - kind: registry
    name: quick-xml
    version: 0.31.0
    sha: 1004a344b30a54e2ee58d66a71b32d2db2feb0a31f9a2d302bf0536f15de2a33
  - kind: registry
    name: quote
    version: 1.0.36
    sha: 0fa76aaf39101c457836aec0ce2316dbdc3ab723cdda1c6bd4e6ad4208acaca7
  - kind: registry
    name: rand
    version: 0.8.5
    sha: 34af8d1a0e25924bc5b7c43c079c942339d8f0a8b57c39049bef581b46327404
  - kind: registry
    name: rand_chacha
    version: 0.3.1
    sha: e6c10a63a0fa32252be49d21e7709d4d4baf8d231c2dbce1eaa8141b9b127d88
  - kind: registry
    name: rand_core
    version: 0.6.4
    sha: ec0be4795e2f6a28069bec0b5ff3e2ac9bafc99e6a9a7dc3547996c5c816922c
  - kind: registry
    name: regex
    version: 1.10.5
    sha: b91213439dad192326a0d7c6ee3955910425f441d7038e0d6933b0aec5c4517f
  - kind: registry
    name: regex-automata
    version: 0.4.7
    sha: 38caf58cc5ef2fed281f89292ef23f6365465ed9a41b7a7754eb4e26496c92df
  - kind: registry
    name: regex-syntax
    version: 0.8.4
    sha: 7a66a03ae7c801facd77a29370b4faec201768915ac14a721ba36f20bc9c209b
  - kind: registry
    name: rmp
    version: 0.8.14
    sha: 228ed7c16fa39782c3b3468e974aec2795e9089153cd08ee2e9aefb3613334c4
  - kind: registry
    name: rmp-serde
    version: 1.3.0
    sha: 52e599a477cf9840e92f2cde9a7189e67b42c57532749bf90aea6ec10facd4db
  - kind: registry
    name: rustc-demangle
    version: 0.1.24
    sha: 719b953e2095829ee67db738b3bfa9fa368c94900df327b3f07fe6e794d2fe1f
  - kind: registry
    name: rustc_version
    version: 0.4.0
    sha: bfa0f585226d2e68097d4f95d113b15b83a82e819ab25717ec0590d9584ef366
  - kind: registry
    name: rustix
    version: 0.38.34
    sha: 70dc5ec042f7a43c4a73241207cecc9873a06d45debb38b329f8541d85c2730f
  - kind: registry
    name: rustversion
    version: 1.0.17
    sha: 955d28af4278de8121b7ebeb796b6a45735dc01436d898801014aced2773a3d6
  - kind: registry
    name: ryu
    version: 1.0.18
    sha: f3cb5ba0dc43242ce17de99c180e96db90b235b8a9fdc9543c96d2209116bd9f
  - kind: registry
    name: safe-transmute
    version: 0.11.3
    sha: 3944826ff8fa8093089aba3acb4ef44b9446a99a16f3bf4e74af3f77d340ab7d
  - kind: registry
    name: same-file
    version: 1.0.6
    sha: 93fc1dc3aaa9bfed95e02e6eadabb4baf7e3078b0bd1b4d7b6b0b68378900502
  - kind: registry
    name: semver
    version: 1.0.23
    sha: 61697e0a1c7e512e84a621326239844a24d8207b4669b41bc18b32ea5cbf988b
  - kind: registry
    name: serde
    version: 1.0.203
    sha: 7253ab4de971e72fb7be983802300c30b5a7f0c2e56fab8abfc6a214307c0094
  - kind: registry
    name: serde_derive
    version: 1.0.203
    sha: 500cbc0ebeb6f46627f50f3f5811ccf6bf00643be300b4c3eabc0ef55dc5b5ba
  - kind: registry
    name: serde_json
    version: 1.0.118
    sha: d947f6b3163d8857ea16c4fa0dd4840d52f3041039a85decd46867eb1abef2e4
  - kind: registry
    name: serde_repr
    version: 0.1.19
    sha: 6c64451ba24fc7a6a2d60fc75dd9c83c90903b19028d4eff35e88fc1e86564e9
  - kind: registry
    name: serde_spanned
    version: 0.6.6
    sha: 79e674e01f999af37c49f70a6ede167a8a60b2503e56c5599532a65baa5969a0
  - kind: registry
    name: sha1
    version: 0.10.6
    sha: e3bf829a2d51ab4a5ddf1352d8470c140cadc8301b2ae1789db023f01cedd6ba
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
    version: 1.13.2
    sha: 3c5e1a9a646d36c3599cd173a41282daf47c44583ad367b8e6837255952e5c67
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - kind: registry
    name: strum
    version: 0.26.3
    sha: 8fec0f0aef304996cf250b31b5a10dee7980c85da9d759361292b8bca5a18f06
  - kind: registry
    name: strum_macros
    version: 0.26.4
    sha: 4c6bee85a5a24955dc440386795aa378cd9cf82acd5f764469152d2270e581be
  - kind: registry
    name: syn
    version: 2.0.68
    sha: 901fa70d88b9d6c98022e23b4136f9f3e54e4662c3bc1bd1d84a42a9a0f0c1e9
  - kind: registry
    name: system-deps
    version: 6.2.2
    sha: a3e535eb8dded36d55ec13eddacd30dec501792ff23a0b1682c38601b8cf2349
  - kind: registry
    name: system-deps
    version: 7.0.1
    sha: 6c81f13d9a334a6c242465140bd262fae382b752ff2011c4f7419919a9c97922
  - kind: registry
    name: target-lexicon
    version: 0.12.14
    sha: e1fc403891a21bcfb7c37834ba66a547a8f402146eba7265b5a6d88059c9ff2f
  - kind: registry
    name: temp-dir
    version: 0.1.13
    sha: 1f227968ec00f0e5322f9b8173c7a0cbcff6181a0a5b28e9892491c286277231
  - kind: registry
    name: tempfile
    version: 3.10.1
    sha: 85b77fafb263dd9d05cbeac119526425676db3784113aa9295c88498cbf8bff1
  - kind: registry
    name: thiserror
    version: 1.0.61
    sha: c546c80d6be4bc6a00c0f01730c08df82eaa7a7a61f11d656526506112cc1709
  - kind: registry
    name: thiserror-impl
    version: 1.0.61
    sha: 46c3384250002a6d5af4d114f2845d37b57521033f30d5c3f46c4d70e1197533
  - kind: registry
    name: tinyvec
    version: 1.6.1
    sha: c55115c6fbe2d2bef26eb09ad74bde02d8255476fc0c7b515ef09fbb35742d82
  - kind: registry
    name: tinyvec_macros
    version: 0.1.1
    sha: 1f3ccbac311fea05f86f61904b462b55fb3df8837a366dfc601a0161d0532f20
  - kind: registry
    name: toml
    version: 0.8.14
    sha: 6f49eb2ab21d2f26bd6db7bf383edc527a7ebaee412d17af4d40fdccd442f335
  - kind: registry
    name: toml_datetime
    version: 0.6.6
    sha: 4badfd56924ae69bcc9039335b2e017639ce3f9b001c393c1b2d1ef846ce2cbf
  - kind: registry
    name: toml_edit
    version: 0.21.1
    sha: 6a8534fd7f78b5405e860340ad6575217ce99f38d4d5c8f2442cb5ecb50090e1
  - kind: registry
    name: toml_edit
    version: 0.22.14
    sha: f21c7aaf97f1bd9ca9d4f9e73b0a6c74bd5afef56f2bc931943a6e1c37e04e38
  - kind: registry
    name: tracing
    version: 0.1.40
    sha: c3523ab5a71916ccf420eebdf5521fcef02141234bbc0b8a49f2fdc4544364ef
  - kind: registry
    name: tracing-attributes
    version: 0.1.27
    sha: 34704c8d6ebcbc939824180af020566b01a7c01f80641264eba0999f6c2b6be7
  - kind: registry
    name: tracing-core
    version: 0.1.32
    sha: c06d3da6113f116aaee68e4d601191614c9053067f9ab7f6edbcb161237daa54
  - kind: registry
    name: typenum
    version: 1.17.0
    sha: 42ff0bf0c66b8238c6f3b578df37d0b7848e55df8577b3f74f92a69acceeb825
  - kind: registry
    name: uds_windows
    version: 1.1.0
    sha: 89daebc3e6fd160ac4aa9fc8b3bf71e1f74fbf92367ae71fb83a037e8bf164b9
  - kind: registry
    name: unicode-bidi
    version: 0.3.15
    sha: 08f95100a766bf4f8f28f90d77e0a5461bbdb219042e7679bebe79004fed8d75
  - kind: registry
    name: unicode-ident
    version: 1.0.12
    sha: 3354b9ac3fae1ff6755cb6db53683adb661634f67557942dea4facebec0fee4b
  - kind: registry
    name: unicode-normalization
    version: 0.1.23
    sha: a56d1686db2308d901306f92a263857ef59ea39678a5458e7cb17f01415101f5
  - kind: registry
    name: url
    version: 2.5.2
    sha: 22784dbdf76fdde8af1aeda5622b546b422b6fc585325248a2bf9f5e41e94d6c
  - kind: registry
    name: utf8parse
    version: 0.2.2
    sha: 06abde3611657adf66d383f00b093d7faecc7fa57071cce2578660c9f1010821
  - kind: registry
    name: version-compare
    version: 0.2.0
    sha: 852e951cb7832cb45cb1169900d19760cfa39b82bc0ea9c0e5a14ae88411c98b
  - kind: registry
    name: version_check
    version: 0.9.4
    sha: 49874b5167b65d7193b8aba1567f5c7d93d001cafc34600cee003eda787e483f
  - kind: registry
    name: walkdir
    version: 2.5.0
    sha: 29790946404f91d9c5d06f9874efddea1dc06c5efe94541a7d6863108e3a5e4b
  - kind: registry
    name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
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
    version: 0.1.8
    sha: 4d4cc384e1e73b93bafa6fb4f1df8c41695c8a91cf9c4c64358067d15a7b6c6b
  - kind: registry
    name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
  - kind: registry
    name: windows-sys
    version: 0.52.0
    sha: 282be5f36a8ce781fad8c8ae18fa3f9beff57ec1b52cb3de0789201425d9a33d
  - kind: registry
    name: windows-targets
    version: 0.52.5
    sha: 6f0713a46559409d202e70e28227288446bf7841d3211583a4b53e3f6d96e7eb
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.52.5
    sha: 7088eed71e8b8dda258ecc8bac5fb1153c5cffaf2578fc8ff5d61e23578d3263
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.52.5
    sha: 9985fd1504e250c615ca5f281c3f7a6da76213ebd5ccc9561496568a2752afb6
  - kind: registry
    name: windows_i686_gnu
    version: 0.52.5
    sha: 88ba073cf16d5372720ec942a8ccbf61626074c6d4dd2e745299726ce8b89670
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.52.5
    sha: 87f4261229030a858f36b459e748ae97545d6f1ec60e5e0d6a3d32e0dc232ee9
  - kind: registry
    name: windows_i686_msvc
    version: 0.52.5
    sha: db3c2bf3d13d5b658be73463284eaf12830ac9a26a90c717b7f771dfe97487bf
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.52.5
    sha: 4e4246f76bdeff09eb48875a0fd3e2af6aada79d409d33011886d3e1581517d9
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.52.5
    sha: 852298e482cd67c356ddd9570386e2862b5673c85bd5f88df9ab6802b334c596
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.52.5
    sha: bec47e5bfd1bff0eeaf6d8b485cc1074891a197ab4225d504cb7a1ab88b02bf0
  - kind: registry
    name: winnow
    version: 0.5.40
    sha: f593a95398737aeed53e489c785df13f3618e41dbcd6718c6addbf1395aa6876
  - kind: registry
    name: winnow
    version: 0.6.13
    sha: 59b5e5f6c299a3c7890b876a2a587f3115162487e704907d9b6cd29473052ba1
  - kind: registry
    name: xdg-home
    version: 1.2.0
    sha: ca91dcf8f93db085f3a0a29358cd0b9d670915468f4290e8b85d118a34211ab8
  - kind: registry
    name: yeslogic-fontconfig-sys
    version: 5.0.0
    sha: ffb6b23999a8b1a997bf47c7bb4d19ad4029c3327bb3386ebe0a5ff584b33c7a
  - kind: registry
    name: zbus
    version: 4.3.0
    sha: 23915fcb26e7a9a9dc05fd93a9870d336d6d032cd7e8cebf1c5c37666489fdd5
  - kind: registry
    name: zbus_macros
    version: 4.3.0
    sha: 02bcca0b586d2f8589da32347b4784ba424c4891ed86aa5b50d5e88f6b2c4f5d
  - kind: registry
    name: zbus_names
    version: 3.0.0
    sha: 4b9b1fef7d021261cc16cba64c351d291b715febe0fa10dc3a443ac5a5022e6c
  - kind: registry
    name: zvariant
    version: 4.1.1
    sha: 9aa6d31a02fbfb602bfde791de7fedeb9c2c18115b3d00f3a36e489f46ffbbc7
  - kind: registry
    name: zvariant_derive
    version: 4.1.1
    sha: 642bf1b6b6d527988b3e8193d20969d53700a36eac734d21ae6639db168701c8
  - kind: registry
    name: zvariant_utils
    version: 2.0.0
    sha: fc242db087efc22bd9ade7aa7809e4ba828132edc312871584a6b4391bdf8786
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/glycin-loaders.bst
- core-deps/libgweather.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libseccomp.bst
