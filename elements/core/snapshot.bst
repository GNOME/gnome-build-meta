kind: meson

sources:
- kind: git_repo
  url: gnome:snapshot.git
  track: main
  ref: 46.1-63-gdaf5d1b8b587ff00e0aaaee488ab3990269fe70b
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
  - kind: registry
    name: ashpd
    version: 0.8.1
    sha: dd884d7c72877a94102c3715f3b1cd09ff4fac28221add3e57cfbe25c236d093
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
    version: 0.2.7
    sha: 329972aa325176e89114919f2a80fdae4f4c040f66a370b1a1159c6c0f94e7aa
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
    version: 2.5.0
    sha: cf4b9d6a944f767f8e5e0db018570623c85f3d925ac718db4e06d0187adb21c1
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
    name: cairo-rs
    version: 0.19.4
    sha: b2ac2a4d0e69036cf0062976f6efcba1aaee3e448594e6514bb2ddf87acce562
  - kind: registry
    name: cairo-sys-rs
    version: 0.19.2
    sha: fd3bb3119664efbd78b5e6c93957447944f16bdbced84c17a9f41c7829b81e64
  - kind: registry
    name: cc
    version: 1.0.99
    sha: 96c51067fd44124faa7f870b4b1c969379ad32b2ba805aa959430ceaa384f695
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
    name: either
    version: 1.12.0
    sha: 3dca9240753cf90908d7e4aac30f630662b02aebaa1b58a3cadabdb23385b58b
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
  - kind: registry
    name: gdk-pixbuf
    version: 0.19.2
    sha: f6a23f8a0b5090494fd04924662d463f8386cc678dd3915015a838c1a3679b92
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.19.5
    sha: 1fdbf021f8b9d19e30fb9ea6d6e5f2b6a712fe4645417c69f86f6ff1e1444a8f
  - kind: registry
    name: gdk4
    version: 0.8.2
    sha: db265c9dd42d6a371e09e52deab3a84808427198b86ac792d75fd35c07990a07
  - kind: registry
    name: gdk4-sys
    version: 0.8.2
    sha: c9418fb4e8a67074919fe7604429c45aa74eb9df82e7ca529767c6d4e9dc66dd
  - kind: registry
    name: gdk4-wayland
    version: 0.8.2
    sha: f620a0ecbe4c574e3fec6bef6bebcefe19cb1b9a81569245ca4503c95f9b1371
  - kind: registry
    name: gdk4-wayland-sys
    version: 0.8.2
    sha: 7a5fd3927c917184b0e8712624eebabdc7f0909b645d468c825f8ec627e61803
  - kind: registry
    name: gdk4-win32
    version: 0.8.2
    sha: 3294d0d08b179198a01ac2623786e6227e3d7a98e042e26e4d020f31ba8fac41
  - kind: registry
    name: gdk4-win32-sys
    version: 0.8.2
    sha: 6682a82d3a1616fbe17a9a757528bd3ef0ede3eab7487f0ecf6ed2a499de117d
  - kind: registry
    name: gdk4-x11
    version: 0.8.2
    sha: ec6da3e3527007c14b27ddafe19496c49696a2a74dccb6ab75ba58dfa478b7ab
  - kind: registry
    name: gdk4-x11-sys
    version: 0.8.2
    sha: 0bb4e987ec77b7b2fb72c0943ccbec5c3834d9d7165fe762af8ff2414f0ae23d
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
    name: gio
    version: 0.19.5
    sha: be548be810e45dd31d3bbb89c6210980bb7af9bca3ea1292b5f16b75f8e394a7
  - kind: registry
    name: gio-sys
    version: 0.19.5
    sha: d4bdbef451b0f0361e7f762987cc6bebd5facab1d535e85a3cf1115dfb08db40
  - kind: registry
    name: glib
    version: 0.19.7
    sha: e52355166df21c7ed16b6a01f615669c7911ed74e27ef60eba339c0d2da12490
  - kind: registry
    name: glib-macros
    version: 0.19.7
    sha: 70025dbfa1275cf7d0531c3317ba6270dae15d87e63342229d638246ff45202e
  - kind: registry
    name: glib-sys
    version: 0.19.5
    sha: 767d23ead9bbdfcbb1c2242c155c8128a7d13dde7bf69c176f809546135e2282
  - kind: registry
    name: gobject-sys
    version: 0.19.5
    sha: c3787b0bfacca12bb25f8f822b0dbee9f7e4a86e6469a29976d332d2c14c945b
  - kind: registry
    name: graphene-rs
    version: 0.19.2
    sha: 99e4d388e96c5f29e2b2f67045d229ddf826d0a8d6d282f94ed3b34452222c91
  - kind: registry
    name: graphene-sys
    version: 0.19.5
    sha: 2a60e7381afdd7be43bd10a89d3b6741d162aabbca3a8db73505afb6a3aea59d
  - kind: registry
    name: gsk4
    version: 0.8.2
    sha: 7563884bf6939f4468e5d94654945bdd9afcaf8c3ba4c5dd17b5342b747221be
  - kind: registry
    name: gsk4-sys
    version: 0.8.2
    sha: 23024bf2636c38bbd1f822f58acc9d1c25b28da896ff0f291a1a232d4272b3dc
  - kind: registry
    name: gst-plugin-gtk4
    version: 0.12.6
    sha: 7091d1c39049e6cbe819ea5b77a4373728b096d33b851c7eb7faa81a6c358700
  - kind: registry
    name: gst-plugin-version-helper
    version: 0.8.2
    sha: 4e5e874f1660252fd2ec81c602066df3633b3a6fcbe2b196f7f93c27cf069b2a
  - kind: registry
    name: gstreamer
    version: 0.22.5
    sha: 56b59fdce2dfacda226d4b1b71ce4700b2f04228909b52252c197d8e30bd54a6
  - kind: registry
    name: gstreamer-audio
    version: 0.22.5
    sha: 703e65074d4f5dce207e855d8f36697ec93f953e5412780dcffc70cb5483337e
  - kind: registry
    name: gstreamer-audio-sys
    version: 0.22.5
    sha: 2dfb1c22539b9b31fde5513fd68e2f0edeeaa5591d92daaaadbfa392736e820f
  - kind: registry
    name: gstreamer-base
    version: 0.22.0
    sha: 514c71195b53c7eced4842b66ca9149833e41cf6a1d949e45e2ca4a4fa929850
  - kind: registry
    name: gstreamer-base-sys
    version: 0.22.5
    sha: 2d8d11de9d94072657f2e9ca294b72326874a1e53de9f45613a9bf00773a5938
  - kind: registry
    name: gstreamer-gl
    version: 0.22.0
    sha: 7d21c0c5fbf74018a0254b3ab77bca0a5b2c0f002bcfd910c09113ae90a95d98
  - kind: registry
    name: gstreamer-gl-egl
    version: 0.22.0
    sha: dfde7bf67f5f7c87e1ff29cdeea4918530d677b51e3f4847121ada44f1fab139
  - kind: registry
    name: gstreamer-gl-egl-sys
    version: 0.22.5
    sha: 11aebab3245bc0b271f8bfb97d72f56850a5a62c801007c74d40c110adcee19f
  - kind: registry
    name: gstreamer-gl-sys
    version: 0.22.5
    sha: 57116ddc5dc45d9af1fcfd700e1b30958c7c0754519ddd7961dd2547d9eed6e1
  - kind: registry
    name: gstreamer-gl-wayland
    version: 0.22.0
    sha: f9fbfe3d0c2469023b73df8408a4b19daaf7bd30141e9fc67e4ab63d41db5ee2
  - kind: registry
    name: gstreamer-gl-wayland-sys
    version: 0.22.5
    sha: 6fe4c64bc48ff54704047e9fa6b1a7f769d988389ae3b24ee5191c17f6c16c29
  - kind: registry
    name: gstreamer-gl-x11
    version: 0.22.0
    sha: 42ed82941c84668d89dbf81f220083422268c22ec6ab4991806649ed6758cec8
  - kind: registry
    name: gstreamer-gl-x11-sys
    version: 0.22.5
    sha: e32e55003727d84746d15f2bd409a1e0f3d22313ac2595eb184b1fd2f6afaf0c
  - kind: registry
    name: gstreamer-pbutils
    version: 0.22.5
    sha: 8d004276940d3b2c91526262ea2c16d3db4f90dfaf25b72435e042ff8960d420
  - kind: registry
    name: gstreamer-pbutils-sys
    version: 0.22.5
    sha: 9d1621d1fef2b1f30dcb312e0f6cd6a4df085272bb9bb1058c9f36897cd2e4bb
  - kind: registry
    name: gstreamer-sys
    version: 0.22.5
    sha: 4975a75279a9cf658bac1798dcf57100c6ec89fca7886572c8250ea4d94b76bd
  - kind: registry
    name: gstreamer-video
    version: 0.22.5
    sha: 2a7900a4c4d7a48bd73405fb23289d2604c5efe483eb224cbe252d6a7517a6d5
  - kind: registry
    name: gstreamer-video-sys
    version: 0.22.5
    sha: 1cbe811de2cc60da42eb6d374a106bb5446e8fcd2134a97319dd2b8cc11450c7
  - kind: registry
    name: gtk4
    version: 0.8.2
    sha: b04e11319b08af11358ab543105a9e49b0c491faca35e2b8e7e36bfba8b671ab
  - kind: registry
    name: gtk4-macros
    version: 0.8.2
    sha: ec655a7ef88d8ce9592899deb8b2d0fa50bab1e6dd69182deb764e643c522408
  - kind: registry
    name: gtk4-sys
    version: 0.8.2
    sha: 8c8aa86b7f85ea71d66ea88c1d4bae1cfacf51ca4856274565133838d77e57b5
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
    version: 0.3.9
    sha: d231dfb89cfffdbc30e7fc41579ed6066ad03abda9e567ccafae602b97ec5024
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
    name: js-sys
    version: 0.3.69
    sha: 29c15563dc2726973df627357ce0c9ddddbea194836909d655df6a75d2cf296d
  - kind: registry
    name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - kind: registry
    name: libadwaita
    version: 0.6.0
    sha: 91b4990248b9e1ec5e72094a2ccaea70ec3809f88f6fd52192f2af306b87c5d9
  - kind: registry
    name: libadwaita-sys
    version: 0.6.0
    sha: 23a748e4e92be1265cd9e93d569c0b5dfc7814107985aa6743d670ab281ea1a8
  - kind: registry
    name: libc
    version: 0.2.155
    sha: 97b3888a4aecf77e811145cadf6eef5901f4782c53886191b2f693f24761847c
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
    version: 0.4.21
    sha: 90ed8c1e510134f979dbc4f070f87d4313098b704861a105fe34231c70a3901c
  - kind: registry
    name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - kind: registry
    name: memchr
    version: 2.7.2
    sha: 6c8640c5d730cb13ebd907d8d04b52f55ac9a2eec55b440c8892f40d56c76c1d
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
    version: 0.28.0
    sha: ab2156c4fce2f8df6c499cc1c763e4394b7482525bf2a9701c9d79d215f519e4
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
  - kind: registry
    name: pango
    version: 0.19.5
    sha: 504ce6e805439ea2c6791168fe7ef8e3da0c1b2ef82c44bc450dbc330592920d
  - kind: registry
    name: pango-sys
    version: 0.19.5
    sha: e4829555bdbb83692ddeaf5a6927fb2d025c8131e5ecaa4f7619fff6985d3505
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
    version: 3.7.1
    sha: 5e6a007746f34ed64099e88783b0ae369eaa3da6392868ba262e2af9b8fbaea1
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
    version: 1.0.85
    sha: 22244ce15aa966053a896d1accb3a6e68469b97c7f33f284b99f0d576879fc23
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
    version: 1.10.4
    sha: c117dbdfde9c8308975b6a18d71f3f385c89461f7b3fb054288ecf2a2058ba4c
  - kind: registry
    name: regex-automata
    version: 0.4.6
    sha: 86b83b8b9847f9bf95ef68afb0b8e6cdb80f498442f5179a29fad448fcc1eaea
  - kind: registry
    name: regex-syntax
    version: 0.8.3
    sha: adad44e29e4c806119491a7f06f03de4d1af22c3a680dd47f1e6e179439d1f56
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
    version: 2.0.66
    sha: c42f3f41a2de00b01c0aaad383c5a45241efc8b2d1eda5661812fda5f3cdcff5
  - kind: registry
    name: system-deps
    version: 6.2.2
    sha: a3e535eb8dded36d55ec13eddacd30dec501792ff23a0b1682c38601b8cf2349
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
    version: 1.6.0
    sha: 87cc5ceb3875bb20c2890005a4e226a4651264a5c75edb2421b52861a0a0cb50
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
    version: 2.5.0
    sha: 31e6302e3bb753d46e83516cae55ae196fc0c309407cf11ab35cc51a4c2a4633
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
    version: 1.1.0
    sha: 21e5a325c3cb8398ad6cf859c1135b25dd29e186679cf2da7581d9679f63b38e
  - kind: registry
    name: zbus
    version: 4.2.2
    sha: 989c3977a7aafa97b12b9a35d21cdcff9b0d2289762b14683f45d66b1ba6c48f
  - kind: registry
    name: zbus_macros
    version: 4.2.2
    sha: 6fe9de53245dcf426b7be226a4217dd5e339080e5d46e64a02d6e5dcbf90fca1
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
