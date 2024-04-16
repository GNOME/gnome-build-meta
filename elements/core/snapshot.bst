kind: meson

sources:
- kind: git_repo
  url: gnome:Incubator/snapshot.git
  track: main
  ref: 46.1-10-g812aa969785546f024f4e1f068b777a4929ce806
- kind: cargo
  ref:
  - name: aho-corasick
    version: 1.1.3
    sha: 8e60d3430d3a69478ad0993f19238d2df97c507009a52b3c10addcd7f6bcb916
  - name: android-tzdata
    version: 0.1.1
    sha: e999941b234f3131b00bc13c22d06e8c5ff726d1b6318ac7eb276997bbb4fef0
  - name: android_system_properties
    version: 0.1.5
    sha: 819e7219dbd41043ac279b19830f2efc897156490d7fd6ea916720117ee66311
  - name: anyhow
    version: 1.0.82
    sha: f538837af36e6f6a9be0faa67f9a314f8119e4e4b5867c6ab40ed60360142519
  - name: ashpd
    version: 0.8.1
    sha: dd884d7c72877a94102c3715f3b1cd09ff4fac28221add3e57cfbe25c236d093
  - name: async-broadcast
    version: 0.7.0
    sha: 258b52a1aa741b9f09783b2d86cf0aeeb617bbf847f6933340a39644227acbdb
  - name: async-channel
    version: 2.2.1
    sha: 136d4d23bcc79e27423727b36823d86233aad06dfea531837b038394d11e9928
  - name: async-executor
    version: 1.11.0
    sha: b10202063978b3351199d68f8b22c4e47e4b1b822f8d43fd862d5ea8c006b29a
  - name: async-fs
    version: 2.1.1
    sha: bc19683171f287921f2405677dd2ed2549c3b3bda697a563ebc3a121ace2aba1
  - name: async-io
    version: 2.3.2
    sha: dcccb0f599cfa2f8ace422d3555572f47424da5648a4382a9dd0310ff8210884
  - name: async-lock
    version: 2.8.0
    sha: 287272293e9d8c41773cec55e365490fe034813a2f172f502d6ddcf75b2f582b
  - name: async-lock
    version: 3.3.0
    sha: d034b430882f8381900d3fe6f0aaa3ad94f2cb4ac519b429692a1bc2dda4ae7b
  - name: async-net
    version: 2.0.0
    sha: b948000fad4873c1c9339d60f2623323a0cfd3816e5181033c6a5cb68b2accf7
  - name: async-process
    version: 2.2.1
    sha: cad07b3443bfa10dcddf86a452ec48949e8e7fedf7392d82de3969fda99e90ed
  - name: async-recursion
    version: 1.1.0
    sha: 30c5ef0ede93efbf733c1a727f3b6b5a1060bbedd5600183e66f6e4be4af0ec5
  - name: async-signal
    version: 0.2.5
    sha: 9e47d90f65a225c4527103a8d747001fc56e375203592b25ad103e1ca13124c5
  - name: async-task
    version: 4.7.0
    sha: fbb36e985947064623dbd357f727af08ffd077f93d696782f3c56365fa2e2799
  - name: async-trait
    version: 0.1.80
    sha: c6fa2087f2753a7da8cc1c0dbfcf89579dd57458e36769de5ac750b4671737ca
  - name: atomic-waker
    version: 1.1.2
    sha: 1505bd5d3d116872e7271a6d4e16d81d0c8570876c8de68093a09ac269d8aac0
  - name: atomic_refcell
    version: 0.1.13
    sha: 41e67cd8309bbd06cd603a9e693a784ac2e5d1e955f11286e355089fcab3047c
  - name: autocfg
    version: 1.2.0
    sha: f1fdabc7756949593fe60f30ec81974b613357de856987752631dea1e3394c80
  - name: bitflags
    version: 2.5.0
    sha: cf4b9d6a944f767f8e5e0db018570623c85f3d925ac718db4e06d0187adb21c1
  - name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - name: block-buffer
    version: 0.10.4
    sha: 3078c7629b62d3f0439517fa394996acacc5cbc91c5a20d8c658e77abd503a71
  - name: blocking
    version: 1.5.1
    sha: 6a37913e8dc4ddcc604f0c6d3bf2887c995153af3611de9e23c352b44c1b9118
  - name: bumpalo
    version: 3.16.0
    sha: 79296716171880943b8470b5f8d03aa55eb2e645a4874bdbb28adb49162e012c
  - name: cairo-rs
    version: 0.19.4
    sha: b2ac2a4d0e69036cf0062976f6efcba1aaee3e448594e6514bb2ddf87acce562
  - name: cairo-sys-rs
    version: 0.19.2
    sha: fd3bb3119664efbd78b5e6c93957447944f16bdbced84c17a9f41c7829b81e64
  - name: cc
    version: 1.0.94
    sha: 17f6e324229dc011159fcc089755d1e2e216a90d43a7dea6853ca740b84f35e7
  - name: cfg-expr
    version: 0.15.8
    sha: d067ad48b8650848b989a59a86c6c36a995d02d2bf778d45c3c5d57bc2718f02
  - name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - name: cfg_aliases
    version: 0.1.1
    sha: fd16c4719339c4530435d38e511904438d07cce7950afa3718a84ac36c10e89e
  - name: chrono
    version: 0.4.38
    sha: a21f936df1771bf62b77f047b726c4625ff2e8aa607c01ec06e5a05bd8463401
  - name: concurrent-queue
    version: 2.4.0
    sha: d16048cd947b08fa32c24458a22f5dc5e835264f689f4f5653210c69fd107363
  - name: core-foundation-sys
    version: 0.8.6
    sha: 06ea2b9bc92be3c2baa9334a323ebca2d6f074ff852cd1d7b11064035cd3868f
  - name: cpufeatures
    version: 0.2.12
    sha: 53fe5e26ff1b7aef8bca9c6080520cfb8d9333c7568e1829cef191a9723e5504
  - name: crossbeam-utils
    version: 0.8.19
    sha: 248e3bacc7dc6baa3b21e405ee045c3047101a49145e7e9eca583ab4c2ca5345
  - name: crypto-common
    version: 0.1.6
    sha: 1bfb12502f3fc46cca1bb51ac28df9d618d813cdc3d2f25b9fe775a34af26bb3
  - name: derivative
    version: 2.2.0
    sha: fcc3dd5e9e9c0b295d6e1e4d811fb6f157d5ffd784b8d202fc62eac8035a770b
  - name: digest
    version: 0.10.7
    sha: 9ed9a281f7bc9b7576e61468ba615a66a5c8cfdff42420a70aa82701a3b1e292
  - name: either
    version: 1.11.0
    sha: a47c1c47d2f5964e29c61246e81db715514cd532db6b5116a25ea3c03d6780a2
  - name: endi
    version: 1.1.0
    sha: a3d8a32ae18130a3c84dd492d4215c3d913c3b07c6b63c2eb3eb7ff1101ab7bf
  - name: enumflags2
    version: 0.7.9
    sha: 3278c9d5fb675e0a51dabcf4c0d355f692b064171535ba72361be1528a9d8e8d
  - name: enumflags2_derive
    version: 0.7.9
    sha: 5c785274071b1b420972453b306eeca06acf4633829db4223b58a2a8c5953bc4
  - name: equivalent
    version: 1.0.1
    sha: 5443807d6dff69373d433ab9ef5378ad8df50ca6298caf15de6e52e24aaf54d5
  - name: errno
    version: 0.3.8
    sha: a258e46cdc063eb8519c00b9fc845fc47bcfca4130e2f08e88665ceda8474245
  - name: event-listener
    version: 2.5.3
    sha: 0206175f82b8d6bf6652ff7d71a1e27fd2e4efde587fd368662814d6ec1d9ce0
  - name: event-listener
    version: 4.0.3
    sha: 67b215c49b2b248c855fb73579eb1f4f26c38ffdc12973e20e07b91d78d5646e
  - name: event-listener
    version: 5.3.0
    sha: 6d9944b8ca13534cdfb2800775f8dd4902ff3fc75a50101466decadfdf322a24
  - name: event-listener-strategy
    version: 0.4.0
    sha: 958e4d70b6d5e81971bebec42271ec641e7ff4e170a6fa605f2b8a8b65cb97d3
  - name: event-listener-strategy
    version: 0.5.1
    sha: 332f51cb23d20b0de8458b86580878211da09bcd4503cb579c225b3d124cabb3
  - name: fastrand
    version: 2.0.2
    sha: 658bd65b1cf4c852a3cc96f18a8ce7b5640f6b703f905c7d74532294c2a63984
  - name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - name: form_urlencoded
    version: 1.2.1
    sha: e13624c2627564efccf4934284bdd98cbaa14e79b0b5a141218e507b3a823456
  - name: futures-channel
    version: 0.3.30
    sha: eac8f7d7865dcb88bd4373ab671c8cf4508703796caa2b1985a9ca867b3fcb78
  - name: futures-core
    version: 0.3.30
    sha: dfc6580bb841c5a68e9ef15c77ccc837b40a7504914d52e47b8b0e9bbda25a1d
  - name: futures-executor
    version: 0.3.30
    sha: a576fc72ae164fca6b9db127eaa9a9dda0d61316034f33a0a0d4eda41f02b01d
  - name: futures-io
    version: 0.3.30
    sha: a44623e20b9681a318efdd71c299b6b222ed6f231972bfe2f224ebad6311f0c1
  - name: futures-lite
    version: 2.3.0
    sha: 52527eb5074e35e9339c6b4e8d12600c7128b68fb25dcb9fa9dec18f7c25f3a5
  - name: futures-macro
    version: 0.3.30
    sha: 87750cf4b7a4c0625b1529e4c543c2182106e4dedc60a2a6455e00d212c489ac
  - name: futures-sink
    version: 0.3.30
    sha: 9fb8e00e87438d937621c1c6269e53f536c14d3fbd6a042bb24879e57d474fb5
  - name: futures-task
    version: 0.3.30
    sha: 38d84fa142264698cdce1a9f9172cf383a0c82de1bddcf3092901442c4097004
  - name: futures-util
    version: 0.3.30
    sha: 3d6401deb83407ab3da39eba7e33987a73c3df0c82b4bb5813ee871c19c41d48
  - name: gdk-pixbuf
    version: 0.19.2
    sha: f6a23f8a0b5090494fd04924662d463f8386cc678dd3915015a838c1a3679b92
  - name: gdk-pixbuf-sys
    version: 0.19.0
    sha: 3dcbd04c1b2c4834cc008b4828bc917d062483b88d26effde6342e5622028f96
  - name: gdk4
    version: 0.8.1
    sha: 9100b25604183f2fd97f55ef087fae96ab4934d7215118a35303e422688e6e4b
  - name: gdk4-sys
    version: 0.8.1
    sha: d0b76874c40bb8d1c7d03a7231e23ac75fa577a456cd53af32ec17ec8f121626
  - name: gdk4-wayland
    version: 0.8.1
    sha: 13fc91be838be766ff038221e068e05e4083f3b6cf48ef1f5251ba28f98f80bf
  - name: gdk4-wayland-sys
    version: 0.8.1
    sha: c5cdc6c5cb3f64ba9b810782077939a0fc8d82e809f0147054bbe41910ac2b51
  - name: gdk4-win32
    version: 0.8.1
    sha: ab6181b6e5c91ee292dca0032b00d48dee8e61358253742c9752537a88486b3f
  - name: gdk4-win32-sys
    version: 0.8.1
    sha: efa8530d6619cf43f007f3efd993a356e1ca4e643c4d0bd2a99832a08af2e402
  - name: gdk4-x11
    version: 0.8.1
    sha: bff98d3e61807ecc1ddd15cf746b9de14fb6499fc259ca9e8d87d92e8901c7db
  - name: gdk4-x11-sys
    version: 0.8.1
    sha: 30406b31a7c355c73c504c9b31d35806397944165730eca7db46f0409abf8f8f
  - name: generic-array
    version: 0.14.7
    sha: 85649ca51fd72272d7821adaf274ad91c288277713d9c18820d8499a7ff69e9a
  - name: getrandom
    version: 0.2.14
    sha: 94b22e06ecb0110981051723910cbf0b5f5e09a2062dd7663334ee79a9d1286c
  - name: gettext-rs
    version: 0.7.0
    sha: e49ea8a8fad198aaa1f9655a2524b64b70eb06b2f3ff37da407566c93054f364
  - name: gettext-sys
    version: 0.21.3
    sha: c63ce2e00f56a206778276704bbe38564c8695249fdc8f354b4ef71c57c3839d
  - name: gio
    version: 0.19.4
    sha: 3f91a0518c2ec539f099d3f945ab2d6a83ec372a9ef40a21906343b191182845
  - name: gio-sys
    version: 0.19.0
    sha: bcf8e1d9219bb294636753d307b030c1e8a032062cba74f493c431a5c8b81ce4
  - name: glib
    version: 0.19.4
    sha: ae1407b2ce171e654720be10d57d4054d3ff2f10a13d5b37e6819b41439832f7
  - name: glib-macros
    version: 0.19.4
    sha: d8bba315e8ce8aa59631545358450f4962557e89b5f7db7442e7153b47037f71
  - name: glib-sys
    version: 0.19.0
    sha: 630f097773d7c7a0bb3258df4e8157b47dc98bbfa0e60ad9ab56174813feced4
  - name: gobject-sys
    version: 0.19.0
    sha: c85e2b1080b9418dd0c58b498da3a5c826030343e0ef07bde6a955d28de54979
  - name: graphene-rs
    version: 0.19.2
    sha: 99e4d388e96c5f29e2b2f67045d229ddf826d0a8d6d282f94ed3b34452222c91
  - name: graphene-sys
    version: 0.19.0
    sha: 236ed66cc9b18d8adf233716f75de803d0bf6fc806f60d14d948974a12e240d0
  - name: gsk4
    version: 0.8.1
    sha: c65036fc8f99579e8cb37b12487969b707ab23ec8ab953682ff347cbd15d396e
  - name: gsk4-sys
    version: 0.8.1
    sha: bd24c814379f9c3199dc53e52253ee8d0f657eae389ab282c330505289d24738
  - name: gst-plugin-gtk4
    version: 0.12.3
    sha: 83c12132d3619f85db54f6034b4e3872577886657b07e055c521baeb2d5f6733
  - name: gst-plugin-version-helper
    version: 0.8.2
    sha: 4e5e874f1660252fd2ec81c602066df3633b3a6fcbe2b196f7f93c27cf069b2a
  - name: gstreamer
    version: 0.22.4
    sha: fc6f2d7dcde4b42b5297d25e9f51914cacfa148c99ba6ddabebf006fb2b18c20
  - name: gstreamer-audio
    version: 0.22.4
    sha: 73a5de9ced05f9650168a74c7a4afeddbf3e63af595a7d56a700765be3b4869c
  - name: gstreamer-audio-sys
    version: 0.22.0
    sha: 34d92a1e2a915874f70f0a33c3ea4589bc6b66a138b6ec8bb6acedf49bdec2c3
  - name: gstreamer-base
    version: 0.22.0
    sha: 514c71195b53c7eced4842b66ca9149833e41cf6a1d949e45e2ca4a4fa929850
  - name: gstreamer-base-sys
    version: 0.22.0
    sha: 286591e0f85bbda1adf9bab6f21d015acd9ca0a4d4acb61da65e3d0487e23c4e
  - name: gstreamer-gl
    version: 0.22.0
    sha: 7d21c0c5fbf74018a0254b3ab77bca0a5b2c0f002bcfd910c09113ae90a95d98
  - name: gstreamer-gl-egl
    version: 0.22.0
    sha: dfde7bf67f5f7c87e1ff29cdeea4918530d677b51e3f4847121ada44f1fab139
  - name: gstreamer-gl-egl-sys
    version: 0.22.0
    sha: 7c9ec3c03af5d4ed3e58ddbca4eea13e90e01b88e37f6c0689b26e05168eb7bf
  - name: gstreamer-gl-sys
    version: 0.22.0
    sha: 61d1e3b9b02abc23835e9d770f2bd705b67a50406ea37e963b4526a77c6a7cd8
  - name: gstreamer-gl-wayland
    version: 0.22.0
    sha: f9fbfe3d0c2469023b73df8408a4b19daaf7bd30141e9fc67e4ab63d41db5ee2
  - name: gstreamer-gl-wayland-sys
    version: 0.22.0
    sha: 83bc79debd1ef92795a3bd411986b19dbfe2527424f396e460aacc59d5fab4f1
  - name: gstreamer-gl-x11
    version: 0.22.0
    sha: 42ed82941c84668d89dbf81f220083422268c22ec6ab4991806649ed6758cec8
  - name: gstreamer-gl-x11-sys
    version: 0.22.0
    sha: 54b59f2782f5e71e3ef5fd534598938966a4dc3911f2540807f7d13b586e4ed1
  - name: gstreamer-pbutils
    version: 0.22.0
    sha: f173b14cdf3d10bc57d136797946fe2091c322015d879919765c317a0ea5edb3
  - name: gstreamer-pbutils-sys
    version: 0.22.0
    sha: 6b3afcb1df3d217b2a6b00aa7a391a779764b5be6ccb7dcf35b5690279c61c5c
  - name: gstreamer-sys
    version: 0.22.2
    sha: d5ddf526b3bf90ea627224c804f00b8bcb0452e3b447978b4d5092f8e8ff5918
  - name: gstreamer-video
    version: 0.22.4
    sha: 5fc0a96481ecfcdd120d5057bb7ab5a6f6cd392cc34ba1e8b86cac3ba082f788
  - name: gstreamer-video-sys
    version: 0.22.1
    sha: c1ea7996ba44fbbf563aeeda96e24259efc9f06b407854d837ee58e260d7ba78
  - name: gtk4
    version: 0.8.1
    sha: aa82753b8c26277e4af1446c70e35b19aad4fb794a7b143859e7eeb9a4025d83
  - name: gtk4-macros
    version: 0.8.1
    sha: 40300bf071d2fcd4c94eacc09e84ec6fe73129d2ceb635cf7e55b026b5443567
  - name: gtk4-sys
    version: 0.8.1
    sha: 0db1b104138f087ccdc81d2c332de5dd049b89de3d384437cc1093b17cd2da18
  - name: hashbrown
    version: 0.14.3
    sha: 290f1a1d9242c78d09ce40a5e87e7554ee637af1351968159f4952f028f75604
  - name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - name: hermit-abi
    version: 0.3.9
    sha: d231dfb89cfffdbc30e7fc41579ed6066ad03abda9e567ccafae602b97ec5024
  - name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - name: iana-time-zone
    version: 0.1.60
    sha: e7ffbb5a1b541ea2561f8c41c087286cc091e21e556a4f09a8f6cbf17b69b141
  - name: iana-time-zone-haiku
    version: 0.1.2
    sha: f31827a206f56af32e590ba56d5d2d085f558508192593743f16b2306495269f
  - name: idna
    version: 0.5.0
    sha: 634d9b1461af396cad843f47fdba5597a4f9e6ddd4bfb6ff5d85028c25cb12f6
  - name: indexmap
    version: 2.2.6
    sha: 168fb715dda47215e360912c096649d23d58bf392ac62f73919e831745e40f26
  - name: itertools
    version: 0.12.1
    sha: ba291022dbbd398a455acf126c1e341954079855bc60dfdda641363bd6922569
  - name: js-sys
    version: 0.3.69
    sha: 29c15563dc2726973df627357ce0c9ddddbea194836909d655df6a75d2cf296d
  - name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - name: libadwaita
    version: 0.6.0
    sha: 91b4990248b9e1ec5e72094a2ccaea70ec3809f88f6fd52192f2af306b87c5d9
  - name: libadwaita-sys
    version: 0.6.0
    sha: 23a748e4e92be1265cd9e93d569c0b5dfc7814107985aa6743d670ab281ea1a8
  - name: libc
    version: 0.2.153
    sha: 9c198f91728a82281a64e1f4f9eeb25d82cb32a5de251c6bd1b5154d63a8e7bd
  - name: linux-raw-sys
    version: 0.4.13
    sha: 01cda141df6706de531b6c46c3a33ecca755538219bd484262fa09410c13539c
  - name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - name: log
    version: 0.4.21
    sha: 90ed8c1e510134f979dbc4f070f87d4313098b704861a105fe34231c70a3901c
  - name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - name: memchr
    version: 2.7.2
    sha: 6c8640c5d730cb13ebd907d8d04b52f55ac9a2eec55b440c8892f40d56c76c1d
  - name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - name: muldiv
    version: 1.0.1
    sha: 956787520e75e9bd233246045d19f42fb73242759cc57fba9611d940ae96d4b0
  - name: nix
    version: 0.28.0
    sha: ab2156c4fce2f8df6c499cc1c763e4394b7482525bf2a9701c9d79d215f519e4
  - name: nu-ansi-term
    version: 0.46.0
    sha: 77a8165726e8236064dbb45459242600304b42a5ea24ee2948e18e023bf7ba84
  - name: num-integer
    version: 0.1.46
    sha: 7969661fd2958a5cb096e56c8e1ad0444ac2bbcd0061bd28660485a44879858f
  - name: num-rational
    version: 0.4.1
    sha: 0638a1c9d0a3c0914158145bc76cff373a75a627e6ecbfb71cbe6f453a5a19b0
  - name: num-traits
    version: 0.2.18
    sha: da0df0e5185db44f69b44f26786fe401b6c293d1907744beaa7fa62b2e5a517a
  - name: objc
    version: 0.2.7
    sha: 915b1b472bc21c53464d6c8461c9d3af805ba1ef837e1cac254428f4a77177b1
  - name: objc-foundation
    version: 0.1.1
    sha: 1add1b659e36c9607c7aab864a76c7a4c2760cd0cd2e120f3fb8b952c7e22bf9
  - name: objc_id
    version: 0.1.1
    sha: c92d4ddb4bd7b50d730c215ff871754d0da6b2178849f8a2a2ab69712d0c073b
  - name: once_cell
    version: 1.19.0
    sha: 3fdb12b2476b595f9358c5161aa467c2438859caa136dec86c26fdd2efe17b92
  - name: option-operations
    version: 0.5.0
    sha: 7c26d27bb1aeab65138e4bf7666045169d1717febcc9ff870166be8348b223d0
  - name: ordered-stream
    version: 0.2.0
    sha: 9aa2b01e1d916879f73a53d01d1d6cee68adbb31d6d9177a8cfce093cced1d50
  - name: overload
    version: 0.1.1
    sha: b15813163c1d831bf4a13c3610c05c0d03b39feb07f7e09fa234dac9b15aaf39
  - name: pango
    version: 0.19.3
    sha: b1264d13deb823cc652f26cfe59afb1ec4b9db2a5bd27c41b738c879cc1bfaa1
  - name: pango-sys
    version: 0.19.0
    sha: f52ef6a881c19fbfe3b1484df5cad411acaaba29dbec843941c3110d19f340ea
  - name: parking
    version: 2.2.0
    sha: bb813b8af86854136c6922af0598d719255ecb2179515e6e7730d468f05c9cae
  - name: paste
    version: 1.0.14
    sha: de3145af08024dea9fa9914f381a17b8fc6034dfb00f3a84013f7ff43f29ed4c
  - name: percent-encoding
    version: 2.3.1
    sha: e3148f5046208a5d56bcfc03053e3ca6334e51da8dfb19b6cdc8b306fae3283e
  - name: pin-project-lite
    version: 0.2.14
    sha: bda66fc9667c18cb2758a2ac84d1167245054bcf85d5d1aaa6923f45801bdd02
  - name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - name: piper
    version: 0.2.1
    sha: 668d31b1c4eba19242f2088b2bf3316b82ca31082a8335764db4e083db7485d4
  - name: pkg-config
    version: 0.3.30
    sha: d231b230927b5e4ad203db57bbcbee2802f6bce620b1e4a9024a07d94e2907ec
  - name: polling
    version: 3.6.0
    sha: e0c976a60b2d7e99d6f229e414670a9b85d13ac305cc6d1e9c134de58c5aaaf6
  - name: ppv-lite86
    version: 0.2.17
    sha: 5b40af805b3121feab8a3c29f04d8ad262fa8e0561883e7653e024ae4479e6de
  - name: proc-macro-crate
    version: 3.1.0
    sha: 6d37c51ca738a55da99dc0c4a34860fd675453b8b36209178c2249bb13651284
  - name: proc-macro-error
    version: 1.0.4
    sha: da25490ff9892aab3fcf7c36f08cfb902dd3e71ca0f9f9517bea02a73a5ce38c
  - name: proc-macro-error-attr
    version: 1.0.4
    sha: a1be40180e52ecc98ad80b184934baf3d0d29f979574e439af5a55274b35f869
  - name: proc-macro2
    version: 1.0.80
    sha: a56dea16b0a29e94408b9aa5e2940a4eedbd128a1ba20e8f7ae60fd3d465af0e
  - name: quote
    version: 1.0.36
    sha: 0fa76aaf39101c457836aec0ce2316dbdc3ab723cdda1c6bd4e6ad4208acaca7
  - name: rand
    version: 0.8.5
    sha: 34af8d1a0e25924bc5b7c43c079c942339d8f0a8b57c39049bef581b46327404
  - name: rand_chacha
    version: 0.3.1
    sha: e6c10a63a0fa32252be49d21e7709d4d4baf8d231c2dbce1eaa8141b9b127d88
  - name: rand_core
    version: 0.6.4
    sha: ec0be4795e2f6a28069bec0b5ff3e2ac9bafc99e6a9a7dc3547996c5c816922c
  - name: regex
    version: 1.10.4
    sha: c117dbdfde9c8308975b6a18d71f3f385c89461f7b3fb054288ecf2a2058ba4c
  - name: regex-automata
    version: 0.4.6
    sha: 86b83b8b9847f9bf95ef68afb0b8e6cdb80f498442f5179a29fad448fcc1eaea
  - name: regex-syntax
    version: 0.8.3
    sha: adad44e29e4c806119491a7f06f03de4d1af22c3a680dd47f1e6e179439d1f56
  - name: rustc_version
    version: 0.4.0
    sha: bfa0f585226d2e68097d4f95d113b15b83a82e819ab25717ec0590d9584ef366
  - name: rustix
    version: 0.38.32
    sha: 65e04861e65f21776e67888bfbea442b3642beaa0138fdb1dd7a84a52dffdb89
  - name: semver
    version: 1.0.22
    sha: 92d43fe69e652f3df9bdc2b85b2854a0825b86e4fb76bc44d945137d053639ca
  - name: serde
    version: 1.0.197
    sha: 3fb1c873e1b9b056a4dc4c0c198b24c3ffa059243875552b2bd0933b1aee4ce2
  - name: serde_derive
    version: 1.0.197
    sha: 7eb0b34b42edc17f6b7cac84a52a1c5f0e1bb2227e997ca9011ea3dd34e8610b
  - name: serde_repr
    version: 0.1.19
    sha: 6c64451ba24fc7a6a2d60fc75dd9c83c90903b19028d4eff35e88fc1e86564e9
  - name: serde_spanned
    version: 0.6.5
    sha: eb3622f419d1296904700073ea6cc23ad690adbd66f13ea683df73298736f0c1
  - name: sha1
    version: 0.10.6
    sha: e3bf829a2d51ab4a5ddf1352d8470c140cadc8301b2ae1789db023f01cedd6ba
  - name: sharded-slab
    version: 0.1.7
    sha: f40ca3c46823713e0d4209592e8d6e826aa57e928f09752619fc696c499637f6
  - name: signal-hook-registry
    version: 1.4.1
    sha: d8229b473baa5980ac72ef434c4415e70c4b5e71b423043adb4ba059f89c99a1
  - name: slab
    version: 0.4.9
    sha: 8f92a496fb766b417c996b9c5e57daf2f7ad3b0bebe1ccfca4856390e3d3bb67
  - name: smallvec
    version: 1.13.2
    sha: 3c5e1a9a646d36c3599cd173a41282daf47c44583ad367b8e6837255952e5c67
  - name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - name: syn
    version: 2.0.59
    sha: 4a6531ffc7b071655e4ce2e04bd464c4830bb585a61cabb96cf808f05172615a
  - name: system-deps
    version: 6.2.2
    sha: a3e535eb8dded36d55ec13eddacd30dec501792ff23a0b1682c38601b8cf2349
  - name: target-lexicon
    version: 0.12.14
    sha: e1fc403891a21bcfb7c37834ba66a547a8f402146eba7265b5a6d88059c9ff2f
  - name: temp-dir
    version: 0.1.13
    sha: 1f227968ec00f0e5322f9b8173c7a0cbcff6181a0a5b28e9892491c286277231
  - name: tempfile
    version: 3.10.1
    sha: 85b77fafb263dd9d05cbeac119526425676db3784113aa9295c88498cbf8bff1
  - name: thiserror
    version: 1.0.58
    sha: 03468839009160513471e86a034bb2c5c0e4baae3b43f79ffc55c4a5427b3297
  - name: thiserror-impl
    version: 1.0.58
    sha: c61f3ba182994efc43764a46c018c347bc492c79f024e705f46567b418f6d4f7
  - name: thread_local
    version: 1.1.8
    sha: 8b9ef9bad013ada3808854ceac7b46812a6465ba368859a37e2100283d2d719c
  - name: tinyvec
    version: 1.6.0
    sha: 87cc5ceb3875bb20c2890005a4e226a4651264a5c75edb2421b52861a0a0cb50
  - name: tinyvec_macros
    version: 0.1.1
    sha: 1f3ccbac311fea05f86f61904b462b55fb3df8837a366dfc601a0161d0532f20
  - name: toml
    version: 0.8.12
    sha: e9dd1545e8208b4a5af1aa9bbd0b4cf7e9ea08fabc5d0a5c67fcaafa17433aa3
  - name: toml_datetime
    version: 0.6.5
    sha: 3550f4e9685620ac18a50ed434eb3aec30db8ba93b0287467bca5826ea25baf1
  - name: toml_edit
    version: 0.21.1
    sha: 6a8534fd7f78b5405e860340ad6575217ce99f38d4d5c8f2442cb5ecb50090e1
  - name: toml_edit
    version: 0.22.9
    sha: 8e40bb779c5187258fd7aad0eb68cb8706a0a81fa712fbea808ab43c4b8374c4
  - name: tracing
    version: 0.1.40
    sha: c3523ab5a71916ccf420eebdf5521fcef02141234bbc0b8a49f2fdc4544364ef
  - name: tracing-attributes
    version: 0.1.27
    sha: 34704c8d6ebcbc939824180af020566b01a7c01f80641264eba0999f6c2b6be7
  - name: tracing-core
    version: 0.1.32
    sha: c06d3da6113f116aaee68e4d601191614c9053067f9ab7f6edbcb161237daa54
  - name: tracing-log
    version: 0.2.0
    sha: ee855f1f400bd0e5c02d150ae5de3840039a3f54b025156404e34c23c03f47c3
  - name: tracing-subscriber
    version: 0.3.18
    sha: ad0f048c97dbd9faa9b7df56362b8ebcaa52adb06b498c050d2f4e32f90a7a8b
  - name: typenum
    version: 1.17.0
    sha: 42ff0bf0c66b8238c6f3b578df37d0b7848e55df8577b3f74f92a69acceeb825
  - name: uds_windows
    version: 1.1.0
    sha: 89daebc3e6fd160ac4aa9fc8b3bf71e1f74fbf92367ae71fb83a037e8bf164b9
  - name: unicode-bidi
    version: 0.3.15
    sha: 08f95100a766bf4f8f28f90d77e0a5461bbdb219042e7679bebe79004fed8d75
  - name: unicode-ident
    version: 1.0.12
    sha: 3354b9ac3fae1ff6755cb6db53683adb661634f67557942dea4facebec0fee4b
  - name: unicode-normalization
    version: 0.1.23
    sha: a56d1686db2308d901306f92a263857ef59ea39678a5458e7cb17f01415101f5
  - name: url
    version: 2.5.0
    sha: 31e6302e3bb753d46e83516cae55ae196fc0c309407cf11ab35cc51a4c2a4633
  - name: valuable
    version: 0.1.0
    sha: 830b7e5d4d90034032940e4ace0d9a9a057e7a45cd94e6c007832e39edb82f6d
  - name: version-compare
    version: 0.2.0
    sha: 852e951cb7832cb45cb1169900d19760cfa39b82bc0ea9c0e5a14ae88411c98b
  - name: version_check
    version: 0.9.4
    sha: 49874b5167b65d7193b8aba1567f5c7d93d001cafc34600cee003eda787e483f
  - name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
  - name: wasm-bindgen
    version: 0.2.92
    sha: 4be2531df63900aeb2bca0daaaddec08491ee64ceecbee5076636a3b026795a8
  - name: wasm-bindgen-backend
    version: 0.2.92
    sha: 614d787b966d3989fa7bb98a654e369c762374fd3213d212cfc0251257e747da
  - name: wasm-bindgen-macro
    version: 0.2.92
    sha: a1f8823de937b71b9460c0c34e25f3da88250760bec0ebac694b49997550d726
  - name: wasm-bindgen-macro-support
    version: 0.2.92
    sha: e94f17b526d0a461a191c78ea52bbce64071ed5c04c9ffe424dcb38f74171bb7
  - name: wasm-bindgen-shared
    version: 0.2.92
    sha: af190c94f2773fdb3729c55b007a722abb5384da03bc0986df4c289bf5567e96
  - name: winapi
    version: 0.3.9
    sha: 5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419
  - name: winapi-i686-pc-windows-gnu
    version: 0.4.0
    sha: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
  - name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
  - name: windows-core
    version: 0.52.0
    sha: 33ab640c8d7e35bf8ba19b884ba838ceb4fba93a4e8c65a9059d08afcfc683d9
  - name: windows-sys
    version: 0.48.0
    sha: 677d2418bec65e3338edb076e806bc1ec15693c5d0104683f2efe857f61056a9
  - name: windows-sys
    version: 0.52.0
    sha: 282be5f36a8ce781fad8c8ae18fa3f9beff57ec1b52cb3de0789201425d9a33d
  - name: windows-targets
    version: 0.48.5
    sha: 9a2fa6e2155d7247be68c096456083145c183cbbbc2764150dda45a87197940c
  - name: windows-targets
    version: 0.52.5
    sha: 6f0713a46559409d202e70e28227288446bf7841d3211583a4b53e3f6d96e7eb
  - name: windows_aarch64_gnullvm
    version: 0.48.5
    sha: 2b38e32f0abccf9987a4e3079dfb67dcd799fb61361e53e2882c3cbaf0d905d8
  - name: windows_aarch64_gnullvm
    version: 0.52.5
    sha: 7088eed71e8b8dda258ecc8bac5fb1153c5cffaf2578fc8ff5d61e23578d3263
  - name: windows_aarch64_msvc
    version: 0.48.5
    sha: dc35310971f3b2dbbf3f0690a219f40e2d9afcf64f9ab7cc1be722937c26b4bc
  - name: windows_aarch64_msvc
    version: 0.52.5
    sha: 9985fd1504e250c615ca5f281c3f7a6da76213ebd5ccc9561496568a2752afb6
  - name: windows_i686_gnu
    version: 0.48.5
    sha: a75915e7def60c94dcef72200b9a8e58e5091744960da64ec734a6c6e9b3743e
  - name: windows_i686_gnu
    version: 0.52.5
    sha: 88ba073cf16d5372720ec942a8ccbf61626074c6d4dd2e745299726ce8b89670
  - name: windows_i686_gnullvm
    version: 0.52.5
    sha: 87f4261229030a858f36b459e748ae97545d6f1ec60e5e0d6a3d32e0dc232ee9
  - name: windows_i686_msvc
    version: 0.48.5
    sha: 8f55c233f70c4b27f66c523580f78f1004e8b5a8b659e05a4eb49d4166cca406
  - name: windows_i686_msvc
    version: 0.52.5
    sha: db3c2bf3d13d5b658be73463284eaf12830ac9a26a90c717b7f771dfe97487bf
  - name: windows_x86_64_gnu
    version: 0.48.5
    sha: 53d40abd2583d23e4718fddf1ebec84dbff8381c07cae67ff7768bbf19c6718e
  - name: windows_x86_64_gnu
    version: 0.52.5
    sha: 4e4246f76bdeff09eb48875a0fd3e2af6aada79d409d33011886d3e1581517d9
  - name: windows_x86_64_gnullvm
    version: 0.48.5
    sha: 0b7b52767868a23d5bab768e390dc5f5c55825b6d30b86c844ff2dc7414044cc
  - name: windows_x86_64_gnullvm
    version: 0.52.5
    sha: 852298e482cd67c356ddd9570386e2862b5673c85bd5f88df9ab6802b334c596
  - name: windows_x86_64_msvc
    version: 0.48.5
    sha: ed94fce61571a4006852b7389a063ab983c02eb1bb37b47f8272ce92d06d9538
  - name: windows_x86_64_msvc
    version: 0.52.5
    sha: bec47e5bfd1bff0eeaf6d8b485cc1074891a197ab4225d504cb7a1ab88b02bf0
  - name: winnow
    version: 0.5.40
    sha: f593a95398737aeed53e489c785df13f3618e41dbcd6718c6addbf1395aa6876
  - name: winnow
    version: 0.6.6
    sha: f0c976aaaa0e1f90dbb21e9587cdaf1d9679a1cde8875c0d6bd83ab96a208352
  - name: xdg-home
    version: 1.1.0
    sha: 21e5a325c3cb8398ad6cf859c1135b25dd29e186679cf2da7581d9679f63b38e
  - name: zbus
    version: 4.1.2
    sha: c9ff46f2a25abd690ed072054733e0bc3157e3d4c45f41bd183dce09c2ff8ab9
  - name: zbus_macros
    version: 4.1.2
    sha: 4e0e3852c93dcdb49c9462afe67a2a468f7bd464150d866e861eaf06208633e0
  - name: zbus_names
    version: 3.0.0
    sha: 4b9b1fef7d021261cc16cba64c351d291b715febe0fa10dc3a443ac5a5022e6c
  - name: zvariant
    version: 4.0.2
    sha: 2c1b3ca6db667bfada0f1ebfc94b2b1759ba25472ee5373d4551bb892616389a
  - name: zvariant_derive
    version: 4.0.2
    sha: b7a4b236063316163b69039f77ce3117accb41a09567fd24c168e43491e521bc
  - name: zvariant_utils
    version: 1.1.0
    sha: 00bedb16a193cc12451873fee2a1bc6550225acece0e36f333e68326c73c8172
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
