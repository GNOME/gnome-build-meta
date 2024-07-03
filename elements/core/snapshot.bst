kind: meson

sources:
- kind: git_repo
  url: gnome:snapshot.git
  track: main
  ref: 47.alpha-2-g58c3434eb242b6befb16115384e35b881c35a18a
- kind: cargo2
  ref:
  - kind: registry
    name: aho-corasick
    version: 1.1.3
    sha: 8e60d3430d3a69478ad0993f19238d2df97c507009a52b3c10addcd7f6bcb916
  - kind: registry
    name: android-tzdata
    version: 0.1.1
    sha: e999941b234f3131b00bc13c22d06e8c5ff726d1b6318ac7eb276997bbb4fef0
  - kind: registry
    name: android_system_properties
    version: 0.1.5
    sha: 819e7219dbd41043ac279b19830f2efc897156490d7fd6ea916720117ee66311
  - kind: registry
    name: anyhow
    version: 1.0.86
    sha: b3d1d046238990b9cf5bcde22a3fb3584ee5cf65fb2765f454ed428c7a0063da
  - kind: git
    commit: 8c147159f4de1d2e7c8fee8f040810509f218ed3
    repo: https://github.com/sophie-h/ashpd
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
    name: atomic_refcell
    version: 0.1.13
    sha: 41e67cd8309bbd06cd603a9e693a784ac2e5d1e955f11286e355089fcab3047c
  - kind: registry
    name: autocfg
    version: 1.3.0
    sha: 0c4b4d0bd25bd0b74681c0ad21497610ce1b7c91b1022cd21c80c6fbdd9476b0
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
    name: bumpalo
    version: 3.16.0
    sha: 79296716171880943b8470b5f8d03aa55eb2e645a4874bdbb28adb49162e012c
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
    repo: https://github.com/gtk-rs/gtk-rs-core
    query:
      branch: master
    name: cairo-rs
    version: 0.20.0
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core
    query:
      branch: master
    name: cairo-sys-rs
    version: 0.20.0
  - kind: registry
    name: cc
    version: 1.0.104
    sha: 74b6a57f98764a267ff415d50a25e6e166f3831a5071af4995296ea97d210490
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
    version: 0.2.1
    sha: 613afe47fcd5fac7ccf1db93babcb082c5994d996f20b8b159f2ad1658eb5724
  - kind: registry
    name: chrono
    version: 0.4.38
    sha: a21f936df1771bf62b77f047b726c4625ff2e8aa607c01ec06e5a05bd8463401
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: core-foundation-sys
    version: 0.8.6
    sha: 06ea2b9bc92be3c2baa9334a323ebca2d6f074ff852cd1d7b11064035cd3868f
  - kind: registry
    name: cpufeatures
    version: 0.2.12
    sha: 53fe5e26ff1b7aef8bca9c6080520cfb8d9333c7568e1829cef191a9723e5504
  - kind: registry
    name: crossbeam-utils
    version: 0.8.20
    sha: 22ec99545bb0ed0ea7bb9b8e1e9122ea386ff8a48c0922e43f36d45ab09e0e80
  - kind: registry
    name: crypto-common
    version: 0.1.6
    sha: 1bfb12502f3fc46cca1bb51ac28df9d618d813cdc3d2f25b9fe775a34af26bb3
  - kind: registry
    name: digest
    version: 0.10.7
    sha: 9ed9a281f7bc9b7576e61468ba615a66a5c8cfdff42420a70aa82701a3b1e292
  - kind: registry
    name: dunce
    version: 1.0.4
    sha: 56ce8c6da7551ec6c462cbaf3bfbc75131ebbfa1c944aeaa9dab51ca1c5f0c3b
  - kind: registry
    name: either
    version: 1.13.0
    sha: 60b1af1c220855b6ceac025d3f6ecdd2b7c4894bfe9cd9bda4fbb4bc7c0d4cf0
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
    name: futures-util
    version: 0.3.30
    sha: 3d6401deb83407ab3da39eba7e33987a73c3df0c82b4bb5813ee871c19c41d48
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core
    query:
      branch: master
    name: gdk-pixbuf
    version: 0.20.0
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core
    query:
      branch: master
    name: gdk-pixbuf-sys
    version: 0.20.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs
    query:
      branch: master
    name: gdk4
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs
    query:
      branch: master
    name: gdk4-sys
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs
    query:
      branch: master
    name: gdk4-wayland
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs
    query:
      branch: master
    name: gdk4-wayland-sys
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs
    query:
      branch: master
    name: gdk4-win32
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs
    query:
      branch: master
    name: gdk4-win32-sys
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs
    query:
      branch: master
    name: gdk4-x11
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs
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
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core
    query:
      branch: master
    name: gio
    version: 0.20.0
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core
    query:
      branch: master
    name: gio-sys
    version: 0.20.0
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core
    query:
      branch: master
    name: glib
    version: 0.20.0
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core
    query:
      branch: master
    name: glib-macros
    version: 0.20.0
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core
    query:
      branch: master
    name: glib-sys
    version: 0.20.0
  - kind: git
    commit: e5d229d058d892ad5700d98179adcec82abe8770
    repo: https://gitlab.gnome.org/sophie-h/glycin
    name: glycin
    version: 2.0.0-alpha
  - kind: git
    commit: e5d229d058d892ad5700d98179adcec82abe8770
    repo: https://gitlab.gnome.org/sophie-h/glycin
    name: glycin-utils
    version: 2.0.0-alpha
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core
    query:
      branch: master
    name: gobject-sys
    version: 0.20.0
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core
    query:
      branch: master
    name: graphene-rs
    version: 0.20.0
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core
    query:
      branch: master
    name: graphene-sys
    version: 0.20.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs
    query:
      branch: master
    name: gsk4
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs
    query:
      branch: master
    name: gsk4-sys
    version: 0.9.0
  - kind: git
    commit: 95ae67752f0f5ad848df2dce1cd97b480903b2e9
    repo: https://gitlab.freedesktop.org/gstreamer/gst-plugins-rs
    query:
      branch: main
    name: gst-plugin-gtk4
    version: 0.13.0-alpha.1
  - kind: git
    commit: 95ae67752f0f5ad848df2dce1cd97b480903b2e9
    repo: https://gitlab.freedesktop.org/gstreamer/gst-plugins-rs
    query:
      branch: main
    name: gst-plugin-version-helper
    version: 0.8.1
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-allocators
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-allocators-sys
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-audio
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-audio-sys
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-base
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-base-sys
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-gl
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-gl-egl
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-gl-egl-sys
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-gl-sys
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-gl-wayland
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-gl-wayland-sys
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-gl-x11
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-gl-x11-sys
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-pbutils
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-pbutils-sys
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-sys
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-video
    version: 0.23.0
  - kind: git
    commit: adf3e9236aa6974147866242617cf651938e0ccc
    repo: https://gitlab.freedesktop.org/gstreamer/gstreamer-rs
    query:
      branch: main
    name: gstreamer-video-sys
    version: 0.23.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs
    query:
      branch: master
    name: gtk4
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs
    query:
      branch: master
    name: gtk4-macros
    version: 0.9.0
  - kind: git
    commit: f0e1d9e1f44fc71403bae0de88f55296a93cc09a
    repo: https://github.com/gtk-rs/gtk4-rs
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
    name: iana-time-zone
    version: 0.1.60
    sha: e7ffbb5a1b541ea2561f8c41c087286cc091e21e556a4f09a8f6cbf17b69b141
  - kind: registry
    name: iana-time-zone-haiku
    version: 0.1.2
    sha: f31827a206f56af32e590ba56d5d2d085f558508192593743f16b2306495269f
  - kind: registry
    name: idna
    version: 0.5.0
    sha: 634d9b1461af396cad843f47fdba5597a4f9e6ddd4bfb6ff5d85028c25cb12f6
  - kind: registry
    name: indexmap
    version: 2.2.6
    sha: 168fb715dda47215e360912c096649d23d58bf392ac62f73919e831745e40f26
  - kind: registry
    name: itertools
    version: 0.13.0
    sha: 413ee7dfc52ee1a4949ceeb7dbc8a33f2d6c088194d9f922fb8318faf1f01186
  - kind: registry
    name: jobserver
    version: 0.1.31
    sha: d2b099aaa34a9751c5bf0878add70444e1ed2dd73f347be99003d4577277de6e
  - kind: registry
    name: js-sys
    version: 0.3.69
    sha: 29c15563dc2726973df627357ce0c9ddddbea194836909d655df6a75d2cf296d
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
    repo: https://gitlab.gnome.org/World/Rust/libadwaita-rs
    name: libadwaita
    version: 0.7.0
  - kind: git
    commit: 2faebad724af2c1444d97a302fd39fff1bff83eb
    repo: https://gitlab.gnome.org/World/Rust/libadwaita-rs
    name: libadwaita-sys
    version: 0.7.0
  - kind: registry
    name: libc
    version: 0.2.155
    sha: 97b3888a4aecf77e811145cadf6eef5901f4782c53886191b2f693f24761847c
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
    version: 1.19.0
    sha: 3fdb12b2476b595f9358c5161aa467c2438859caa136dec86c26fdd2efe17b92
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
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core
    query:
      branch: master
    name: pango
    version: 0.20.0
  - kind: git
    commit: ffdad007c26dc06b8be47e966be6677a74726987
    repo: https://github.com/gtk-rs/gtk-rs-core
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
    name: rustc_version
    version: 0.4.0
    sha: bfa0f585226d2e68097d4f95d113b15b83a82e819ab25717ec0590d9584ef366
  - kind: registry
    name: rustix
    version: 0.38.34
    sha: 70dc5ec042f7a43c4a73241207cecc9873a06d45debb38b329f8541d85c2730f
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
    name: sharded-slab
    version: 0.1.7
    sha: f40ca3c46823713e0d4209592e8d6e826aa57e928f09752619fc696c499637f6
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
    name: thread_local
    version: 1.1.8
    sha: 8b9ef9bad013ada3808854ceac7b46812a6465ba368859a37e2100283d2d719c
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
    name: tracing-log
    version: 0.2.0
    sha: ee855f1f400bd0e5c02d150ae5de3840039a3f54b025156404e34c23c03f47c3
  - kind: registry
    name: tracing-subscriber
    version: 0.3.18
    sha: ad0f048c97dbd9faa9b7df56362b8ebcaa52adb06b498c050d2f4e32f90a7a8b
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
    name: valuable
    version: 0.1.0
    sha: 830b7e5d4d90034032940e4ace0d9a9a057e7a45cd94e6c007832e39edb82f6d
  - kind: registry
    name: version-compare
    version: 0.2.0
    sha: 852e951cb7832cb45cb1169900d19760cfa39b82bc0ea9c0e5a14ae88411c98b
  - kind: registry
    name: version_check
    version: 0.9.4
    sha: 49874b5167b65d7193b8aba1567f5c7d93d001cafc34600cee003eda787e483f
  - kind: registry
    name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
  - kind: registry
    name: wasm-bindgen
    version: 0.2.92
    sha: 4be2531df63900aeb2bca0daaaddec08491ee64ceecbee5076636a3b026795a8
  - kind: registry
    name: wasm-bindgen-backend
    version: 0.2.92
    sha: 614d787b966d3989fa7bb98a654e369c762374fd3213d212cfc0251257e747da
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.92
    sha: a1f8823de937b71b9460c0c34e25f3da88250760bec0ebac694b49997550d726
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.92
    sha: e94f17b526d0a461a191c78ea52bbce64071ed5c04c9ffe424dcb38f74171bb7
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.92
    sha: af190c94f2773fdb3729c55b007a722abb5384da03bc0986df4c289bf5567e96
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
    name: windows-core
    version: 0.52.0
    sha: 33ab640c8d7e35bf8ba19b884ba838ceb4fba93a4e8c65a9059d08afcfc683d9
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
    name: zbus
    version: 4.3.1
    sha: 851238c133804e0aa888edf4a0229481c753544ca12a60fd1c3230c8a500fe40
  - kind: registry
    name: zbus_macros
    version: 4.3.1
    sha: 8d5a3f12c20bd473be3194af6b49d50d7bb804ef3192dc70eddedb26b85d9da7
  - kind: registry
    name: zbus_names
    version: 3.0.0
    sha: 4b9b1fef7d021261cc16cba64c351d291b715febe0fa10dc3a443ac5a5022e6c
  - kind: registry
    name: zvariant
    version: 4.1.2
    sha: 1724a2b330760dc7d2a8402d841119dc869ef120b139d29862d6980e9c75bfc9
  - kind: registry
    name: zvariant_derive
    version: 4.1.2
    sha: 55025a7a518ad14518fb243559c058a2e5b848b015e31f1d90414f36e3317859
  - kind: registry
    name: zvariant_utils
    version: 2.0.0
    sha: fc242db087efc22bd9ade7aa7809e4ba828132edc312871584a6b4391bdf8786
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-good.bst
- freedesktop-sdk.bst:components/libseccomp.bst
