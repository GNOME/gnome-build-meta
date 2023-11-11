kind: meson

sources:
- kind: git_repo
  url: gnome:Incubator/snapshot.git
  track: main
  ref: 45.0-16-gb9af834cd1a87fd6b108b934ce2860627910cfb0
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
    version: 1.0.75
    sha: a4668cab20f66d8d020e1fbc0ebe47217433c1b6c8f2040faf858554e394ace6
  - name: ashpd
    version: 0.6.7
    sha: 2c018490e423efb6f032ef575f873ea57b61d44bec763cfe027b8e8852a027cf
  - name: async-broadcast
    version: 0.5.1
    sha: 7c48ccdbf6ca6b121e0f586cbc0e73ae440e56c67c30fa0873b4e110d9c26d2b
  - name: async-channel
    version: 1.9.0
    sha: 81953c529336010edd6d8e358f886d9581267795c61b19475b71314bffa46d35
  - name: async-executor
    version: 1.6.0
    sha: 4b0c4a4f319e45986f347ee47fef8bf5e81c9abc3f6f58dc2391439f30df65f0
  - name: async-fs
    version: 1.6.0
    sha: 279cf904654eeebfa37ac9bb1598880884924aab82e290aa65c9e77a0e142e06
  - name: async-global-executor
    version: 2.3.1
    sha: f1b6f5d7df27bd294849f8eec66ecfc63d11814df7a4f5d74168a2394467b776
  - name: async-io
    version: 1.13.0
    sha: 0fc5b45d93ef0529756f812ca52e44c221b35341892d3dcc34132ac02f3dd2af
  - name: async-io
    version: 2.1.0
    sha: 10da8f3146014722c89e7859e1d7bb97873125d7346d10ca642ffab794355828
  - name: async-lock
    version: 2.8.0
    sha: 287272293e9d8c41773cec55e365490fe034813a2f172f502d6ddcf75b2f582b
  - name: async-process
    version: 1.8.1
    sha: ea6438ba0a08d81529c69b36700fa2f95837bfe3e776ab39cde9c14d9149da88
  - name: async-recursion
    version: 1.0.5
    sha: 5fd55a5ba1179988837d24ab4c7cc8ed6efdeff578ede0416b4225a5fca35bd0
  - name: async-signal
    version: 0.2.5
    sha: 9e47d90f65a225c4527103a8d747001fc56e375203592b25ad103e1ca13124c5
  - name: async-std
    version: 1.12.0
    sha: 62565bb4402e926b29953c785397c6dc0391b7b446e45008b0049eb43cec6f5d
  - name: async-task
    version: 4.5.0
    sha: b4eb2cdb97421e01129ccb49169d8279ed21e829929144f4a22a6e54ac549ca1
  - name: async-trait
    version: 0.1.74
    sha: a66537f1bb974b254c98ed142ff995236e81b9d0fe4db0575f46612cb15eb0f9
  - name: atomic-waker
    version: 1.1.2
    sha: 1505bd5d3d116872e7271a6d4e16d81d0c8570876c8de68093a09ac269d8aac0
  - name: atomic_refcell
    version: 0.1.13
    sha: 41e67cd8309bbd06cd603a9e693a784ac2e5d1e955f11286e355089fcab3047c
  - name: autocfg
    version: 1.1.0
    sha: d468802bab17cbc0cc575e9b053f41e72aa36bfa6b7f55e3529ffa43161b97fa
  - name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - name: bitflags
    version: 2.4.1
    sha: 327762f6e5a765692301e5bb513e0d9fef63be86bbc14528052b1cd3e6f03e07
  - name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - name: block-buffer
    version: 0.10.4
    sha: 3078c7629b62d3f0439517fa394996acacc5cbc91c5a20d8c658e77abd503a71
  - name: blocking
    version: 1.4.1
    sha: 8c36a4d0d48574b3dd360b4b7d95cc651d2b6557b6402848a27d4b228a473e2a
  - name: bumpalo
    version: 3.14.0
    sha: 7f30e7476521f6f8af1a1c4c0b8cc94f0bee37d91763d0ca2665f299b6cd8aec
  - name: byteorder
    version: 1.5.0
    sha: 1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b
  - name: cairo-rs
    version: 0.18.3
    sha: f33613627f0dea6a731b0605101fad59ba4f193a52c96c4687728d822605a8a1
  - name: cairo-sys-rs
    version: 0.18.2
    sha: 685c9fa8e590b8b3d678873528d83411db17242a73fccaed827770ea0fedda51
  - name: cc
    version: 1.0.83
    sha: f1174fb0b6ec23863f8b971027804a42614e347eafb0a95bf0b12cdae21fc4d0
  - name: cfg-expr
    version: 0.15.5
    sha: 03915af431787e6ffdcc74c645077518c6b6e01f80b761e0fbbfa288536311b3
  - name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - name: chrono
    version: 0.4.31
    sha: 7f2c685bad3eb3d45a01354cedb7d5faa66194d1d58ba6e267a8de788f79db38
  - name: concurrent-queue
    version: 2.3.0
    sha: f057a694a54f12365049b0958a1685bb52d567f5593b355fbf685838e873d400
  - name: core-foundation-sys
    version: 0.8.4
    sha: e496a50fda8aacccc86d7529e2c1e0892dbd0f898a6b5645b5561b89c3210efa
  - name: cpufeatures
    version: 0.2.11
    sha: ce420fe07aecd3e67c5f910618fe65e94158f6dcc0adf44e00d69ce2bdfe0fd0
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
  - name: either
    version: 1.9.0
    sha: a26ae43d7bcc3b814de94796a5e736d4029efb0ee900c12e2d54c993ad1a1e07
  - name: enumflags2
    version: 0.7.8
    sha: 5998b4f30320c9d93aed72f63af821bfdac50465b75428fce77b48ec482c3939
  - name: enumflags2_derive
    version: 0.7.8
    sha: f95e2801cd355d4a1a3e3953ce6ee5ae9603a5c833455343a8bfe3f44d418246
  - name: equivalent
    version: 1.0.1
    sha: 5443807d6dff69373d433ab9ef5378ad8df50ca6298caf15de6e52e24aaf54d5
  - name: errno
    version: 0.3.5
    sha: ac3e13f66a2f95e32a39eaa81f6b95d42878ca0e1db0c7543723dfe12557e860
  - name: event-listener
    version: 2.5.3
    sha: 0206175f82b8d6bf6652ff7d71a1e27fd2e4efde587fd368662814d6ec1d9ce0
  - name: event-listener
    version: 3.0.1
    sha: 01cec0252c2afff729ee6f00e903d479fba81784c8e2bd77447673471fdfaea1
  - name: fastrand
    version: 1.9.0
    sha: e51093e27b0797c359783294ca4f0a911c270184cb10f85783b118614a1501be
  - name: fastrand
    version: 2.0.1
    sha: 25cbce373ec4653f1a01a31e8a5e5ec0c622dc27ff9c4e6606eefef5cbbed4a5
  - name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - name: form_urlencoded
    version: 1.2.0
    sha: a62bc1cf6f830c2ec14a513a9fb124d0a213a629668a4186f329db21fe045652
  - name: futures-channel
    version: 0.3.29
    sha: ff4dd66668b557604244583e3e1e1eada8c5c2e96a6d0d6653ede395b78bbacb
  - name: futures-core
    version: 0.3.29
    sha: eb1d22c66e66d9d72e1758f0bd7d4fd0bee04cad842ee34587d68c07e45d088c
  - name: futures-executor
    version: 0.3.29
    sha: 0f4fb8693db0cf099eadcca0efe2a5a22e4550f98ed16aba6c48700da29597bc
  - name: futures-io
    version: 0.3.29
    sha: 8bf34a163b5c4c52d0478a4d757da8fb65cabef42ba90515efee0f6f9fa45aaa
  - name: futures-lite
    version: 1.13.0
    sha: 49a9d51ce47660b1e808d3c990b4709f2f415d928835a17dfd16991515c46bce
  - name: futures-macro
    version: 0.3.29
    sha: 53b153fd91e4b0147f4aced87be237c98248656bb01050b96bf3ee89220a8ddb
  - name: futures-sink
    version: 0.3.29
    sha: e36d3378ee38c2a36ad710c5d30c2911d752cb941c00c72dbabfb786a7970817
  - name: futures-task
    version: 0.3.29
    sha: efd193069b0ddadc69c46389b740bbccdd97203899b48d09c5f7969591d6bae2
  - name: futures-util
    version: 0.3.29
    sha: a19526d624e703a3179b3d322efec918b6246ea0fa51d41124525f00f1cc8104
  - name: gdk-pixbuf
    version: 0.18.3
    sha: 446f32b74d22c33b7b258d4af4ffde53c2bf96ca2e29abdf1a785fe59bd6c82c
  - name: gdk-pixbuf-sys
    version: 0.18.0
    sha: 3f9839ea644ed9c97a34d129ad56d38a25e6756f99f3a88e15cd39c20629caf7
  - name: gdk4
    version: 0.7.3
    sha: 7edb019ad581f8ecf8ea8e4baa6df7c483a95b5a59be3140be6a9c3b0c632af6
  - name: gdk4-sys
    version: 0.7.2
    sha: dbab43f332a3cf1df9974da690b5bb0e26720ed09a228178ce52175372dcfef0
  - name: gdk4-wayland
    version: 0.7.2
    sha: 0db9102ff11e55bd65e153c1192abc21ddfa45ede90622e423d4e4a0e5d5f313
  - name: gdk4-wayland-sys
    version: 0.7.2
    sha: d48159be256ae0212d5a2b9884627197d08082c7168b28775b53a0f9885d5624
  - name: gdk4-win32
    version: 0.7.2
    sha: fe66650c41f64e41ada9f85c4bdb96e5549c669e594892240dfb147a63256057
  - name: gdk4-win32-sys
    version: 0.7.2
    sha: 4b5c187546cd3ad9f1787b46c66272d8fcdf8197bfe4f6e2647fe910c39e396d
  - name: gdk4-x11
    version: 0.7.2
    sha: 28c9bbf8ea1ea8469e74c3fdfafc142c9e14810a27f89ddb01b5e9076a60a450
  - name: gdk4-x11-sys
    version: 0.7.2
    sha: a3de1709370758192369f5329aa593847797f1c693c95e8a261e9b2e06a5f125
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
    version: 0.18.3
    sha: 47d809baf02bdf1b5ef4ad3bf60dd9d4977149db4612b7bbb58e56aef168193b
  - name: gio-sys
    version: 0.18.1
    sha: 37566df850baf5e4cb0dfb78af2e4b9898d817ed9263d1090a2df958c64737d2
  - name: glib
    version: 0.18.3
    sha: 58cf801b6f7829fa76db37449ab67c9c98a2b1bf21076d9113225621e61a0fa6
  - name: glib-macros
    version: 0.18.3
    sha: 72793962ceece3863c2965d7f10c8786323b17c7adea75a515809fa20ab799a5
  - name: glib-sys
    version: 0.18.1
    sha: 063ce2eb6a8d0ea93d2bf8ba1957e78dbab6be1c2220dd3daca57d5a9d869898
  - name: gloo-timers
    version: 0.2.6
    sha: 9b995a66bb87bebce9a0f4a95aed01daca4872c050bfcb21653361c03bc35e5c
  - name: gobject-sys
    version: 0.18.0
    sha: 0850127b514d1c4a4654ead6dedadb18198999985908e6ffe4436f53c785ce44
  - name: graphene-rs
    version: 0.18.1
    sha: 3b2228cda1505613a7a956cca69076892cfbda84fc2b7a62b94a41a272c0c401
  - name: graphene-sys
    version: 0.18.1
    sha: cc4144cee8fc8788f2a9b73dc5f1d4e1189d1f95305c4cb7bd9c1af1cfa31f59
  - name: gsk4
    version: 0.7.3
    sha: 0d958e351d2f210309b32d081c832d7de0aca0b077aa10d88336c6379bd01f7e
  - name: gsk4-sys
    version: 0.7.3
    sha: 12bd9e3effea989f020e8f1ff3fa3b8c63ba93d43b899c11a118868853a56d55
  - name: gst-plugin-gtk4
    version: 0.11.1
    sha: 2ac4afae10b2ba4fd375e8a4e13ffe1e29b1b19831132317d89f03960c1a1d3c
  - name: gst-plugin-version-helper
    version: 0.8.0
    sha: 334c37a15ca23861ad8159c8ff6e20f011aa2000defc5c9159096a28842f811b
  - name: gstreamer
    version: 0.21.1
    sha: b369a1eb2f7db49920d3d590bd988c5fb56dbf2347e1efb60307fe953546ee5d
  - name: gstreamer-audio
    version: 0.21.1
    sha: 7ba605da8e756873456eebb35184d2c2f2b2ead7af18c5bfdc6c012d6cf8b6ee
  - name: gstreamer-audio-sys
    version: 0.21.1
    sha: 78bd94ae8b177377855b38c3d809c686526786cdb771e6d68510509634b955d1
  - name: gstreamer-base
    version: 0.21.0
    sha: 0fe38a6d5c1e516ce3fd6069e972a540d315448ed69fdadad739e6c6c6eb2a01
  - name: gstreamer-base-sys
    version: 0.21.1
    sha: f4ca701f9078fe115b29b24c80910b577f9cb5b039182f050dbadf5933594b64
  - name: gstreamer-gl
    version: 0.21.1
    sha: 5caa903b631a00d7748efc3906d9108678162c5e15b87f83868d95ee85951613
  - name: gstreamer-gl-egl
    version: 0.21.1
    sha: 4b8d9d4a058cad68285413b333b73bc90b4478734d0d6ab8a413d60aec25ae29
  - name: gstreamer-gl-egl-sys
    version: 0.21.1
    sha: e99ebc3ea45884fb78713ec14996dbca01920e8bcc8744c835fa82f251caa812
  - name: gstreamer-gl-sys
    version: 0.21.1
    sha: 88ba5f511a1c0b4693b9f01b2d6b7dd7f1b5b476a16b8b25a89f4265e8108c34
  - name: gstreamer-gl-wayland
    version: 0.21.1
    sha: fec276a2f2d022d09f7655d7b0a4b92439a856261a077f770b02388a8556e7ff
  - name: gstreamer-gl-wayland-sys
    version: 0.21.1
    sha: 917b86f16faa53a34501252fff39f09290ba1796b73e6be07d23d97f484412a1
  - name: gstreamer-gl-x11
    version: 0.21.1
    sha: d7021b9e32c9d2c2830898cfdb60f8b1e7fea560b7cd3e221b9fad01a32af67d
  - name: gstreamer-gl-x11-sys
    version: 0.21.1
    sha: c49aef03c7b9e159b5f4c557efe4a597437ea6e5e10f934ae8b214386c6ebcdc
  - name: gstreamer-pbutils
    version: 0.21.1
    sha: f9614fc19b7bed81233e9e2142a59a6bb6a03a2006b7a6361a61d467619c56e4
  - name: gstreamer-pbutils-sys
    version: 0.21.0
    sha: 6faae6e3454bc8ca5986d7ef6477fc44b809bfc952a8680eaedb4f2e001f9d69
  - name: gstreamer-sys
    version: 0.21.1
    sha: f86bf9de67a6ab7af67ac11588f4939e984a936030437219f269fe969d79ad8c
  - name: gstreamer-video
    version: 0.21.1
    sha: 01b4d3141362b3d44a684e697d2bc55fea73d023315449cda83f0f4324531d64
  - name: gstreamer-video-sys
    version: 0.21.1
    sha: 09cdc36baab839921b05d2468524da649f373dccc5f966c75e564029dc135b1c
  - name: gtk4
    version: 0.7.3
    sha: 5aeb51aa3e9728575a053e1f43543cd9992ac2477e1b186ad824fd4adfb70842
  - name: gtk4-macros
    version: 0.7.2
    sha: d57ec49cf9b657f69a05bca8027cff0a8dfd0c49e812be026fc7311f2163832f
  - name: gtk4-sys
    version: 0.7.3
    sha: 54d8c4aa23638ce9faa2caf7e2a27d4a1295af2155c8e8d28c4d4eeca7a65eb8
  - name: hashbrown
    version: 0.14.2
    sha: f93e7192158dbcda357bdec5fb5788eebf8bbac027f3f33e719d29135ae84156
  - name: heck
    version: 0.4.1
    sha: 95505c38b4572b2d910cecb0281560f54b440a19336cbbcb27bf6ce6adc6f5a8
  - name: hermit-abi
    version: 0.3.3
    sha: d77f7ec81a6d05a3abb01ab6eb7590f6083d08449fe5a1c8b1e620283546ccb7
  - name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - name: iana-time-zone
    version: 0.1.58
    sha: 8326b86b6cff230b97d0d312a6c40a60726df3332e721f72a1b035f451663b20
  - name: iana-time-zone-haiku
    version: 0.1.2
    sha: f31827a206f56af32e590ba56d5d2d085f558508192593743f16b2306495269f
  - name: idna
    version: 0.4.0
    sha: 7d20d6b07bfbc108882d88ed8e37d39636dcc260e15e30c45e6ba089610b917c
  - name: indexmap
    version: 2.1.0
    sha: d530e1a18b1cb4c484e6e34556a0d948706958449fca0cab753d649f2bce3d1f
  - name: instant
    version: 0.1.12
    sha: 7a5bbe824c507c5da5956355e86a746d82e0e1464f65d862cc5e71da70e94b2c
  - name: io-lifetimes
    version: 1.0.11
    sha: eae7b9aee968036d54dce06cebaefd919e4472e753296daccd6d344e3e2df0c2
  - name: itertools
    version: 0.11.0
    sha: b1c173a5686ce8bfa551b3563d0c2170bf24ca44da99c7ca4bfdab5418c3fe57
  - name: js-sys
    version: 0.3.65
    sha: 54c0c35952f67de54bb584e9fd912b3023117cbafc0a77d8f3dee1fb5f572fe8
  - name: kv-log-macro
    version: 1.0.7
    sha: 0de8b303297635ad57c9f5059fd9cee7a47f8e8daa09df0fcd07dd39fb22977f
  - name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - name: libadwaita
    version: 0.5.3
    sha: 2fe7e70c06507ed10a16cda707f358fbe60fe0dc237498f78c686ade92fd979c
  - name: libadwaita-sys
    version: 0.5.3
    sha: 5e10aaa38de1d53374f90deeb4535209adc40cc5dba37f9704724169bceec69a
  - name: libc
    version: 0.2.150
    sha: 89d92a4743f9a61002fae18374ed11e7973f530cb3a3255fb354818118b2203c
  - name: linux-raw-sys
    version: 0.3.8
    sha: ef53942eb7bf7ff43a617b3e2c1c4a5ecf5944a7c1bc12d7ee39bbb15e5c1519
  - name: linux-raw-sys
    version: 0.4.10
    sha: da2479e8c062e40bf0066ffa0bc823de0a9368974af99c9f6df941d2c231e03f
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
    version: 2.6.4
    sha: f665ee40bc4a3c5590afb1e9677db74a508659dfd71e126420da8274909a0167
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
    version: 0.26.4
    sha: 598beaf3cc6fdd9a5dfb1630c2800c7acd31df7aaf0f565796fba2b53ca1af1b
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
    version: 0.2.17
    sha: 39e3200413f237f41ab11ad6d161bc7239c84dcb631773ccd7de3dfe4b5c267c
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
    version: 0.18.3
    sha: 7ca27ec1eb0457ab26f3036ea52229edbdb74dee1edd29063f5b9b010e7ebee4
  - name: pango-sys
    version: 0.18.0
    sha: 436737e391a843e5933d6d9aa102cb126d501e815b83601365a948a518555dc5
  - name: parking
    version: 2.2.0
    sha: bb813b8af86854136c6922af0598d719255ecb2179515e6e7730d468f05c9cae
  - name: paste
    version: 1.0.14
    sha: de3145af08024dea9fa9914f381a17b8fc6034dfb00f3a84013f7ff43f29ed4c
  - name: percent-encoding
    version: 2.3.0
    sha: 9b2a4787296e9989611394c33f193f676704af1686e70b8f8033ab5ba9a35a94
  - name: pin-project-lite
    version: 0.2.13
    sha: 8afb450f006bf6385ca15ef45d71d2288452bc3683ce2e2cacc0d18e4be60b58
  - name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - name: piper
    version: 0.2.1
    sha: 668d31b1c4eba19242f2088b2bf3316b82ca31082a8335764db4e083db7485d4
  - name: pkg-config
    version: 0.3.27
    sha: 26072860ba924cbfa98ea39c8c19b4dd6a4a25423dbdf219c1eca91aa0cf6964
  - name: polling
    version: 2.8.0
    sha: 4b2d323e8ca7996b3e23126511a523f7e62924d93ecd5ae73b333815b0eb3dce
  - name: polling
    version: 3.3.0
    sha: e53b6af1f60f36f8c2ac2aad5459d75a5a9b4be1e8cdd40264f315d78193e531
  - name: ppv-lite86
    version: 0.2.17
    sha: 5b40af805b3121feab8a3c29f04d8ad262fa8e0561883e7653e024ae4479e6de
  - name: pretty-hex
    version: 0.3.0
    sha: c6fa0831dd7cc608c38a5e323422a0077678fa5744aa2be4ad91c4ece8eec8d5
  - name: proc-macro-crate
    version: 1.3.1
    sha: 7f4c021e1093a56626774e81216a4ce732a735e5bad4868a03f3ed65ca0c3919
  - name: proc-macro-crate
    version: 2.0.0
    sha: 7e8366a6159044a37876a2b9817124296703c586a5c92e2c53751fa06d8d43e8
  - name: proc-macro-error
    version: 1.0.4
    sha: da25490ff9892aab3fcf7c36f08cfb902dd3e71ca0f9f9517bea02a73a5ce38c
  - name: proc-macro-error-attr
    version: 1.0.4
    sha: a1be40180e52ecc98ad80b184934baf3d0d29f979574e439af5a55274b35f869
  - name: proc-macro2
    version: 1.0.69
    sha: 134c189feb4956b20f6f547d2cf727d4c0fe06722b20a0eec87ed445a97f92da
  - name: quote
    version: 1.0.33
    sha: 5267fca4496028628a95160fc423a33e8b2e6af8a5302579e322e4b520293cae
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
    version: 0.4.1
    sha: 4722d768eff46b75989dd134e5c353f0d6296e5aaa3132e776cbdb56be7731aa
  - name: regex
    version: 1.10.2
    sha: 380b951a9c5e80ddfd6136919eef32310721aa4aacd4889a8d39124b026ab343
  - name: regex-automata
    version: 0.4.3
    sha: 5f804c7828047e88b2d32e2d7fe5a105da8ee3264f01902f796c8e067dc2483f
  - name: regex-syntax
    version: 0.8.2
    sha: c08c74e62047bb2de4ff487b251e4a92e24f48745648451635cec7d591162d9f
  - name: rustc_version
    version: 0.4.0
    sha: bfa0f585226d2e68097d4f95d113b15b83a82e819ab25717ec0590d9584ef366
  - name: rustix
    version: 0.37.27
    sha: fea8ca367a3a01fe35e6943c400addf443c0f57670e6ec51196f71a4b8762dd2
  - name: rustix
    version: 0.38.21
    sha: 2b426b0506e5d50a7d8dafcf2e81471400deb602392c7dd110815afb4eaf02a3
  - name: semver
    version: 1.0.20
    sha: 836fa6a3e1e547f9a2c4040802ec865b5d85f4014efe00555d7090a3dcaa1090
  - name: serde
    version: 1.0.190
    sha: 91d3c334ca1ee894a2c6f6ad698fe8c435b76d504b13d436f0685d648d6d96f7
  - name: serde_derive
    version: 1.0.190
    sha: 67c5609f394e5c2bd7fc51efda478004ea80ef42fee983d5c67a65e34f32c0e3
  - name: serde_repr
    version: 0.1.17
    sha: 3081f5ffbb02284dda55132aa26daecedd7372a42417bbbab6f14ab7d6bb9145
  - name: serde_spanned
    version: 0.6.4
    sha: 12022b835073e5b11e90a14f86838ceb1c8fb0325b72416845c487ac0fa95e80
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
    version: 1.11.1
    sha: 942b4a808e05215192e39f4ab80813e599068285906cc91aa64f923db842bd5a
  - name: socket2
    version: 0.4.10
    sha: 9f7916fc008ca5542385b89a3d3ce689953c143e9304a9bf8beec1de48994c0d
  - name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - name: syn
    version: 2.0.38
    sha: e96b79aaa137db8f61e26363a0c9b47d8b4ec75da28b7d1d614c2303e232408b
  - name: system-deps
    version: 6.2.0
    sha: 2a2d580ff6a20c55dfb86be5f9c238f67835d0e81cbdea8bf5680e0897320331
  - name: target-lexicon
    version: 0.12.12
    sha: 14c39fd04924ca3a864207c66fc2cd7d22d7c016007f9ce846cbb9326331930a
  - name: temp-dir
    version: 0.1.11
    sha: af547b166dd1ea4b472165569fc456cfb6818116f854690b0ff205e636523dab
  - name: tempfile
    version: 3.8.1
    sha: 7ef1adac450ad7f4b3c28589471ade84f25f731a7a0fe30d71dfa9f60fd808e5
  - name: thiserror
    version: 1.0.50
    sha: f9a7210f5c9a7156bb50aa36aed4c95afb51df0df00713949448cf9e97d382d2
  - name: thiserror-impl
    version: 1.0.50
    sha: 266b2e40bc00e5a6c09c3584011e08b06f123c00362c92b975ba9843aaaa14b8
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
    version: 0.8.6
    sha: 8ff9e3abce27ee2c9a37f9ad37238c1bdd4e789c84ba37df76aa4d528f5072cc
  - name: toml_datetime
    version: 0.6.5
    sha: 3550f4e9685620ac18a50ed434eb3aec30db8ba93b0287467bca5826ea25baf1
  - name: toml_edit
    version: 0.19.15
    sha: 1b5bb770da30e5cbfde35a2d7b9b8a2c4b8ef89548a7a6aeab5c9a576e3e7421
  - name: toml_edit
    version: 0.20.7
    sha: 70f427fce4d84c72b5b732388bf4a9f4531b53f74e2887e3ecb2481f68f66d81
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
    version: 0.1.4
    sha: f751112709b4e791d8ce53e32c4ed2d353565a795ce84da2285393f41557bdf2
  - name: tracing-subscriber
    version: 0.3.17
    sha: 30a651bc37f915e81f087d86e62a18eec5f79550c7faff886f7090b4ea757c77
  - name: typenum
    version: 1.17.0
    sha: 42ff0bf0c66b8238c6f3b578df37d0b7848e55df8577b3f74f92a69acceeb825
  - name: uds_windows
    version: 1.0.2
    sha: ce65604324d3cce9b966701489fbd0cf318cb1f7bd9dd07ac9a4ee6fb791930d
  - name: unicode-bidi
    version: 0.3.13
    sha: 92888ba5573ff080736b3648696b70cafad7d250551175acbaa4e0385b3e1460
  - name: unicode-ident
    version: 1.0.12
    sha: 3354b9ac3fae1ff6755cb6db53683adb661634f67557942dea4facebec0fee4b
  - name: unicode-normalization
    version: 0.1.22
    sha: 5c5713f0fc4b5db668a2ac63cdb7bb4469d8c9fed047b1d0292cc7b0ce2ba921
  - name: url
    version: 2.4.1
    sha: 143b538f18257fac9cad154828a57c6bf5157e1aa604d4816b5995bf6de87ae5
  - name: valuable
    version: 0.1.0
    sha: 830b7e5d4d90034032940e4ace0d9a9a057e7a45cd94e6c007832e39edb82f6d
  - name: value-bag
    version: 1.4.2
    sha: 4a72e1902dde2bd6441347de2b70b7f5d59bf157c6c62f0c44572607a1d55bbe
  - name: version-compare
    version: 0.1.1
    sha: 579a42fc0b8e0c63b76519a339be31bed574929511fa53c1a3acae26eb258f29
  - name: version_check
    version: 0.9.4
    sha: 49874b5167b65d7193b8aba1567f5c7d93d001cafc34600cee003eda787e483f
  - name: waker-fn
    version: 1.1.1
    sha: f3c4517f54858c779bbcbf228f4fca63d121bf85fbecb2dc578cdf4a39395690
  - name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
  - name: wasm-bindgen
    version: 0.2.88
    sha: 7daec296f25a1bae309c0cd5c29c4b260e510e6d813c286b19eaadf409d40fce
  - name: wasm-bindgen-backend
    version: 0.2.88
    sha: e397f4664c0e4e428e8313a469aaa58310d302159845980fd23b0f22a847f217
  - name: wasm-bindgen-futures
    version: 0.4.38
    sha: 9afec9963e3d0994cac82455b2b3502b81a7f40f9a0d32181f7528d9f4b43e02
  - name: wasm-bindgen-macro
    version: 0.2.88
    sha: 5961017b3b08ad5f3fe39f1e79877f8ee7c23c5e5fd5eb80de95abc41f1f16b2
  - name: wasm-bindgen-macro-support
    version: 0.2.88
    sha: c5353b8dab669f5e10f5bd76df26a9360c748f054f862ff5f3f8aae0c7fb3907
  - name: wasm-bindgen-shared
    version: 0.2.88
    sha: 0d046c5d029ba91a1ed14da14dca44b68bf2f124cfbaf741c54151fdb3e0750b
  - name: web-sys
    version: 0.3.65
    sha: 5db499c5f66323272151db0e666cd34f78617522fb0c1604d31a27c50c206a85
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
    version: 0.51.1
    sha: f1f8cf84f35d2db49a46868f947758c7a1138116f7fac3bc844f43ade1292e64
  - name: windows-sys
    version: 0.48.0
    sha: 677d2418bec65e3338edb076e806bc1ec15693c5d0104683f2efe857f61056a9
  - name: windows-targets
    version: 0.48.5
    sha: 9a2fa6e2155d7247be68c096456083145c183cbbbc2764150dda45a87197940c
  - name: windows_aarch64_gnullvm
    version: 0.48.5
    sha: 2b38e32f0abccf9987a4e3079dfb67dcd799fb61361e53e2882c3cbaf0d905d8
  - name: windows_aarch64_msvc
    version: 0.48.5
    sha: dc35310971f3b2dbbf3f0690a219f40e2d9afcf64f9ab7cc1be722937c26b4bc
  - name: windows_i686_gnu
    version: 0.48.5
    sha: a75915e7def60c94dcef72200b9a8e58e5091744960da64ec734a6c6e9b3743e
  - name: windows_i686_msvc
    version: 0.48.5
    sha: 8f55c233f70c4b27f66c523580f78f1004e8b5a8b659e05a4eb49d4166cca406
  - name: windows_x86_64_gnu
    version: 0.48.5
    sha: 53d40abd2583d23e4718fddf1ebec84dbff8381c07cae67ff7768bbf19c6718e
  - name: windows_x86_64_gnullvm
    version: 0.48.5
    sha: 0b7b52767868a23d5bab768e390dc5f5c55825b6d30b86c844ff2dc7414044cc
  - name: windows_x86_64_msvc
    version: 0.48.5
    sha: ed94fce61571a4006852b7389a063ab983c02eb1bb37b47f8272ce92d06d9538
  - name: winnow
    version: 0.5.19
    sha: 829846f3e3db426d4cee4510841b71a8e58aa2a76b1132579487ae430ccd9c7b
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
