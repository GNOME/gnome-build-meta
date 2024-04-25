kind: meson

sources:
- kind: tar
  url: gnome_downloads:snapshot/46/snapshot-46.2.tar.xz
  ref: 11fe79a12bb34051e2a279da8c1f454587d011a14fc24237e454c64f44bacf4d
- kind: cargo
  ref:
  - name: aho-corasick
    version: 1.1.2
    sha: b2969dcb958b36655471fc61f7e416fa76033bdd4bfed0678d8fee1e2d07a1f0
  - name: android-tzdata
    version: 0.1.1
    sha: e999941b234f3131b00bc13c22d06e8c5ff726d1b6318ac7eb276997bbb4fef0
  - name: android_system_properties
    version: 0.1.5
    sha: 819e7219dbd41043ac279b19830f2efc897156490d7fd6ea916720117ee66311
  - name: anyhow
    version: 1.0.80
    sha: 5ad32ce52e4161730f7098c077cd2ed6229b5804ccf99e5366be1ab72a98b4e1
  - name: async-channel
    version: 2.2.0
    sha: f28243a43d821d11341ab73c80bed182dc015c514b951616cf79bd4af39af0c3
  - name: atomic_refcell
    version: 0.1.13
    sha: 41e67cd8309bbd06cd603a9e693a784ac2e5d1e955f11286e355089fcab3047c
  - name: autocfg
    version: 1.1.0
    sha: d468802bab17cbc0cc575e9b053f41e72aa36bfa6b7f55e3529ffa43161b97fa
  - name: bitflags
    version: 2.4.2
    sha: ed570934406eb16438a4e976b1b4500774099c13b8cb96eec99f620f05090ddf
  - name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - name: bumpalo
    version: 3.15.3
    sha: 8ea184aa71bb362a1157c896979544cc23974e08fd265f29ea96b59f0b4a555b
  - name: cairo-rs
    version: 0.19.2
    sha: 2650f66005301bd33cc486dec076e1293c4cecf768bc7ba9bf5d2b1be339b99c
  - name: cairo-sys-rs
    version: 0.19.2
    sha: fd3bb3119664efbd78b5e6c93957447944f16bdbced84c17a9f41c7829b81e64
  - name: cc
    version: 1.0.88
    sha: 02f341c093d19155a6e41631ce5971aac4e9a868262212153124c15fa22d1cdc
  - name: cfg-expr
    version: 0.15.7
    sha: fa50868b64a9a6fda9d593ce778849ea8715cd2a3d2cc17ffdb4a2f2f2f1961d
  - name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - name: chrono
    version: 0.4.34
    sha: 5bc015644b92d5890fab7489e49d21f879d5c990186827d42ec511919404f38b
  - name: concurrent-queue
    version: 2.4.0
    sha: d16048cd947b08fa32c24458a22f5dc5e835264f689f4f5653210c69fd107363
  - name: core-foundation-sys
    version: 0.8.6
    sha: 06ea2b9bc92be3c2baa9334a323ebca2d6f074ff852cd1d7b11064035cd3868f
  - name: crossbeam-utils
    version: 0.8.19
    sha: 248e3bacc7dc6baa3b21e405ee045c3047101a49145e7e9eca583ab4c2ca5345
  - name: either
    version: 1.10.0
    sha: 11157ac094ffbdde99aa67b23417ebdd801842852b500e395a45a9c0aac03e4a
  - name: equivalent
    version: 1.0.1
    sha: 5443807d6dff69373d433ab9ef5378ad8df50ca6298caf15de6e52e24aaf54d5
  - name: event-listener
    version: 5.1.0
    sha: b7ad6fd685ce13acd6d9541a30f6db6567a7a24c9ffd4ba2955d29e3f22c8b27
  - name: event-listener-strategy
    version: 0.5.0
    sha: feedafcaa9b749175d5ac357452a9d41ea2911da598fde46ce1fe02c37751291
  - name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
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
  - name: futures-macro
    version: 0.3.30
    sha: 87750cf4b7a4c0625b1529e4c543c2182106e4dedc60a2a6455e00d212c489ac
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
    version: 0.8.0
    sha: 6771942f85a2beaa220c64739395e4401b9fab4a52aba9b503fa1e6ed4d4d806
  - name: gdk4-sys
    version: 0.8.0
    sha: 1eb95854fab65072023a7814434f003db571d6e45c287c0b0c540c1c78bdf6ae
  - name: gdk4-wayland
    version: 0.8.0
    sha: 075cdd6b1c8aee8aefd4216b5483024f29d4102ec180f770ae28fe54f53019cf
  - name: gdk4-wayland-sys
    version: 0.8.0
    sha: 6e02d324a9bf7136bc4b610423537c5f5852d71f53dee8fe63d7ac658333e762
  - name: gdk4-win32
    version: 0.8.0
    sha: 8a77295f5aa42657046bcdec4864b2b1ed95f8f877a8ca576279b73270b94a91
  - name: gdk4-win32-sys
    version: 0.8.0
    sha: 6fba1436610ddab9493b0444fe070448cc89ff9caeb1f9682927231d932469be
  - name: gdk4-x11
    version: 0.8.0
    sha: b2f2c2b41c444f5661fd6b4e42eff18e79df627863d3e0d3db8eef984b714c41
  - name: gdk4-x11-sys
    version: 0.8.0
    sha: a90e4b5371704921d6f7704282502a47020acb456dc66129a81889b652af4dfd
  - name: gettext-rs
    version: 0.7.0
    sha: e49ea8a8fad198aaa1f9655a2524b64b70eb06b2f3ff37da407566c93054f364
  - name: gettext-sys
    version: 0.21.3
    sha: c63ce2e00f56a206778276704bbe38564c8695249fdc8f354b4ef71c57c3839d
  - name: gio
    version: 0.19.2
    sha: 2eae10b27b6dd27e22ed0d812c6387deba295e6fc004a8b379e459b663b05a02
  - name: gio-sys
    version: 0.19.0
    sha: bcf8e1d9219bb294636753d307b030c1e8a032062cba74f493c431a5c8b81ce4
  - name: glib
    version: 0.19.2
    sha: ab9e86540b5d8402e905ad4ce7d6aa544092131ab564f3102175af176b90a053
  - name: glib-macros
    version: 0.19.2
    sha: 0f5897ca27a83e4cdc7b4666850bade0a2e73e17689aabafcc9acddad9d823b8
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
    version: 0.8.0
    sha: 0e8ce8dee0fd87a11002214b1204ff18c9272fbd530408f0884a0f9b25dc31de
  - name: gsk4-sys
    version: 0.8.0
    sha: 2660a652da5b662d43924df19ba40d73f015ed427329ef51d2b1360a4e0dc0e4
  - name: gst-plugin-gtk4
    version: 0.12.1
    sha: 162762eb8df14f696707ff54382b3c02f58706255ab3a37a61d59bc1d0c0115a
  - name: gst-plugin-version-helper
    version: 0.8.1
    sha: 8185b029682824ac93ee2d9e17f84130d4c8a701e9255dfba68d72e1a4230749
  - name: gstreamer
    version: 0.22.2
    sha: 48a5e10c539f8b594c50f6cd1bd1cd07785e06d701a077bff397ad211bc92e88
  - name: gstreamer-audio
    version: 0.22.0
    sha: e7529f913cb6cbf1305ebc58ace01391cf9bb5a833810cf6e7c09e9a37d130f2
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
    version: 0.22.1
    sha: 5ab3f4045ddb92bf2b469f5db8825d4f5eb46e4beff661fc97f50bb4e2b2c626
  - name: gstreamer-video-sys
    version: 0.22.1
    sha: c1ea7996ba44fbbf563aeeda96e24259efc9f06b407854d837ee58e260d7ba78
  - name: gtk4
    version: 0.8.0
    sha: 7d26ffa3ec6316ccaa1df62d3e7f5bae1637c0acbb43f250fabef38319f73c64
  - name: gtk4-macros
    version: 0.8.0
    sha: c8b86439e9896f6f3f47c3d8077c5c8205174078760afdabd9098a8e9e937d97
  - name: gtk4-sys
    version: 0.8.0
    sha: 2abc0a6d356d59a3806021829ce6ed3e70bba3509b41a535fedcb09fae13fbc0
  - name: hashbrown
    version: 0.14.3
    sha: 290f1a1d9242c78d09ce40a5e87e7554ee637af1351968159f4952f028f75604
  - name: heck
    version: 0.4.1
    sha: 95505c38b4572b2d910cecb0281560f54b440a19336cbbcb27bf6ce6adc6f5a8
  - name: iana-time-zone
    version: 0.1.60
    sha: e7ffbb5a1b541ea2561f8c41c087286cc091e21e556a4f09a8f6cbf17b69b141
  - name: iana-time-zone-haiku
    version: 0.1.2
    sha: f31827a206f56af32e590ba56d5d2d085f558508192593743f16b2306495269f
  - name: indexmap
    version: 2.2.3
    sha: 233cf39063f058ea2caae4091bf4a3ef70a653afbc026f5c4a4135d114e3c177
  - name: itertools
    version: 0.12.1
    sha: ba291022dbbd398a455acf126c1e341954079855bc60dfdda641363bd6922569
  - name: js-sys
    version: 0.3.68
    sha: 406cda4b368d531c842222cf9d2600a9a4acce8d29423695379c6868a143a9ee
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
  - name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - name: log
    version: 0.4.20
    sha: b5e6163cb8c49088c2c36f57875e58ccd8c87c7427f7fbd50ea6710b2f3f2e8f
  - name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - name: memchr
    version: 2.7.1
    sha: 523dc4f511e55ab87b694dc30d0f820d60906ef06413f93d4d7a1385599cc149
  - name: memoffset
    version: 0.9.0
    sha: 5a634b1c61a95585bd15607c6ab0c4e5b226e695ff2800ba0cdccddf208c406c
  - name: muldiv
    version: 1.0.1
    sha: 956787520e75e9bd233246045d19f42fb73242759cc57fba9611d940ae96d4b0
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
  - name: overload
    version: 0.1.1
    sha: b15813163c1d831bf4a13c3610c05c0d03b39feb07f7e09fa234dac9b15aaf39
  - name: pango
    version: 0.19.2
    sha: 7809e8af4df8d024a066106b72ca6bc7253a484ae3867041a96103ef8a13188d
  - name: pango-sys
    version: 0.19.0
    sha: f52ef6a881c19fbfe3b1484df5cad411acaaba29dbec843941c3110d19f340ea
  - name: parking
    version: 2.2.0
    sha: bb813b8af86854136c6922af0598d719255ecb2179515e6e7730d468f05c9cae
  - name: paste
    version: 1.0.14
    sha: de3145af08024dea9fa9914f381a17b8fc6034dfb00f3a84013f7ff43f29ed4c
  - name: pin-project-lite
    version: 0.2.13
    sha: 8afb450f006bf6385ca15ef45d71d2288452bc3683ce2e2cacc0d18e4be60b58
  - name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - name: pkg-config
    version: 0.3.30
    sha: d231b230927b5e4ad203db57bbcbee2802f6bce620b1e4a9024a07d94e2907ec
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
    version: 1.0.78
    sha: e2422ad645d89c99f8f3e6b88a9fdeca7fabeac836b1002371c4367c8f984aae
  - name: quote
    version: 1.0.35
    sha: 291ec9ab5efd934aaf503a6466c5d5251535d108ee747472c3977cc5acc868ef
  - name: regex
    version: 1.10.3
    sha: b62dbe01f0b06f9d8dc7d49e05a0785f153b00b2c227856282f671e0318c9b15
  - name: regex-automata
    version: 0.4.5
    sha: 5bb987efffd3c6d0d8f5f89510bb458559eab11e4f869acb20bf845e016259cd
  - name: regex-syntax
    version: 0.8.2
    sha: c08c74e62047bb2de4ff487b251e4a92e24f48745648451635cec7d591162d9f
  - name: rustc_version
    version: 0.4.0
    sha: bfa0f585226d2e68097d4f95d113b15b83a82e819ab25717ec0590d9584ef366
  - name: semver
    version: 1.0.22
    sha: 92d43fe69e652f3df9bdc2b85b2854a0825b86e4fb76bc44d945137d053639ca
  - name: serde
    version: 1.0.197
    sha: 3fb1c873e1b9b056a4dc4c0c198b24c3ffa059243875552b2bd0933b1aee4ce2
  - name: serde_derive
    version: 1.0.197
    sha: 7eb0b34b42edc17f6b7cac84a52a1c5f0e1bb2227e997ca9011ea3dd34e8610b
  - name: serde_spanned
    version: 0.6.5
    sha: eb3622f419d1296904700073ea6cc23ad690adbd66f13ea683df73298736f0c1
  - name: sharded-slab
    version: 0.1.7
    sha: f40ca3c46823713e0d4209592e8d6e826aa57e928f09752619fc696c499637f6
  - name: slab
    version: 0.4.9
    sha: 8f92a496fb766b417c996b9c5e57daf2f7ad3b0bebe1ccfca4856390e3d3bb67
  - name: smallvec
    version: 1.13.1
    sha: e6ecd384b10a64542d77071bd64bd7b231f4ed5940fba55e98c3de13824cf3d7
  - name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - name: syn
    version: 2.0.51
    sha: 6ab617d94515e94ae53b8406c628598680aa0c9587474ecbe58188f7b345d66c
  - name: system-deps
    version: 6.2.0
    sha: 2a2d580ff6a20c55dfb86be5f9c238f67835d0e81cbdea8bf5680e0897320331
  - name: target-lexicon
    version: 0.12.14
    sha: e1fc403891a21bcfb7c37834ba66a547a8f402146eba7265b5a6d88059c9ff2f
  - name: temp-dir
    version: 0.1.12
    sha: dd16aa9ffe15fe021c6ee3766772132c6e98dfa395a167e16864f61a9cfb71d6
  - name: thiserror
    version: 1.0.57
    sha: 1e45bcbe8ed29775f228095caf2cd67af7a4ccf756ebff23a306bf3e8b47b24b
  - name: thiserror-impl
    version: 1.0.57
    sha: a953cb265bef375dae3de6663da4d3804eee9682ea80d8e2542529b73c531c81
  - name: thread_local
    version: 1.1.8
    sha: 8b9ef9bad013ada3808854ceac7b46812a6465ba368859a37e2100283d2d719c
  - name: toml
    version: 0.8.10
    sha: 9a9aad4a3066010876e8dcf5a8a06e70a558751117a145c6ce2b82c2e2054290
  - name: toml_datetime
    version: 0.6.5
    sha: 3550f4e9685620ac18a50ed434eb3aec30db8ba93b0287467bca5826ea25baf1
  - name: toml_edit
    version: 0.21.1
    sha: 6a8534fd7f78b5405e860340ad6575217ce99f38d4d5c8f2442cb5ecb50090e1
  - name: toml_edit
    version: 0.22.6
    sha: 2c1b5fd4128cc8d3e0cb74d4ed9a9cc7c7284becd4df68f5f940e1ad123606f6
  - name: tracing-core
    version: 0.1.32
    sha: c06d3da6113f116aaee68e4d601191614c9053067f9ab7f6edbcb161237daa54
  - name: tracing-log
    version: 0.2.0
    sha: ee855f1f400bd0e5c02d150ae5de3840039a3f54b025156404e34c23c03f47c3
  - name: tracing-subscriber
    version: 0.3.18
    sha: ad0f048c97dbd9faa9b7df56362b8ebcaa52adb06b498c050d2f4e32f90a7a8b
  - name: unicode-ident
    version: 1.0.12
    sha: 3354b9ac3fae1ff6755cb6db53683adb661634f67557942dea4facebec0fee4b
  - name: valuable
    version: 0.1.0
    sha: 830b7e5d4d90034032940e4ace0d9a9a057e7a45cd94e6c007832e39edb82f6d
  - name: version-compare
    version: 0.1.1
    sha: 579a42fc0b8e0c63b76519a339be31bed574929511fa53c1a3acae26eb258f29
  - name: version_check
    version: 0.9.4
    sha: 49874b5167b65d7193b8aba1567f5c7d93d001cafc34600cee003eda787e483f
  - name: wasm-bindgen
    version: 0.2.91
    sha: c1e124130aee3fb58c5bdd6b639a0509486b0338acaaae0c84a5124b0f588b7f
  - name: wasm-bindgen-backend
    version: 0.2.91
    sha: c9e7e1900c352b609c8488ad12639a311045f40a35491fb69ba8c12f758af70b
  - name: wasm-bindgen-macro
    version: 0.2.91
    sha: b30af9e2d358182b5c7449424f017eba305ed32a7010509ede96cdc4696c46ed
  - name: wasm-bindgen-macro-support
    version: 0.2.91
    sha: 642f325be6301eb8107a83d12a8ac6c1e1c54345a7ef1a9261962dfefda09e66
  - name: wasm-bindgen-shared
    version: 0.2.91
    sha: 4f186bd2dcf04330886ce82d6f33dd75a7bfcf69ecf5763b89fcde53b6ac9838
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
    version: 0.52.0
    sha: 282be5f36a8ce781fad8c8ae18fa3f9beff57ec1b52cb3de0789201425d9a33d
  - name: windows-targets
    version: 0.52.3
    sha: d380ba1dc7187569a8a9e91ed34b8ccfc33123bbacb8c0aed2d1ad7f3ef2dc5f
  - name: windows_aarch64_gnullvm
    version: 0.52.3
    sha: 68e5dcfb9413f53afd9c8f86e56a7b4d86d9a2fa26090ea2dc9e40fba56c6ec6
  - name: windows_aarch64_msvc
    version: 0.52.3
    sha: 8dab469ebbc45798319e69eebf92308e541ce46760b49b18c6b3fe5e8965b30f
  - name: windows_i686_gnu
    version: 0.52.3
    sha: 2a4e9b6a7cac734a8b4138a4e1044eac3404d8326b6c0f939276560687a033fb
  - name: windows_i686_msvc
    version: 0.52.3
    sha: 28b0ec9c422ca95ff34a78755cfa6ad4a51371da2a5ace67500cf7ca5f232c58
  - name: windows_x86_64_gnu
    version: 0.52.3
    sha: 704131571ba93e89d7cd43482277d6632589b18ecf4468f591fbae0a8b101614
  - name: windows_x86_64_gnullvm
    version: 0.52.3
    sha: 42079295511643151e98d61c38c0acc444e52dd42ab456f7ccfd5152e8ecf21c
  - name: windows_x86_64_msvc
    version: 0.52.3
    sha: 0770833d60a970638e989b3fa9fd2bb1aaadcf88963d1659fd7d9990196ed2d6
  - name: winnow
    version: 0.5.40
    sha: f593a95398737aeed53e489c785df13f3618e41dbcd6718c6addbf1395aa6876
  - name: winnow
    version: 0.6.2
    sha: 7a4191c47f15cc3ec71fcb4913cb83d58def65dd3787610213c649283b5ce178
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
