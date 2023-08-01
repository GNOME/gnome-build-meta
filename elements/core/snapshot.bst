kind: meson

sources:
- kind: git_tag
  url: gnome:Incubator/snapshot.git
  track: main
  ref: 45.alpha-62-ga9a6db0add78cad26bd317c11a6d5e7e93596b3c
- kind: cargo

  ref:
  - name: aho-corasick
    version: 1.0.2
    sha: 43f6cb1bf222025340178f382c426f13757b2960e89779dfcb319c32542a5a41
  - name: android-tzdata
    version: 0.1.1
    sha: e999941b234f3131b00bc13c22d06e8c5ff726d1b6318ac7eb276997bbb4fef0
  - name: android_system_properties
    version: 0.1.5
    sha: 819e7219dbd41043ac279b19830f2efc897156490d7fd6ea916720117ee66311
  - name: anyhow
    version: 1.0.71
    sha: 9c7d0618f0e0b7e8ff11427422b64564d5fb0be1940354bfe2e0529b18a9d9b8
  - name: ashpd
    version: 0.4.0
    sha: 31688b40eb5d739049f721d8405c33d3796b3f51f2bea84421a542dafe397e41
  - name: async-broadcast
    version: 0.5.1
    sha: 7c48ccdbf6ca6b121e0f586cbc0e73ae440e56c67c30fa0873b4e110d9c26d2b
  - name: async-channel
    version: 1.9.0
    sha: 81953c529336010edd6d8e358f886d9581267795c61b19475b71314bffa46d35
  - name: async-executor
    version: 1.5.1
    sha: 6fa3dc5f2a8564f07759c008b9109dc0d39de92a88d5588b8a5036d286383afb
  - name: async-fs
    version: 1.6.0
    sha: 279cf904654eeebfa37ac9bb1598880884924aab82e290aa65c9e77a0e142e06
  - name: async-global-executor
    version: 2.3.1
    sha: f1b6f5d7df27bd294849f8eec66ecfc63d11814df7a4f5d74168a2394467b776
  - name: async-io
    version: 1.13.0
    sha: 0fc5b45d93ef0529756f812ca52e44c221b35341892d3dcc34132ac02f3dd2af
  - name: async-lock
    version: 2.7.0
    sha: fa24f727524730b077666307f2734b4a1a1c57acb79193127dcc8914d5242dd7
  - name: async-process
    version: 1.7.0
    sha: 7a9d28b1d97e08915212e2e45310d47854eafa69600756fc735fb788f75199c9
  - name: async-recursion
    version: 1.0.4
    sha: 0e97ce7de6cf12de5d7226c73f5ba9811622f4db3a5b91b55c53e987e5f91cba
  - name: async-std
    version: 1.12.0
    sha: 62565bb4402e926b29953c785397c6dc0391b7b446e45008b0049eb43cec6f5d
  - name: async-task
    version: 4.4.0
    sha: ecc7ab41815b3c653ccd2978ec3255c81349336702dfdf62ee6f7069b12a3aae
  - name: async-trait
    version: 0.1.71
    sha: a564d521dd56509c4c47480d00b80ee55f7e385ae48db5744c67ad50c92d2ebf
  - name: atomic-waker
    version: 1.1.1
    sha: 1181e1e0d1fce796a03db1ae795d67167da795f9cf4a39c37589e85ef57f26d3
  - name: atomic_refcell
    version: 0.1.10
    sha: 79d6dc922a2792b006573f60b2648076355daeae5ce9cb59507e5908c9625d31
  - name: autocfg
    version: 1.1.0
    sha: d468802bab17cbc0cc575e9b053f41e72aa36bfa6b7f55e3529ffa43161b97fa
  - name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - name: block-buffer
    version: 0.10.4
    sha: 3078c7629b62d3f0439517fa394996acacc5cbc91c5a20d8c658e77abd503a71
  - name: blocking
    version: 1.3.1
    sha: 77231a1c8f801696fc0123ec6150ce92cffb8e164a02afb9c8ddee0e9b65ad65
  - name: bumpalo
    version: 3.13.0
    sha: a3e2c3daef883ecc1b5d58c15adae93470a91d425f3532ba1695849656af3fc1
  - name: byteorder
    version: 1.4.3
    sha: 14c189c53d098945499cdfa7ecc63567cf3886b3332b312a5b4585d8d3a6a610
  - name: cairo-rs
    version: 0.17.10
    sha: ab3603c4028a5e368d09b51c8b624b9a46edcd7c3778284077a6125af73c9f0a
  - name: cairo-sys-rs
    version: 0.17.10
    sha: 691d0c66b1fb4881be80a760cb8fe76ea97218312f9dfe2c9cc0f496ca279cb1
  - name: cc
    version: 1.0.79
    sha: 50d30906286121d95be3d479533b458f87493b30a4b5f79a607db8f5d11aa91f
  - name: cfg-expr
    version: 0.15.3
    sha: 215c0072ecc28f92eeb0eea38ba63ddfcb65c2828c46311d646f1a3ff5f9841c
  - name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - name: chrono
    version: 0.4.26
    sha: ec837a71355b28f6556dbd569b37b3f363091c0bd4b2e735674521b4c5fd9bc5
  - name: concurrent-queue
    version: 2.2.0
    sha: 62ec6771ecfa0762d24683ee5a32ad78487a3d3afdc0fb8cae19d2c5deb50b7c
  - name: core-foundation-sys
    version: 0.8.4
    sha: e496a50fda8aacccc86d7529e2c1e0892dbd0f898a6b5645b5561b89c3210efa
  - name: cpufeatures
    version: 0.2.9
    sha: a17b76ff3a4162b0b27f354a0c87015ddad39d35f9c0c36607a3bdd175dde1f1
  - name: crossbeam-utils
    version: 0.8.16
    sha: 5a22b2d63d4d1dc0b7f1b6b2747dd0088008a9be28b6ddf0b1e7d335e3037294
  - name: crypto-common
    version: 0.1.6
    sha: 1bfb12502f3fc46cca1bb51ac28df9d618d813cdc3d2f25b9fe775a34af26bb3
  - name: derivative
    version: 2.2.0
    sha: fcc3dd5e9e9c0b295d6e1e4d811fb6f157d5ffd784b8d202fc62eac8035a770b
  - name: digest
    version: 0.10.7
    sha: 9ed9a281f7bc9b7576e61468ba615a66a5c8cfdff42420a70aa82701a3b1e292
  - name: enumflags2
    version: 0.7.7
    sha: c041f5090df68b32bcd905365fd51769c8b9d553fe87fde0b683534f10c01bd2
  - name: enumflags2_derive
    version: 0.7.7
    sha: 5e9a1f9f7d83e59740248a6e14ecf93929ade55027844dfcea78beafccc15745
  - name: equivalent
    version: 1.0.0
    sha: 88bffebc5d80432c9b140ee17875ff173a8ab62faad5b257da912bd2f6c1c0a1
  - name: errno
    version: 0.3.1
    sha: 4bcfec3a70f97c962c307b2d2c56e358cf1d00b558d74262b5f929ee8cc7e73a
  - name: errno-dragonfly
    version: 0.1.2
    sha: aa68f1b12764fab894d2755d2518754e71b4fd80ecfb822714a1206c2aab39bf
  - name: event-listener
    version: 2.5.3
    sha: 0206175f82b8d6bf6652ff7d71a1e27fd2e4efde587fd368662814d6ec1d9ce0
  - name: fastrand
    version: 1.9.0
    sha: e51093e27b0797c359783294ca4f0a911c270184cb10f85783b118614a1501be
  - name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - name: form_urlencoded
    version: 1.2.0
    sha: a62bc1cf6f830c2ec14a513a9fb124d0a213a629668a4186f329db21fe045652
  - name: futures-channel
    version: 0.3.28
    sha: 955518d47e09b25bbebc7a18df10b81f0c766eaf4c4f1cccef2fca5f2a4fb5f2
  - name: futures-core
    version: 0.3.28
    sha: 4bca583b7e26f571124fe5b7561d49cb2868d79116cfa0eefce955557c6fee8c
  - name: futures-executor
    version: 0.3.28
    sha: ccecee823288125bd88b4d7f565c9e58e41858e47ab72e8ea2d64e93624386e0
  - name: futures-io
    version: 0.3.28
    sha: 4fff74096e71ed47f8e023204cfd0aa1289cd54ae5430a9523be060cdb849964
  - name: futures-lite
    version: 1.13.0
    sha: 49a9d51ce47660b1e808d3c990b4709f2f415d928835a17dfd16991515c46bce
  - name: futures-macro
    version: 0.3.28
    sha: 89ca545a94061b6365f2c7355b4b32bd20df3ff95f02da9329b34ccc3bd6ee72
  - name: futures-sink
    version: 0.3.28
    sha: f43be4fe21a13b9781a69afa4985b0f6ee0e1afab2c6f454a8cf30e2b2237b6e
  - name: futures-task
    version: 0.3.28
    sha: 76d3d132be6c0e6aa1534069c705a74a5997a356c0dc2f86a47765e5617c5b65
  - name: futures-util
    version: 0.3.28
    sha: 26b01e40b772d54cf6c6d721c1d1abd0647a0106a12ecaa1c186273392a69533
  - name: gdk-pixbuf
    version: 0.17.10
    sha: 695d6bc846438c5708b07007537b9274d883373dd30858ca881d7d71b5540717
  - name: gdk-pixbuf-sys
    version: 0.17.10
    sha: 9285ec3c113c66d7d0ab5676599176f1f42f4944ca1b581852215bf5694870cb
  - name: gdk4
    version: 0.6.3
    sha: c3abf96408a26e3eddf881a7f893a1e111767137136e347745e8ea6ed12731ff
  - name: gdk4-sys
    version: 0.6.3
    sha: 1bc92aa1608c089c49393d014c38ac0390d01e4841e1fedaa75dbcef77aaed64
  - name: gdk4-wayland
    version: 0.6.3
    sha: 2fa73894ed86fe10157436123d8baae5f2924ebc4fa48a11d8f093e07b9ecbbd
  - name: gdk4-wayland-sys
    version: 0.6.3
    sha: af41c5a9cd7e06f612b91ec45ecb423ab57921bbd92f56e46a67b962be198e0c
  - name: gdk4-win32
    version: 0.6.3
    sha: 9a79a5672b4b26ece3fc144c5be6c8d0ef2d84d37fed65002e5b1576fbc3ec00
  - name: gdk4-win32-sys
    version: 0.6.3
    sha: b2c1b84458185383da1d8877f812cccffd83a3cb42959d646e3e9a4ad0bc09ac
  - name: gdk4-x11
    version: 0.6.3
    sha: 17de2c3554d5127b9dfacd4d1801e2e3c9163bce01c6e1c407c054e9b771f2ee
  - name: gdk4-x11-sys
    version: 0.6.3
    sha: e6ca6c03d5019467d21671936edeba09f908039900af8ce4b834c19646031c72
  - name: generic-array
    version: 0.14.7
    sha: 85649ca51fd72272d7821adaf274ad91c288277713d9c18820d8499a7ff69e9a
  - name: getrandom
    version: 0.2.10
    sha: be4136b2a15dd319360be1c07d9933517ccf0be8f16bf62a3bee4f0d618df427
  - name: gettext-rs
    version: 0.7.0
    sha: e49ea8a8fad198aaa1f9655a2524b64b70eb06b2f3ff37da407566c93054f364
  - name: gettext-sys
    version: 0.21.3
    sha: c63ce2e00f56a206778276704bbe38564c8695249fdc8f354b4ef71c57c3839d
  - name: gio
    version: 0.17.10
    sha: a6973e92937cf98689b6a054a9e56c657ed4ff76de925e36fc331a15f0c5d30a
  - name: gio-sys
    version: 0.17.10
    sha: 0ccf87c30a12c469b6d958950f6a9c09f2be20b7773f7e70d20b867fdf2628c3
  - name: glib
    version: 0.17.10
    sha: d3fad45ba8d4d2cea612b432717e834f48031cd8853c8aaf43b2c79fec8d144b
  - name: glib-macros
    version: 0.17.10
    sha: eca5c79337338391f1ab8058d6698125034ce8ef31b72a442437fa6c8580de26
  - name: glib-sys
    version: 0.17.10
    sha: d80aa6ea7bba0baac79222204aa786a6293078c210abe69ef1336911d4bdc4f0
  - name: gloo-timers
    version: 0.2.6
    sha: 9b995a66bb87bebce9a0f4a95aed01daca4872c050bfcb21653361c03bc35e5c
  - name: gobject-sys
    version: 0.17.10
    sha: cd34c3317740a6358ec04572c1bcfd3ac0b5b6529275fae255b237b314bb8062
  - name: graphene-rs
    version: 0.17.10
    sha: def4bb01265b59ed548b05455040d272d989b3012c42d4c1bbd39083cb9b40d9
  - name: graphene-sys
    version: 0.17.10
    sha: 1856fc817e6a6675e36cea0bd9a3afe296f5d9709d1e2d3182803ac77f0ab21d
  - name: gsk4
    version: 0.6.3
    sha: 6f01ef44fa7cac15e2da9978529383e6bee03e570ba5bf7036b4c10a15cc3a3c
  - name: gsk4-sys
    version: 0.6.3
    sha: c07a84fb4dcf1323d29435aa85e2f5f58bef564342bef06775ec7bd0da1f01b0
  - name: gst-plugin-gtk4
    version: 0.10.10
    sha: d1e0cc90b7251d84c6b256a41973c3255cd2b2267ab1b829d053f76bca7c6290
  - name: gst-plugin-version-helper
    version: 0.7.5
    sha: 87921209945e5dc809848a100115fad65bd127671896f0206f45e272080cc4c9
  - name: gstreamer
    version: 0.20.7
    sha: c0a4150420d4aa1caf6fa15f0dba7a5007d4116380633bd1253acce206098fc9
  - name: gstreamer-audio
    version: 0.20.7
    sha: 8448db43cee0270c6ca94e6771c92a4c3b14c51ac1e6605a5f2deef66f5516f1
  - name: gstreamer-audio-sys
    version: 0.20.0
    sha: 9d4001b779e4707b32acd6ec0960e327b926369c1a34f7c41d477ac42b2670e8
  - name: gstreamer-base
    version: 0.20.7
    sha: c0896c4acff303dd21d6a96a7ea4cc9339f7096230fe1433720c9f0bed203985
  - name: gstreamer-base-sys
    version: 0.20.0
    sha: 26114ed96f6668380f5a1554128159e98e06c3a7a8460f216d7cd6dce28f928c
  - name: gstreamer-gl
    version: 0.20.0
    sha: b82b83d18ad1c4d890694b4bedde170c748462a11f51a68428671bc1bf93e71e
  - name: gstreamer-gl-egl
    version: 0.20.0
    sha: 1ec342886c7037cf18e07cf00aa5b60498ef5f9841aa36078a51f28d93970f93
  - name: gstreamer-gl-egl-sys
    version: 0.20.0
    sha: c5f6f24c488311f09198e41826634e5e693149f10c9da1f6aa1be9e4e81e414e
  - name: gstreamer-gl-sys
    version: 0.20.0
    sha: f08af9ae5ca5aa01c4875346bb7e61310b75a9afc3607b52a6b73470be93bbc7
  - name: gstreamer-gl-wayland
    version: 0.20.0
    sha: b2e8229f920f1703cdd5415ed2a8caaa9dab7794be1a190bd7e3a3d91549f417
  - name: gstreamer-gl-wayland-sys
    version: 0.20.0
    sha: 7812f3fd82eb23c3f7f564b4d5c3b175dcc1e1947a4dcb93dde9129d9197232f
  - name: gstreamer-gl-x11
    version: 0.20.0
    sha: c4a82db426e6789bcb36e093100c97f8586f3a118bb7f268f36da9421044f646
  - name: gstreamer-gl-x11-sys
    version: 0.20.0
    sha: ee27467cb653e78d5d4b0b275f45b2bce6520f5b8b6a241867ae98f3c56f23f1
  - name: gstreamer-pbutils
    version: 0.20.7
    sha: b63dd523f9dd60329ccfabdd76813b4dfe5a3bbf9fc108d3aa015f012e87778c
  - name: gstreamer-pbutils-sys
    version: 0.20.0
    sha: 7cb4493d59f28023656686c7a3581ddbd510b309a861776586afcf9a52ed222b
  - name: gstreamer-sys
    version: 0.20.0
    sha: e56fe047adef7d47dbafa8bc1340fddb53c325e16574763063702fc94b5786d2
  - name: gstreamer-video
    version: 0.20.7
    sha: b69a9554795d3791b8467a30b35ed40ef279aa41c857e6f414ffd6a182a20225
  - name: gstreamer-video-sys
    version: 0.20.0
    sha: 66ddb6112d438aac0004d2db6053a572f92b1c5e0e9d6ff6c71d9245f7f73e46
  - name: gtk4
    version: 0.6.6
    sha: b28a32a04cd75cef14a0983f8b0c669e0fe152a0a7725accdeb594e2c764c88b
  - name: gtk4-macros
    version: 0.6.6
    sha: 6a4d6b61570f76d3ee542d984da443b1cd69b6105264c61afec3abed08c2500f
  - name: gtk4-sys
    version: 0.6.3
    sha: 5f8283f707b07e019e76c7f2934bdd4180c277e08aa93f4c0d8dd07b7a34e22f
  - name: hashbrown
    version: 0.14.0
    sha: 2c6201b9ff9fd90a5a3bac2e56a830d0caa509576f0e503818ee82c181b3437a
  - name: heck
    version: 0.4.1
    sha: 95505c38b4572b2d910cecb0281560f54b440a19336cbbcb27bf6ce6adc6f5a8
  - name: hermit-abi
    version: 0.3.2
    sha: 443144c8cdadd93ebf52ddb4056d257f5b52c04d3c804e657d19eb73fc33668b
  - name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - name: iana-time-zone
    version: 0.1.57
    sha: 2fad5b825842d2b38bd206f3e81d6957625fd7f0a361e345c30e01a0ae2dd613
  - name: iana-time-zone-haiku
    version: 0.1.2
    sha: f31827a206f56af32e590ba56d5d2d085f558508192593743f16b2306495269f
  - name: idna
    version: 0.4.0
    sha: 7d20d6b07bfbc108882d88ed8e37d39636dcc260e15e30c45e6ba089610b917c
  - name: indexmap
    version: 2.0.0
    sha: d5477fe2230a79769d8dc68e0eabf5437907c0457a5614a9e8dddb67f65eb65d
  - name: instant
    version: 0.1.12
    sha: 7a5bbe824c507c5da5956355e86a746d82e0e1464f65d862cc5e71da70e94b2c
  - name: io-lifetimes
    version: 1.0.11
    sha: eae7b9aee968036d54dce06cebaefd919e4472e753296daccd6d344e3e2df0c2
  - name: js-sys
    version: 0.3.64
    sha: c5f195fe497f702db0f318b07fdd68edb16955aed830df8363d837542f8f935a
  - name: kv-log-macro
    version: 1.0.7
    sha: 0de8b303297635ad57c9f5059fd9cee7a47f8e8daa09df0fcd07dd39fb22977f
  - name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - name: libadwaita
    version: 0.4.4
    sha: 1ab9c0843f9f23ff25634df2743690c3a1faffe0a190e60c490878517eb81abf
  - name: libadwaita-sys
    version: 0.4.4
    sha: 4231cb2499a9f0c4cdfa4885414b33e39901ddcac61150bc0bb4ff8a57ede404
  - name: libc
    version: 0.2.147
    sha: b4668fb0ea861c1df094127ac5f1da3409a82116a4ba74fca2e58ef927159bb3
  - name: linux-raw-sys
    version: 0.3.8
    sha: ef53942eb7bf7ff43a617b3e2c1c4a5ecf5944a7c1bc12d7ee39bbb15e5c1519
  - name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - name: log
    version: 0.4.19
    sha: b06a4cde4c0f271a446782e3eff8de789548ce57dbc8eca9292c27f4a42004b4
  - name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - name: memchr
    version: 2.5.0
    sha: 2dffe52ecf27772e601905b7522cb4ef790d2cc203488bbd0e2fe85fcb74566d
  - name: memoffset
    version: 0.7.1
    sha: 5de893c32cde5f383baa4c04c5d6dbdd735cfd4a794b0debdb2bb1b421da5ff4
  - name: memoffset
    version: 0.9.0
    sha: 5a634b1c61a95585bd15607c6ab0c4e5b226e695ff2800ba0cdccddf208c406c
  - name: muldiv
    version: 1.0.1
    sha: 956787520e75e9bd233246045d19f42fb73242759cc57fba9611d940ae96d4b0
  - name: nix
    version: 0.26.2
    sha: bfdda3d196821d6af13126e40375cdf7da646a96114af134d5f417a9a1dc8e1a
  - name: nu-ansi-term
    version: 0.46.0
    sha: 77a8165726e8236064dbb45459242600304b42a5ea24ee2948e18e023bf7ba84
  - name: num-integer
    version: 0.1.45
    sha: 225d3389fb3509a24c93f5c29eb6bde2586b98d9f016636dff58d7c6f7569cd9
  - name: num-rational
    version: 0.4.1
    sha: 0638a1c9d0a3c0914158145bc76cff373a75a627e6ecbfb71cbe6f453a5a19b0
  - name: num-traits
    version: 0.2.15
    sha: 578ede34cf02f8924ab9447f50c28075b4d3e5b269972345e7e0372b38c6cdcd
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
    version: 1.18.0
    sha: dd8b5dd2ae5ed71462c540258bedcb51965123ad7e7ccf4b9a8cafaa4a63576d
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
    version: 0.17.10
    sha: 35be456fc620e61f62dff7ff70fbd54dcbaf0a4b920c0f16de1107c47d921d48
  - name: pango-sys
    version: 0.17.10
    sha: 3da69f9f3850b0d8990d462f8c709561975e95f689c1cdf0fecdebde78b35195
  - name: parking
    version: 2.1.0
    sha: 14f2252c834a40ed9bb5422029649578e63aa341ac401f74e719dd1afda8394e
  - name: paste
    version: 1.0.13
    sha: b4b27ab7be369122c218afc2079489cdcb4b517c0a3fc386ff11e1fedfcc2b35
  - name: percent-encoding
    version: 2.3.0
    sha: 9b2a4787296e9989611394c33f193f676704af1686e70b8f8033ab5ba9a35a94
  - name: pin-project-lite
    version: 0.2.10
    sha: 4c40d25201921e5ff0c862a505c6557ea88568a4e3ace775ab55e93f2f4f9d57
  - name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - name: pkg-config
    version: 0.3.27
    sha: 26072860ba924cbfa98ea39c8c19b4dd6a4a25423dbdf219c1eca91aa0cf6964
  - name: polling
    version: 2.8.0
    sha: 4b2d323e8ca7996b3e23126511a523f7e62924d93ecd5ae73b333815b0eb3dce
  - name: ppv-lite86
    version: 0.2.17
    sha: 5b40af805b3121feab8a3c29f04d8ad262fa8e0561883e7653e024ae4479e6de
  - name: pretty-hex
    version: 0.3.0
    sha: c6fa0831dd7cc608c38a5e323422a0077678fa5744aa2be4ad91c4ece8eec8d5
  - name: proc-macro-crate
    version: 1.3.1
    sha: 7f4c021e1093a56626774e81216a4ce732a735e5bad4868a03f3ed65ca0c3919
  - name: proc-macro-error
    version: 1.0.4
    sha: da25490ff9892aab3fcf7c36f08cfb902dd3e71ca0f9f9517bea02a73a5ce38c
  - name: proc-macro-error-attr
    version: 1.0.4
    sha: a1be40180e52ecc98ad80b184934baf3d0d29f979574e439af5a55274b35f869
  - name: proc-macro2
    version: 1.0.64
    sha: 78803b62cbf1f46fde80d7c0e803111524b9877184cfe7c3033659490ac7a7da
  - name: quote
    version: 1.0.29
    sha: 573015e8ab27661678357f27dc26460738fd2b6c86e46f386fde94cb5d913105
  - name: rand
    version: 0.8.5
    sha: 34af8d1a0e25924bc5b7c43c079c942339d8f0a8b57c39049bef581b46327404
  - name: rand_chacha
    version: 0.3.1
    sha: e6c10a63a0fa32252be49d21e7709d4d4baf8d231c2dbce1eaa8141b9b127d88
  - name: rand_core
    version: 0.6.4
    sha: ec0be4795e2f6a28069bec0b5ff3e2ac9bafc99e6a9a7dc3547996c5c816922c
  - name: redox_syscall
    version: 0.3.5
    sha: 567664f262709473930a4bf9e51bf2ebf3348f2e748ccc50dea20646858f8f29
  - name: regex
    version: 1.9.1
    sha: b2eae68fc220f7cf2532e4494aded17545fce192d59cd996e0fe7887f4ceb575
  - name: regex-automata
    version: 0.3.2
    sha: 83d3daa6976cffb758ec878f108ba0e062a45b2d6ca3a2cca965338855476caf
  - name: regex-syntax
    version: 0.7.3
    sha: 2ab07dc67230e4a4718e70fd5c20055a4334b121f1f9db8fe63ef39ce9b8c846
  - name: rustc_version
    version: 0.4.0
    sha: bfa0f585226d2e68097d4f95d113b15b83a82e819ab25717ec0590d9584ef366
  - name: rustix
    version: 0.37.23
    sha: 4d69718bf81c6127a49dc64e44a742e8bb9213c0ff8869a22c308f84c1d4ab06
  - name: semver
    version: 1.0.17
    sha: bebd363326d05ec3e2f532ab7660680f3b02130d780c299bca73469d521bc0ed
  - name: serde
    version: 1.0.171
    sha: 30e27d1e4fd7659406c492fd6cfaf2066ba8773de45ca75e855590f856dc34a9
  - name: serde_derive
    version: 1.0.171
    sha: 389894603bd18c46fa56231694f8d827779c0951a667087194cf9de94ed24682
  - name: serde_repr
    version: 0.1.14
    sha: 1d89a8107374290037607734c0b73a85db7ed80cae314b3c5791f192a496e731
  - name: serde_spanned
    version: 0.6.3
    sha: 96426c9936fd7a0124915f9185ea1d20aa9445cc9821142f0a73bc9207a2e186
  - name: sha1
    version: 0.10.5
    sha: f04293dc80c3993519f2d7f6f511707ee7094fe0c6d3406feb330cdb3540eba3
  - name: sharded-slab
    version: 0.1.4
    sha: 900fba806f70c630b0a382d0d825e17a0f19fcd059a2ade1ff237bcddf446b31
  - name: signal-hook
    version: 0.3.15
    sha: 732768f1176d21d09e076c23a93123d40bba92d50c4058da34d45c8de8e682b9
  - name: signal-hook-registry
    version: 1.4.1
    sha: d8229b473baa5980ac72ef434c4415e70c4b5e71b423043adb4ba059f89c99a1
  - name: slab
    version: 0.4.8
    sha: 6528351c9bc8ab22353f9d776db39a20288e8d6c37ef8cfe3317cf875eecfc2d
  - name: smallvec
    version: 1.11.0
    sha: 62bb4feee49fdd9f707ef802e22365a35de4b7b299de4763d44bfea899442ff9
  - name: socket2
    version: 0.4.9
    sha: 64a4a911eed85daf18834cfaa86a79b7d266ff93ff5ba14005426219480ed662
  - name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - name: syn
    version: 2.0.25
    sha: 15e3fc8c0c74267e2df136e5e5fb656a464158aa57624053375eb9c8c6e25ae2
  - name: system-deps
    version: 6.1.1
    sha: 30c2de8a4d8f4b823d634affc9cd2a74ec98c53a756f317e529a48046cbf71f3
  - name: target-lexicon
    version: 0.12.8
    sha: 1b1c7f239eb94671427157bd93b3694320f3668d4e1eff08c7285366fd777fac
  - name: temp-dir
    version: 0.1.11
    sha: af547b166dd1ea4b472165569fc456cfb6818116f854690b0ff205e636523dab
  - name: tempfile
    version: 3.6.0
    sha: 31c0432476357e58790aaa47a8efb0c5138f137343f3b5f23bd36a27e3b0a6d6
  - name: thiserror
    version: 1.0.43
    sha: a35fc5b8971143ca348fa6df4f024d4d55264f3468c71ad1c2f365b0a4d58c42
  - name: thiserror-impl
    version: 1.0.43
    sha: 463fe12d7993d3b327787537ce8dd4dfa058de32fc2b195ef3cde03dc4771e8f
  - name: thread_local
    version: 1.1.7
    sha: 3fdd6f064ccff2d6567adcb3873ca630700f00b5ad3f060c25b5dcfd9a4ce152
  - name: tinyvec
    version: 1.6.0
    sha: 87cc5ceb3875bb20c2890005a4e226a4651264a5c75edb2421b52861a0a0cb50
  - name: tinyvec_macros
    version: 0.1.1
    sha: 1f3ccbac311fea05f86f61904b462b55fb3df8837a366dfc601a0161d0532f20
  - name: toml
    version: 0.7.6
    sha: c17e963a819c331dcacd7ab957d80bc2b9a9c1e71c804826d2f283dd65306542
  - name: toml_datetime
    version: 0.6.3
    sha: 7cda73e2f1397b1262d6dfdcef8aafae14d1de7748d66822d3bfeeb6d03e5e4b
  - name: toml_edit
    version: 0.19.12
    sha: c500344a19072298cd05a7224b3c0c629348b78692bf48466c5238656e315a78
  - name: tracing
    version: 0.1.37
    sha: 8ce8c33a8d48bd45d624a6e523445fd21ec13d3653cd51f681abf67418f54eb8
  - name: tracing-attributes
    version: 0.1.26
    sha: 5f4f31f56159e98206da9efd823404b79b6ef3143b4a7ab76e67b1751b25a4ab
  - name: tracing-core
    version: 0.1.31
    sha: 0955b8137a1df6f1a2e9a37d8a6656291ff0297c1a97c24e0d8425fe2312f79a
  - name: tracing-log
    version: 0.1.3
    sha: 78ddad33d2d10b1ed7eb9d1f518a5674713876e97e5bb9b7345a7984fbb4f922
  - name: tracing-subscriber
    version: 0.3.17
    sha: 30a651bc37f915e81f087d86e62a18eec5f79550c7faff886f7090b4ea757c77
  - name: typenum
    version: 1.16.0
    sha: 497961ef93d974e23eb6f433eb5fe1b7930b659f06d12dec6fc44a8f554c0bba
  - name: uds_windows
    version: 1.0.2
    sha: ce65604324d3cce9b966701489fbd0cf318cb1f7bd9dd07ac9a4ee6fb791930d
  - name: unicode-bidi
    version: 0.3.13
    sha: 92888ba5573ff080736b3648696b70cafad7d250551175acbaa4e0385b3e1460
  - name: unicode-ident
    version: 1.0.10
    sha: 22049a19f4a68748a168c0fc439f9516686aa045927ff767eca0a85101fb6e73
  - name: unicode-normalization
    version: 0.1.22
    sha: 5c5713f0fc4b5db668a2ac63cdb7bb4469d8c9fed047b1d0292cc7b0ce2ba921
  - name: url
    version: 2.4.0
    sha: 50bff7831e19200a85b17131d085c25d7811bc4e186efdaf54bbd132994a88cb
  - name: valuable
    version: 0.1.0
    sha: 830b7e5d4d90034032940e4ace0d9a9a057e7a45cd94e6c007832e39edb82f6d
  - name: value-bag
    version: 1.4.1
    sha: d92ccd67fb88503048c01b59152a04effd0782d035a83a6d256ce6085f08f4a3
  - name: version-compare
    version: 0.1.1
    sha: 579a42fc0b8e0c63b76519a339be31bed574929511fa53c1a3acae26eb258f29
  - name: version_check
    version: 0.9.4
    sha: 49874b5167b65d7193b8aba1567f5c7d93d001cafc34600cee003eda787e483f
  - name: waker-fn
    version: 1.1.0
    sha: 9d5b2c62b4012a3e1eca5a7e077d13b3bf498c4073e33ccd58626607748ceeca
  - name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
  - name: wasm-bindgen
    version: 0.2.87
    sha: 7706a72ab36d8cb1f80ffbf0e071533974a60d0a308d01a5d0375bf60499a342
  - name: wasm-bindgen-backend
    version: 0.2.87
    sha: 5ef2b6d3c510e9625e5fe6f509ab07d66a760f0885d858736483c32ed7809abd
  - name: wasm-bindgen-futures
    version: 0.4.37
    sha: c02dbc21516f9f1f04f187958890d7e6026df8d16540b7ad9492bc34a67cea03
  - name: wasm-bindgen-macro
    version: 0.2.87
    sha: dee495e55982a3bd48105a7b947fd2a9b4a8ae3010041b9e0faab3f9cd028f1d
  - name: wasm-bindgen-macro-support
    version: 0.2.87
    sha: 54681b18a46765f095758388f2d0cf16eb8d4169b639ab575a8f5693af210c7b
  - name: wasm-bindgen-shared
    version: 0.2.87
    sha: ca6ad05a4870b2bf5fe995117d3728437bd27d7cd5f06f13c17443ef369775a1
  - name: web-sys
    version: 0.3.64
    sha: 9b85cbef8c220a6abc02aefd892dfc0fc23afb1c6a426316ec33253a3877249b
  - name: winapi
    version: 0.3.9
    sha: 5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419
  - name: winapi-i686-pc-windows-gnu
    version: 0.4.0
    sha: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
  - name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
  - name: windows
    version: 0.48.0
    sha: e686886bc078bc1b0b600cac0147aadb815089b6e4da64016cbd754b6342700f
  - name: windows-sys
    version: 0.48.0
    sha: 677d2418bec65e3338edb076e806bc1ec15693c5d0104683f2efe857f61056a9
  - name: windows-targets
    version: 0.48.1
    sha: 05d4b17490f70499f20b9e791dcf6a299785ce8af4d709018206dc5b4953e95f
  - name: windows_aarch64_gnullvm
    version: 0.48.0
    sha: 91ae572e1b79dba883e0d315474df7305d12f569b400fcf90581b06062f7e1bc
  - name: windows_aarch64_msvc
    version: 0.48.0
    sha: b2ef27e0d7bdfcfc7b868b317c1d32c641a6fe4629c171b8928c7b08d98d7cf3
  - name: windows_i686_gnu
    version: 0.48.0
    sha: 622a1962a7db830d6fd0a69683c80a18fda201879f0f447f065a3b7467daa241
  - name: windows_i686_msvc
    version: 0.48.0
    sha: 4542c6e364ce21bf45d69fdd2a8e455fa38d316158cfd43b3ac1c5b1b19f8e00
  - name: windows_x86_64_gnu
    version: 0.48.0
    sha: ca2b8a661f7628cbd23440e50b05d705db3686f894fc9580820623656af974b1
  - name: windows_x86_64_gnullvm
    version: 0.48.0
    sha: 7896dbc1f41e08872e9d5e8f8baa8fdd2677f29468c4e156210174edc7f7b953
  - name: windows_x86_64_msvc
    version: 0.48.0
    sha: 1a515f5799fe4961cb532f983ce2b23082366b898e52ffbce459c86f67c8378a
  - name: winnow
    version: 0.4.9
    sha: 81a2094c43cc94775293eaa0e499fbc30048a6d824ac82c0351a8c0bf9112529
  - name: xdg-home
    version: 1.0.0
    sha: 2769203cd13a0c6015d515be729c526d041e9cf2c0cc478d57faee85f40c6dcd
  - name: zbus
    version: 3.14.1
    sha: 31de390a2d872e4cd04edd71b425e29853f786dc99317ed72d73d6fcf5ebb948
  - name: zbus_macros
    version: 3.14.1
    sha: 41d1794a946878c0e807f55a397187c11fc7a038ba5d868e7db4f3bd7760bc9d
  - name: zbus_names
    version: 2.6.0
    sha: fb80bb776dbda6e23d705cf0123c3b95df99c4ebeaec6c2599d4a5419902b4a9
  - name: zvariant
    version: 3.15.0
    sha: 44b291bee0d960c53170780af148dca5fa260a63cdd24f1962fa82e03e53338c
  - name: zvariant_derive
    version: 3.15.0
    sha: 934d7a7dfc310d6ee06c87ffe88ef4eca7d3e37bb251dece2ef93da8f17d8ecd
  - name: zvariant_utils
    version: 1.0.1
    sha: 7234f0d811589db492d16893e3f21e8e2fd282e6d01b0cddee310322062cc200
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
