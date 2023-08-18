kind: meson

sources:
- kind: git_tag
  url: gnome_gitlab:sophie-h/glycin.git
  track: main
  ref: 0.1.beta.3-1-g9284bb05e62ca059ae1b78aa2012b82eb50d63b6
- kind: cargo

  ref:
  - name: addr2line
    version: 0.20.0
    sha: f4fa78e18c64fce05e902adecd7a5eed15a5e0a3439f7b0e169f0252214865e3
  - name: adler
    version: 1.0.2
    sha: f26201604c87b1e01bd3d98f8d5d9a8fcbb815e8cedb41ffccbeb4bf593a35fe
  - name: aho-corasick
    version: 1.0.4
    sha: 6748e8def348ed4d14996fa801f4122cd763fff530258cdc03f64b25f89d3a5a
  - name: anyhow
    version: 1.0.74
    sha: 8c6f84b74db2535ebae81eede2f39b947dcbf01d093ae5f791e5dd414a1bf289
  - name: approx
    version: 0.5.1
    sha: cab112f0a86d568ea0e627cc1d6be74a1e9cd55214684db5561995f6dad897c6
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
    version: 2.8.0
    sha: 287272293e9d8c41773cec55e365490fe034813a2f172f502d6ddcf75b2f582b
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
    version: 0.1.73
    sha: bc00ceb34980c03614e35a3a4e218276a0a824e911d07651cd0d858a51e8c0f0
  - name: atomic-waker
    version: 1.1.1
    sha: 1181e1e0d1fce796a03db1ae795d67167da795f9cf4a39c37589e85ef57f26d3
  - name: autocfg
    version: 1.1.0
    sha: d468802bab17cbc0cc575e9b053f41e72aa36bfa6b7f55e3529ffa43161b97fa
  - name: backtrace
    version: 0.3.68
    sha: 4319208da049c43661739c5fade2ba182f09d1dc2299b32298d3a31692b17e12
  - name: bit_field
    version: 0.10.2
    sha: dc827186963e592360843fb5ba4b973e145841266c1357f7180c43526f2e5b61
  - name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - name: bitflags
    version: 2.4.0
    sha: b4682ae6287fcf752ecaabbfcc7b6f9b72aa33933dc23a554d853aea8eea8635
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
  - name: bytemuck
    version: 1.13.1
    sha: 17febce684fd15d89027105661fec94afb475cb995fbc59d2865198446ba2eea
  - name: byteorder
    version: 1.4.3
    sha: 14c189c53d098945499cdfa7ecc63567cf3886b3332b312a5b4585d8d3a6a610
  - name: cairo-rs
    version: 0.18.0
    sha: d859b656775a6b1dd078d3e5924884e6ea88aa649a7fdde03d5b2ec56ffcc10b
  - name: cairo-sys-rs
    version: 0.18.0
    sha: bd4d115132e01c0165e3bf5f56aedee8980b0b96ede4eb000b693c05a8adb8ff
  - name: cast
    version: 0.3.0
    sha: 37b2a672a2cb129a2e41c10b1224bb368f9f37a2b16b612598138befd7b37eb5
  - name: cc
    version: 1.0.82
    sha: 305fe645edc1442a0fa8b6726ba61d422798d37a52e12eaecf4b022ebbb88f01
  - name: cfg-expr
    version: 0.15.4
    sha: b40ccee03b5175c18cde8f37e7d2a33bcef6f8ec8f7cc0d81090d1bb380949c9
  - name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - name: color_quant
    version: 1.1.0
    sha: 3d7b894f5411737b7867f4827955924d7c254fc9f4d91a6aad6b097804b1018b
  - name: concurrent-queue
    version: 2.2.0
    sha: 62ec6771ecfa0762d24683ee5a32ad78487a3d3afdc0fb8cae19d2c5deb50b7c
  - name: convert_case
    version: 0.4.0
    sha: 6245d59a3e82a7fc217c5828a6692dbc6dfb63a0c8c90495621f7b9d79704a0e
  - name: cpufeatures
    version: 0.2.9
    sha: a17b76ff3a4162b0b27f354a0c87015ddad39d35f9c0c36607a3bdd175dde1f1
  - name: crc32fast
    version: 1.3.2
    sha: b540bd8bc810d3885c6ea91e2018302f68baba2129ab3e88f32389ee9370880d
  - name: crossbeam-channel
    version: 0.5.8
    sha: a33c2bf77f2df06183c3aa30d1e96c0695a313d4f9c453cc3762a6db39f99200
  - name: crossbeam-deque
    version: 0.8.3
    sha: ce6fd6f855243022dcecf8702fef0c297d4338e226845fe067f6341ad9fa0cef
  - name: crossbeam-epoch
    version: 0.9.15
    sha: ae211234986c545741a7dc064309f67ee1e5ad243d0e48335adc0484d960bcc7
  - name: crossbeam-utils
    version: 0.8.16
    sha: 5a22b2d63d4d1dc0b7f1b6b2747dd0088008a9be28b6ddf0b1e7d335e3037294
  - name: crunchy
    version: 0.2.2
    sha: 7a81dae078cea95a014a339291cec439d2f232ebe854a9d672b796c6afafa9b7
  - name: crypto-common
    version: 0.1.6
    sha: 1bfb12502f3fc46cca1bb51ac28df9d618d813cdc3d2f25b9fe775a34af26bb3
  - name: cssparser
    version: 0.29.6
    sha: f93d03419cb5950ccfd3daf3ff1c7a36ace64609a1a8746d493df1ca0afde0fa
  - name: cssparser-macros
    version: 0.6.1
    sha: 13b588ba4ac1a99f7f2964d24b3d896ddc6bf847ee3855dbd4366f058cfcd331
  - name: data-url
    version: 0.3.0
    sha: 41b319d1b62ffbd002e057f36bebd1f42b9f97927c9577461d855f3513c4289f
  - name: derivative
    version: 2.2.0
    sha: fcc3dd5e9e9c0b295d6e1e4d811fb6f157d5ffd784b8d202fc62eac8035a770b
  - name: derive_more
    version: 0.99.17
    sha: 4fb810d30a7c1953f91334de7244731fc3f3c10d7fe163338a35b9f640960321
  - name: digest
    version: 0.10.7
    sha: 9ed9a281f7bc9b7576e61468ba615a66a5c8cfdff42420a70aa82701a3b1e292
  - name: dtoa
    version: 1.0.9
    sha: dcbb2bf8e87535c23f7a8a321e364ce21462d0ff10cb6407820e8e96dfff6653
  - name: dtoa-short
    version: 0.3.4
    sha: dbaceec3c6e4211c79e7b1800fb9680527106beb2f9c51904a3210c03a448c74
  - name: dunce
    version: 1.0.4
    sha: 56ce8c6da7551ec6c462cbaf3bfbc75131ebbfa1c944aeaa9dab51ca1c5f0c3b
  - name: either
    version: 1.9.0
    sha: a26ae43d7bcc3b814de94796a5e736d4029efb0ee900c12e2d54c993ad1a1e07
  - name: encoding_rs
    version: 0.8.32
    sha: 071a31f4ee85403370b58aca746f01041ede6f0da2730960ad001edc2b71b394
  - name: enumflags2
    version: 0.7.7
    sha: c041f5090df68b32bcd905365fd51769c8b9d553fe87fde0b683534f10c01bd2
  - name: enumflags2_derive
    version: 0.7.7
    sha: 5e9a1f9f7d83e59740248a6e14ecf93929ade55027844dfcea78beafccc15745
  - name: enumn
    version: 0.1.11
    sha: b893c4eb2dc092c811165f84dc7447fae16fb66521717968c34c509b39b1a5c5
  - name: equivalent
    version: 1.0.1
    sha: 5443807d6dff69373d433ab9ef5378ad8df50ca6298caf15de6e52e24aaf54d5
  - name: errno
    version: 0.3.2
    sha: 6b30f669a7961ef1631673d2766cc92f52d64f7ef354d4fe0ddfd30ed52f0f4f
  - name: errno-dragonfly
    version: 0.1.2
    sha: aa68f1b12764fab894d2755d2518754e71b4fd80ecfb822714a1206c2aab39bf
  - name: event-listener
    version: 2.5.3
    sha: 0206175f82b8d6bf6652ff7d71a1e27fd2e4efde587fd368662814d6ec1d9ce0
  - name: exr
    version: 1.7.0
    sha: d1e481eb11a482815d3e9d618db8c42a93207134662873809335a92327440c18
  - name: fastrand
    version: 1.9.0
    sha: e51093e27b0797c359783294ca4f0a911c270184cb10f85783b118614a1501be
  - name: fastrand
    version: 2.0.0
    sha: 6999dc1837253364c2ebb0704ba97994bd874e8f195d665c50b7548f6ea92764
  - name: fdeflate
    version: 0.3.0
    sha: d329bdeac514ee06249dabc27877490f17f5d371ec693360768b838e19f3ae10
  - name: flate2
    version: 1.0.27
    sha: c6c98ee8095e9d1dcbf2fcc6d95acccb90d1c81db1e44725c6a984b1dbdfb010
  - name: float-cmp
    version: 0.9.0
    sha: 98de4bbd547a563b716d8dfa9aad1cb19bfab00f4fa09a6a4ed21dbcf44ce9c4
  - name: flume
    version: 0.10.14
    sha: 1657b4441c3403d9f7b3409e47575237dac27b1b5726df654a6ecbf92f0f7577
  - name: foreign-types
    version: 0.5.0
    sha: d737d9aa519fb7b749cbc3b962edcf310a8dd1f4b67c91c4f83975dbdd17d965
  - name: foreign-types-macros
    version: 0.2.3
    sha: 1a5c6c585bc94aaf2c7b51dd4c2ba22680844aba4c687be581871a6f518c5742
  - name: foreign-types-shared
    version: 0.3.1
    sha: aa9a19cbb55df58761df49b23516a86d432839add4af60fc256da840f66ed35b
  - name: form_urlencoded
    version: 1.2.0
    sha: a62bc1cf6f830c2ec14a513a9fb124d0a213a629668a4186f329db21fe045652
  - name: four-cc
    version: 0.3.0
    sha: 431a4c31778fde52b4400de34975f219eeca55cc829a9de157cd743a5b230ecb
  - name: futf
    version: 0.1.5
    sha: df420e2e84819663797d1ec6544b13c5be84629e7bb00dc960d6917db2987843
  - name: futures
    version: 0.3.28
    sha: 23342abe12aba583913b2e62f22225ff9c950774065e4bfb61a19cd9770fec40
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
  - name: fxhash
    version: 0.2.1
    sha: c31b6d751ae2c7f11320402d34e41349dd1016f8d5d45e48c4312bc8625af50c
  - name: gdk-pixbuf
    version: 0.18.0
    sha: bbc9c2ed73a81d556b65d08879ba4ee58808a6b1927ce915262185d6d547c6f3
  - name: gdk-pixbuf-sys
    version: 0.18.0
    sha: 3f9839ea644ed9c97a34d129ad56d38a25e6756f99f3a88e15cd39c20629caf7
  - name: gdk4
    version: 0.7.2
    sha: 6982d9815ed6ac95b0467b189e81f29dea26d08a732926ec113e65744ed3f96c
  - name: gdk4-sys
    version: 0.7.2
    sha: dbab43f332a3cf1df9974da690b5bb0e26720ed09a228178ce52175372dcfef0
  - name: generic-array
    version: 0.14.7
    sha: 85649ca51fd72272d7821adaf274ad91c288277713d9c18820d8499a7ff69e9a
  - name: getrandom
    version: 0.1.16
    sha: 8fc3cb4d91f53b50155bdcfd23f6a4c39ae1969c2ae85982b135750cccaf5fce
  - name: getrandom
    version: 0.2.10
    sha: be4136b2a15dd319360be1c07d9933517ccf0be8f16bf62a3bee4f0d618df427
  - name: gettext-rs
    version: 0.7.0
    sha: e49ea8a8fad198aaa1f9655a2524b64b70eb06b2f3ff37da407566c93054f364
  - name: gettext-sys
    version: 0.21.3
    sha: c63ce2e00f56a206778276704bbe38564c8695249fdc8f354b4ef71c57c3839d
  - name: gif
    version: 0.12.0
    sha: 80792593675e051cf94a4b111980da2ba60d4a83e43e0048c5693baab3977045
  - name: gimli
    version: 0.27.3
    sha: b6c80984affa11d98d1b88b66ac8853f143217b399d3c74116778ff8fdb4ed2e
  - name: gio
    version: 0.18.1
    sha: 7884cba6b1c5db1607d970cadf44b14a43913d42bc68766eea6a5e2fe0891524
  - name: gio-sys
    version: 0.18.1
    sha: 37566df850baf5e4cb0dfb78af2e4b9898d817ed9263d1090a2df958c64737d2
  - name: glib
    version: 0.18.1
    sha: 331156127e8166dd815cf8d2db3a5beb492610c716c03ee6db4f2d07092af0a7
  - name: glib-macros
    version: 0.18.0
    sha: 179643c50bf28d20d2f6eacd2531a88f2f5d9747dd0b86b8af1e8bb5dd0de3c0
  - name: glib-sys
    version: 0.18.1
    sha: 063ce2eb6a8d0ea93d2bf8ba1957e78dbab6be1c2220dd3daca57d5a9d869898
  - name: gloo-timers
    version: 0.2.6
    sha: 9b995a66bb87bebce9a0f4a95aed01daca4872c050bfcb21653361c03bc35e5c
  - name: gobject-sys
    version: 0.18.0
    sha: 0850127b514d1c4a4654ead6dedadb18198999985908e6ffe4436f53c785ce44
  - name: half
    version: 2.2.1
    sha: 02b4af3693f1b705df946e9fe5631932443781d0aabb423b62fcd4d73f6d2fd0
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
  - name: idna
    version: 0.4.0
    sha: 7d20d6b07bfbc108882d88ed8e37d39636dcc260e15e30c45e6ba089610b917c
  - name: image
    version: 0.24.7
    sha: 6f3dfdbdd72063086ff443e297b61695500514b1e41095b6fb9a5ab48a70a711
  - name: indexmap
    version: 2.0.0
    sha: d5477fe2230a79769d8dc68e0eabf5437907c0457a5614a9e8dddb67f65eb65d
  - name: instant
    version: 0.1.12
    sha: 7a5bbe824c507c5da5956355e86a746d82e0e1464f65d862cc5e71da70e94b2c
  - name: io-lifetimes
    version: 1.0.11
    sha: eae7b9aee968036d54dce06cebaefd919e4472e753296daccd6d344e3e2df0c2
  - name: itertools
    version: 0.11.0
    sha: b1c173a5686ce8bfa551b3563d0c2170bf24ca44da99c7ca4bfdab5418c3fe57
  - name: itoa
    version: 1.0.9
    sha: af150ab688ff2122fcef229be89cb50dd66af9e01a4ff320cc137eecc9bacc38
  - name: jobserver
    version: 0.1.26
    sha: 936cfd212a0155903bcbc060e316fb6cc7cbf2e1907329391ebadc1fe0ce77c2
  - name: jpeg-decoder
    version: 0.3.0
    sha: bc0000e42512c92e31c2252315bda326620a4e034105e900c98ec492fa077b3e
  - name: js-sys
    version: 0.3.64
    sha: c5f195fe497f702db0f318b07fdd68edb16955aed830df8363d837542f8f935a
  - name: jxl-bitstream
    version: 0.2.3
    sha: 76c3205d18cf6229b3f694de66e592886ff7afb0740bc0e85594e3b28d6f6622
  - name: jxl-coding
    version: 0.2.3
    sha: 7075600c762c1ce9e2dd1fbc3fa8ded2af1401fe2221449eca943977742dd0b4
  - name: jxl-color
    version: 0.3.2
    sha: 9084bc33b6d01e26b1db6c187514a51a57f4e3780335f3120ab55ee0b08f6e73
  - name: jxl-frame
    version: 0.4.0
    sha: e2c4e276ea56d8bc4961f13501d565cc6b665f0da76e0e5f90aa44a1475eb409
  - name: jxl-grid
    version: 0.1.1
    sha: 48800b21ed6bb3bbc2f818ae9cd40530bdfb1a211f57d5a7a49b8b10f62145e8
  - name: jxl-image
    version: 0.4.1
    sha: 28d10c717baa0dd19c25b37b6baebb5f07d7efdaa6225a65aa98dcaf1d40a3e5
  - name: jxl-modular
    version: 0.2.2
    sha: a4fea731da48d358a60d6185c58ac897f22895ea0e3380df04c106c87e192a7d
  - name: jxl-oxide
    version: 0.3.0
    sha: 7d90d7ccb9a843e69563abdab2cd362702668f23e39e7fa3dcdf2594b1d29042
  - name: jxl-render
    version: 0.3.0
    sha: 774684715db3b6e60a13059ad746829c9f9b39b7865ba0dc7ea9fd93469d9297
  - name: jxl-vardct
    version: 0.2.1
    sha: 1abaffccbc217e48cb45b9aca639c18a873b66200fc5a3695fb98333e0b1fead
  - name: kamadak-exif
    version: 0.5.5
    sha: ef4fc70d0ab7e5b6bafa30216a6b48705ea964cdfc29c050f2412295eba58077
  - name: kv-log-macro
    version: 1.0.7
    sha: 0de8b303297635ad57c9f5059fd9cee7a47f8e8daa09df0fcd07dd39fb22977f
  - name: language-tags
    version: 0.3.2
    sha: d4345964bb142484797b161f473a503a434de77149dd8c7427788c6e13379388
  - name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - name: lcms2
    version: 5.6.0
    sha: b9d50a4d00d909da0ec023ab34ea09bf3b3b79b5a36b3e0da3a305112edaf150
  - name: lcms2-sys
    version: 4.0.1
    sha: 7abb8aac1a07fd8cdffaa25461a3873a7bf7164cd20b849d44a183a1348d682f
  - name: lebe
    version: 0.5.2
    sha: 03087c2bad5e1034e8cace5926dec053fb3790248370865f5117a7d0213354c8
  - name: libc
    version: 0.2.147
    sha: b4668fb0ea861c1df094127ac5f1da3409a82116a4ba74fca2e58ef927159bb3
  - name: libheif-rs
    version: 0.20.0
    sha: 58aadeecb2ab1815aecfa20fd5f9905a9e4d90884d9d8b63759c53edf0ab9ad3
  - name: libheif-sys
    version: 1.16.1
    sha: e8aa6b598db572d6d3e0a61b4009f03caf827010cd53248f6aeffb1180e9d53f
  - name: librsvg
    version: 2.57.0-beta.2
    sha: 546544126aa12741334e391187756c3eac70c7e1d5edda62a725255c1fe41db3
  - name: linux-raw-sys
    version: 0.3.8
    sha: ef53942eb7bf7ff43a617b3e2c1c4a5ecf5944a7c1bc12d7ee39bbb15e5c1519
  - name: linux-raw-sys
    version: 0.4.5
    sha: 57bcfdad1b858c2db7c38303a6d2ad4dfaf5eb53dfeb0910128b2c26d6158503
  - name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - name: lock_api
    version: 0.4.10
    sha: c1cc9717a20b1bb222f333e6a92fd32f7d8a18ddc5a3191a11af45dcbf4dcd16
  - name: log
    version: 0.4.20
    sha: b5e6163cb8c49088c2c36f57875e58ccd8c87c7427f7fbd50ea6710b2f3f2e8f
  - name: mac
    version: 0.1.1
    sha: c41e0c4fef86961ac6d6f8a82609f55f31b05e4fce149ac5710e439df7619ba4
  - name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - name: markup5ever
    version: 0.11.0
    sha: 7a2629bb1404f3d34c2e921f21fd34ba00b206124c81f65c50b43b6aaefeb016
  - name: matches
    version: 0.1.10
    sha: 2532096657941c2fea9c289d370a250971c689d4f143798ff67113ec042024a5
  - name: matrixmultiply
    version: 0.3.7
    sha: 090126dc04f95dc0d1c1c91f61bdd474b3930ca064c1edc8a849da2c6cbe1e77
  - name: memchr
    version: 2.5.0
    sha: 2dffe52ecf27772e601905b7522cb4ef790d2cc203488bbd0e2fe85fcb74566d
  - name: memfd
    version: 0.6.3
    sha: ffc89ccdc6e10d6907450f753537ebc5c5d3460d2e4e62ea74bd571db62c0f9e
  - name: memmap2
    version: 0.7.1
    sha: f49388d20533534cd19360ad3d6a7dadc885944aa802ba3995040c5ec11288c6
  - name: memoffset
    version: 0.7.1
    sha: 5de893c32cde5f383baa4c04c5d6dbdd735cfd4a794b0debdb2bb1b421da5ff4
  - name: memoffset
    version: 0.9.0
    sha: 5a634b1c61a95585bd15607c6ab0c4e5b226e695ff2800ba0cdccddf208c406c
  - name: miniz_oxide
    version: 0.7.1
    sha: e7810e0be55b428ada41041c41f32c9f1a42817901b4ccf45fa3d4b6561e74c7
  - name: mutate_once
    version: 0.1.1
    sha: 16cf681a23b4d0a43fc35024c176437f9dcd818db34e0f42ab456a0ee5ad497b
  - name: nalgebra
    version: 0.32.3
    sha: 307ed9b18cc2423f29e83f84fd23a8e73628727990181f18641a8b5dc2ab1caa
  - name: nalgebra-macros
    version: 0.2.1
    sha: 91761aed67d03ad966ef783ae962ef9bbaca728d2dd7ceb7939ec110fffad998
  - name: nanorand
    version: 0.7.0
    sha: 6a51313c5820b0b02bd422f4b44776fbf47961755c74ce64afc73bfad10226c3
  - name: new_debug_unreachable
    version: 1.0.4
    sha: e4a24736216ec316047a1fc4252e27dabb04218aa4a3f37c6e7ddbf1f9782b54
  - name: nix
    version: 0.26.2
    sha: bfdda3d196821d6af13126e40375cdf7da646a96114af134d5f417a9a1dc8e1a
  - name: nodrop
    version: 0.1.14
    sha: 72ef4a56884ca558e5ddb05a1d1e7e1bfd9a68d9ed024c21704cc98872dae1bb
  - name: num-complex
    version: 0.4.4
    sha: 1ba157ca0885411de85d6ca030ba7e2a83a28636056c7c699b07c8b6f7383214
  - name: num-integer
    version: 0.1.45
    sha: 225d3389fb3509a24c93f5c29eb6bde2586b98d9f016636dff58d7c6f7569cd9
  - name: num-rational
    version: 0.4.1
    sha: 0638a1c9d0a3c0914158145bc76cff373a75a627e6ecbfb71cbe6f453a5a19b0
  - name: num-traits
    version: 0.2.16
    sha: f30b0abd723be7e2ffca1272140fac1a2f084c77ec3e123c192b66af1ee9e6c2
  - name: num_cpus
    version: 1.16.0
    sha: 4161fcb6d602d4d2081af7c3a45852d875a03dd337a6bfdd6e06407b61342a43
  - name: objc
    version: 0.2.7
    sha: 915b1b472bc21c53464d6c8461c9d3af805ba1ef837e1cac254428f4a77177b1
  - name: objc-foundation
    version: 0.1.1
    sha: 1add1b659e36c9607c7aab864a76c7a4c2760cd0cd2e120f3fb8b952c7e22bf9
  - name: objc_id
    version: 0.1.1
    sha: c92d4ddb4bd7b50d730c215ff871754d0da6b2178849f8a2a2ab69712d0c073b
  - name: object
    version: 0.31.1
    sha: 8bda667d9f2b5051b8833f59f3bf748b28ef54f850f4fcb389a252aa383866d1
  - name: once_cell
    version: 1.18.0
    sha: dd8b5dd2ae5ed71462c540258bedcb51965123ad7e7ccf4b9a8cafaa4a63576d
  - name: ordered-stream
    version: 0.2.0
    sha: 9aa2b01e1d916879f73a53d01d1d6cee68adbb31d6d9177a8cfce093cced1d50
  - name: pango
    version: 0.18.0
    sha: 06a9e54b831d033206160096b825f2070cf5fda7e35167b1c01e9e774f9202d1
  - name: pango-sys
    version: 0.18.0
    sha: 436737e391a843e5933d6d9aa102cb126d501e815b83601365a948a518555dc5
  - name: pangocairo
    version: 0.18.0
    sha: 57036589a9cfcacf83f9e606d15813fc6bf03f0e9e69aa2b5e3bb85af86b38a5
  - name: pangocairo-sys
    version: 0.18.0
    sha: fc3c8ff676a37e7a72ec1d5fc029f91c407278083d2752784ff9f5188c108833
  - name: parking
    version: 2.1.0
    sha: 14f2252c834a40ed9bb5422029649578e63aa341ac401f74e719dd1afda8394e
  - name: parking_lot
    version: 0.12.1
    sha: 3742b2c103b9f06bc9fff0a37ff4912935851bee6d36f3c02bcc755bcfec228f
  - name: parking_lot_core
    version: 0.9.8
    sha: 93f00c865fe7cabf650081affecd3871070f26767e7b2070a3ffae14c654b447
  - name: paste
    version: 1.0.14
    sha: de3145af08024dea9fa9914f381a17b8fc6034dfb00f3a84013f7ff43f29ed4c
  - name: percent-encoding
    version: 2.3.0
    sha: 9b2a4787296e9989611394c33f193f676704af1686e70b8f8033ab5ba9a35a94
  - name: phf
    version: 0.10.1
    sha: fabbf1ead8a5bcbc20f5f8b939ee3f5b0f6f281b6ad3468b84656b658b455259
  - name: phf
    version: 0.8.0
    sha: 3dfb61232e34fcb633f43d12c58f83c1df82962dcdfa565a4e866ffc17dafe12
  - name: phf_codegen
    version: 0.10.0
    sha: 4fb1c3a8bc4dd4e5cfce29b44ffc14bedd2ee294559a294e2a4d4c9e9a6a13cd
  - name: phf_codegen
    version: 0.8.0
    sha: cbffee61585b0411840d3ece935cce9cb6321f01c45477d30066498cd5e1a815
  - name: phf_generator
    version: 0.10.0
    sha: 5d5285893bb5eb82e6aaf5d59ee909a06a16737a8970984dd7746ba9283498d6
  - name: phf_generator
    version: 0.8.0
    sha: 17367f0cc86f2d25802b2c26ee58a7b23faeccf78a396094c13dced0d0182526
  - name: phf_macros
    version: 0.10.0
    sha: 58fdf3184dd560f160dd73922bea2d5cd6e8f064bf4b13110abd81b03697b4e0
  - name: phf_shared
    version: 0.10.0
    sha: b6796ad771acdc0123d2a88dc428b5e38ef24456743ddb1744ed628f9815c096
  - name: phf_shared
    version: 0.8.0
    sha: c00cf8b9eafe68dde5e9eaa2cef8ee84a9336a47d566ec55ca16589633b65af7
  - name: pin-project
    version: 1.1.3
    sha: fda4ed1c6c173e3fc7a83629421152e01d7b1f9b7f65fb301e490e8cfc656422
  - name: pin-project-internal
    version: 1.1.3
    sha: 4359fd9c9171ec6e8c62926d6faaf553a8dc3f64e1507e76da7911b4f6a04405
  - name: pin-project-lite
    version: 0.2.12
    sha: 12cc1b0bf1727a77a54b6654e7b5f1af8604923edc8b81885f8ec92f9e3f0a05
  - name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - name: pkg-config
    version: 0.3.27
    sha: 26072860ba924cbfa98ea39c8c19b4dd6a4a25423dbdf219c1eca91aa0cf6964
  - name: png
    version: 0.17.9
    sha: 59871cc5b6cce7eaccca5a802b4173377a1c2ba90654246789a8fa2334426d11
  - name: polling
    version: 2.8.0
    sha: 4b2d323e8ca7996b3e23126511a523f7e62924d93ecd5ae73b333815b0eb3dce
  - name: ppv-lite86
    version: 0.2.17
    sha: 5b40af805b3121feab8a3c29f04d8ad262fa8e0561883e7653e024ae4479e6de
  - name: precomputed-hash
    version: 0.1.1
    sha: 925383efa346730478fb4838dbe9137d2a47675ad789c546d150a6e1dd4ab31c
  - name: proc-macro-crate
    version: 1.3.1
    sha: 7f4c021e1093a56626774e81216a4ce732a735e5bad4868a03f3ed65ca0c3919
  - name: proc-macro-error
    version: 1.0.4
    sha: da25490ff9892aab3fcf7c36f08cfb902dd3e71ca0f9f9517bea02a73a5ce38c
  - name: proc-macro-error-attr
    version: 1.0.4
    sha: a1be40180e52ecc98ad80b184934baf3d0d29f979574e439af5a55274b35f869
  - name: proc-macro-hack
    version: 0.5.20+deprecated
    sha: dc375e1527247fe1a97d8b7156678dfe7c1af2fc075c9a4db3690ecd2a148068
  - name: proc-macro2
    version: 1.0.66
    sha: 18fb31db3f9bddb2ea821cde30a9f70117e3f119938b5ee630b7403aa6e2ead9
  - name: qoi
    version: 0.4.1
    sha: 7f6d64c71eb498fe9eae14ce4ec935c555749aef511cca85b5568910d6e48001
  - name: quote
    version: 1.0.32
    sha: 50f3b39ccfb720540debaa0164757101c08ecb8d326b15358ce76a62c7e85965
  - name: rand
    version: 0.7.3
    sha: 6a6b1679d49b24bbfe0c803429aa1874472f50d9b363131f0e89fc356b544d03
  - name: rand
    version: 0.8.5
    sha: 34af8d1a0e25924bc5b7c43c079c942339d8f0a8b57c39049bef581b46327404
  - name: rand_chacha
    version: 0.2.2
    sha: f4c8ed856279c9737206bf725bf36935d8666ead7aa69b52be55af369d193402
  - name: rand_chacha
    version: 0.3.1
    sha: e6c10a63a0fa32252be49d21e7709d4d4baf8d231c2dbce1eaa8141b9b127d88
  - name: rand_core
    version: 0.5.1
    sha: 90bde5296fc891b0cef12a6d03ddccc162ce7b2aff54160af9338f8d40df6d19
  - name: rand_core
    version: 0.6.4
    sha: ec0be4795e2f6a28069bec0b5ff3e2ac9bafc99e6a9a7dc3547996c5c816922c
  - name: rand_hc
    version: 0.2.0
    sha: ca3129af7b92a17112d59ad498c6f81eaf463253766b90396d39ea7a39d6613c
  - name: rand_pcg
    version: 0.2.1
    sha: 16abd0c1b639e9eb4d7c50c0b8100b0d0f849be2349829c740fe8e6eb4816429
  - name: rawpointer
    version: 0.2.1
    sha: 60a357793950651c4ed0f3f52338f53b2f809f32d83a07f72909fa13e4c6c1e3
  - name: rayon
    version: 1.7.0
    sha: 1d2df5196e37bcc87abebc0053e20787d73847bb33134a69841207dd0a47f03b
  - name: rayon-core
    version: 1.11.0
    sha: 4b8f95bd6966f5c87776639160a66bd8ab9895d9d4ab01ddba9fc60661aebe8d
  - name: rctree
    version: 0.5.0
    sha: 3b42e27ef78c35d3998403c1d26f3efd9e135d3e5121b0a4845cc5cc27547f4f
  - name: redox_syscall
    version: 0.3.5
    sha: 567664f262709473930a4bf9e51bf2ebf3348f2e748ccc50dea20646858f8f29
  - name: regex
    version: 1.9.3
    sha: 81bc1d4caf89fac26a70747fe603c130093b53c773888797a6329091246d651a
  - name: regex-automata
    version: 0.3.6
    sha: fed1ceff11a1dddaee50c9dc8e4938bd106e9d89ae372f192311e7da498e3b69
  - name: regex-syntax
    version: 0.7.4
    sha: e5ea92a5b6195c6ef2a0295ea818b312502c6fc94dde986c5553242e18fd4ce2
  - name: rgb
    version: 0.8.36
    sha: 20ec2d3e3fc7a92ced357df9cebd5a10b6fb2aa1ee797bf7e9ce2f17dffc8f59
  - name: rustc-demangle
    version: 0.1.23
    sha: d626bb9dae77e28219937af045c257c28bfd3f69333c512553507f5f9798cb76
  - name: rustc_version
    version: 0.4.0
    sha: bfa0f585226d2e68097d4f95d113b15b83a82e819ab25717ec0590d9584ef366
  - name: rustix
    version: 0.37.23
    sha: 4d69718bf81c6127a49dc64e44a742e8bb9213c0ff8869a22c308f84c1d4ab06
  - name: rustix
    version: 0.38.8
    sha: 19ed4fa021d81c8392ce04db050a3da9a60299050b7ae1cf482d862b54a7218f
  - name: safe-transmute
    version: 0.11.2
    sha: 98a01dab6acf992653be49205bdd549f32f17cb2803e8eacf1560bf97259aae8
  - name: safe_arch
    version: 0.7.1
    sha: f398075ce1e6a179b46f51bd88d0598b92b00d3551f1a2d4ac49e771b56ac354
  - name: scopeguard
    version: 1.2.0
    sha: 94143f37725109f92c262ed2cf5e59bce7498c01bcc1502d7b9afe439a4e9f49
  - name: selectors
    version: 0.24.0
    sha: 0c37578180969d00692904465fb7f6b3d50b9a2b952b87c23d0e2e5cb5013416
  - name: semver
    version: 1.0.18
    sha: b0293b4b29daaf487284529cc2f5675b8e57c61f70167ba415a463651fd6a918
  - name: serde
    version: 1.0.183
    sha: 32ac8da02677876d532745a130fc9d8e6edfa81a269b107c5b00829b91d8eb3c
  - name: serde_derive
    version: 1.0.183
    sha: aafe972d60b0b9bee71a91b92fee2d4fb3c9d7e8f6b179aa99f27203d99a4816
  - name: serde_repr
    version: 0.1.16
    sha: 8725e1dfadb3a50f7e5ce0b1a540466f6ed3fe7a0fca2ac2b8b831d31316bd00
  - name: serde_spanned
    version: 0.6.3
    sha: 96426c9936fd7a0124915f9185ea1d20aa9445cc9821142f0a73bc9207a2e186
  - name: servo_arc
    version: 0.2.0
    sha: d52aa42f8fdf0fed91e5ce7f23d8138441002fa31dca008acf47e6fd4721f741
  - name: sha1
    version: 0.10.5
    sha: f04293dc80c3993519f2d7f6f511707ee7094fe0c6d3406feb330cdb3540eba3
  - name: signal-hook
    version: 0.3.17
    sha: 8621587d4798caf8eb44879d42e56b9a93ea5dcd315a6487c357130095b62801
  - name: signal-hook-registry
    version: 1.4.1
    sha: d8229b473baa5980ac72ef434c4415e70c4b5e71b423043adb4ba059f89c99a1
  - name: simba
    version: 0.8.1
    sha: 061507c94fc6ab4ba1c9a0305018408e312e17c041eb63bef8aa726fa33aceae
  - name: simd-adler32
    version: 0.3.7
    sha: d66dc143e6b11c1eddc06d5c423cfc97062865baf299914ab64caa38182078fe
  - name: siphasher
    version: 0.3.10
    sha: 7bd3e3206899af3f8b12af284fafc038cc1dc2b41d1b89dd17297221c5d225de
  - name: slab
    version: 0.4.8
    sha: 6528351c9bc8ab22353f9d776db39a20288e8d6c37ef8cfe3317cf875eecfc2d
  - name: smallvec
    version: 1.11.0
    sha: 62bb4feee49fdd9f707ef802e22365a35de4b7b299de4763d44bfea899442ff9
  - name: socket2
    version: 0.4.9
    sha: 64a4a911eed85daf18834cfaa86a79b7d266ff93ff5ba14005426219480ed662
  - name: spin
    version: 0.9.8
    sha: 6980e8d7511241f8acf4aebddbb1ff938df5eebe98691418c4468d0b72a96a67
  - name: stable_deref_trait
    version: 1.2.0
    sha: a8f112729512f8e442d81f95a8a7ddf2b7c6b8a1a6f509a95864142b30cab2d3
  - name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - name: string_cache
    version: 0.8.7
    sha: f91138e76242f575eb1d3b38b4f1362f10d3a43f47d182a5b359af488a02293b
  - name: string_cache_codegen
    version: 0.5.2
    sha: 6bb30289b722be4ff74a408c3cc27edeaad656e06cb1fe8fa9231fa59c728988
  - name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - name: syn
    version: 2.0.28
    sha: 04361975b3f5e348b2189d8dc55bc942f278b2d482a6a0365de5bdd62d351567
  - name: system-deps
    version: 6.1.1
    sha: 30c2de8a4d8f4b823d634affc9cd2a74ec98c53a756f317e529a48046cbf71f3
  - name: target-lexicon
    version: 0.12.11
    sha: 9d0e916b1148c8e263850e1ebcbd046f333e0683c724876bb0da63ea4373dc8a
  - name: temp-dir
    version: 0.1.11
    sha: af547b166dd1ea4b472165569fc456cfb6818116f854690b0ff205e636523dab
  - name: tempfile
    version: 3.7.1
    sha: dc02fddf48964c42031a0b3fe0428320ecf3a73c401040fc0096f97794310651
  - name: tendril
    version: 0.4.3
    sha: d24a120c5fc464a3458240ee02c299ebcb9d67b5249c8848b09d639dca8d7bb0
  - name: thiserror
    version: 1.0.46
    sha: d9207952ae1a003f42d3d5e892dac3c6ba42aa6ac0c79a6a91a2b5cb4253e75c
  - name: thiserror-impl
    version: 1.0.46
    sha: f1728216d3244de4f14f14f8c15c79be1a7c67867d28d69b719690e2a19fb445
  - name: tiff
    version: 0.9.0
    sha: 6d172b0f4d3fba17ba89811858b9d3d97f928aece846475bbda076ca46736211
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
    version: 0.19.14
    sha: f8123f27e969974a3dfba720fdb560be359f57b44302d280ba72e76a74480e8a
  - name: tracing
    version: 0.1.37
    sha: 8ce8c33a8d48bd45d624a6e523445fd21ec13d3653cd51f681abf67418f54eb8
  - name: tracing-attributes
    version: 0.1.26
    sha: 5f4f31f56159e98206da9efd823404b79b6ef3143b4a7ab76e67b1751b25a4ab
  - name: tracing-core
    version: 0.1.31
    sha: 0955b8137a1df6f1a2e9a37d8a6656291ff0297c1a97c24e0d8425fe2312f79a
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
    version: 1.0.11
    sha: 301abaae475aa91687eb82514b328ab47a211a533026cb25fc3e519b86adfc3c
  - name: unicode-normalization
    version: 0.1.22
    sha: 5c5713f0fc4b5db668a2ac63cdb7bb4469d8c9fed047b1d0292cc7b0ce2ba921
  - name: url
    version: 2.4.0
    sha: 50bff7831e19200a85b17131d085c25d7811bc4e186efdaf54bbd132994a88cb
  - name: utf-8
    version: 0.7.6
    sha: 09cc8ee72d2a9becf2f2febe0205bbed8fc6615b7cb429ad062dc7b7ddd036a9
  - name: value-bag
    version: 1.4.1
    sha: d92ccd67fb88503048c01b59152a04effd0782d035a83a6d256ce6085f08f4a3
  - name: vcpkg
    version: 0.2.15
    sha: accd4ea62f7bb7a82fe23066fb0957d48ef677f6eeb8215f372f52e48bb32426
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
  - name: wasi
    version: 0.9.0+wasi-snapshot-preview1
    sha: cccddf32554fecc6acb585f82a32a72e28b48f8c4c1883ddfeeeaa96f7d8e519
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
  - name: weezl
    version: 0.1.7
    sha: 9193164d4de03a926d909d3bc7c30543cecb35400c02114792c2cae20d5e2dbb
  - name: wide
    version: 0.7.11
    sha: aa469ffa65ef7e0ba0f164183697b89b854253fd31aeb92358b7b6155177d62f
  - name: winapi
    version: 0.3.9
    sha: 5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419
  - name: winapi-i686-pc-windows-gnu
    version: 0.4.0
    sha: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
  - name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
  - name: windows-sys
    version: 0.48.0
    sha: 677d2418bec65e3338edb076e806bc1ec15693c5d0104683f2efe857f61056a9
  - name: windows-targets
    version: 0.48.2
    sha: d1eeca1c172a285ee6c2c84c341ccea837e7c01b12fbb2d0fe3c9e550ce49ec8
  - name: windows_aarch64_gnullvm
    version: 0.48.2
    sha: b10d0c968ba7f6166195e13d593af609ec2e3d24f916f081690695cf5eaffb2f
  - name: windows_aarch64_msvc
    version: 0.48.2
    sha: 571d8d4e62f26d4932099a9efe89660e8bd5087775a2ab5cdd8b747b811f1058
  - name: windows_i686_gnu
    version: 0.48.2
    sha: 2229ad223e178db5fbbc8bd8d3835e51e566b8474bfca58d2e6150c48bb723cd
  - name: windows_i686_msvc
    version: 0.48.2
    sha: 600956e2d840c194eedfc5d18f8242bc2e17c7775b6684488af3a9fff6fe3287
  - name: windows_x86_64_gnu
    version: 0.48.2
    sha: ea99ff3f8b49fb7a8e0d305e5aec485bd068c2ba691b6e277d29eaeac945868a
  - name: windows_x86_64_gnullvm
    version: 0.48.2
    sha: 8f1a05a1ece9a7a0d5a7ccf30ba2c33e3a61a30e042ffd247567d1de1d94120d
  - name: windows_x86_64_msvc
    version: 0.48.2
    sha: d419259aba16b663966e29e6d7c6ecfa0bb8425818bb96f6f1f3c3eb71a6e7b9
  - name: winnow
    version: 0.5.12
    sha: 83817bbecf72c73bad717ee86820ebf286203d2e04c3951f3cd538869c897364
  - name: xdg-home
    version: 1.0.0
    sha: 2769203cd13a0c6015d515be729c526d041e9cf2c0cc478d57faee85f40c6dcd
  - name: xml5ever
    version: 0.17.0
    sha: 4034e1d05af98b51ad7214527730626f019682d797ba38b51689212118d8e650
  - name: zbus
    version: 3.14.1
    sha: 31de390a2d872e4cd04edd71b425e29853f786dc99317ed72d73d6fcf5ebb948
  - name: zbus_macros
    version: 3.14.1
    sha: 41d1794a946878c0e807f55a397187c11fc7a038ba5d868e7db4f3bd7760bc9d
  - name: zbus_names
    version: 2.6.0
    sha: fb80bb776dbda6e23d705cf0123c3b95df99c4ebeaec6c2599d4a5419902b4a9
  - name: zune-inflate
    version: 0.2.54
    sha: 73ab332fe2f6680068f3582b16a24f90ad7096d5d39b974d1c0aff0125116f02
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
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libheif.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
