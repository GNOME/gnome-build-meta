kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:sophie-h/glycin.git
  track: main
  ref: 0.1.2-76-gaed1e60c36960c1fceec02d376a995c232f102cc
- kind: cargo

  ref:
  - name: addr2line
    version: 0.21.0
    sha: 8a30b2e23b9e17a9f90641c7ab1549cd9b44f296d3ccbf309d2863cfe398a0cb
  - name: adler
    version: 1.0.2
    sha: f26201604c87b1e01bd3d98f8d5d9a8fcbb815e8cedb41ffccbeb4bf593a35fe
  - name: aho-corasick
    version: 1.1.2
    sha: b2969dcb958b36655471fc61f7e416fa76033bdd4bfed0678d8fee1e2d07a1f0
  - name: anyhow
    version: 1.0.79
    sha: 080e9890a082662b09c1ad45f567faeeb47f22b5fb23895fbe1e651e718e25ca
  - name: approx
    version: 0.5.1
    sha: cab112f0a86d568ea0e627cc1d6be74a1e9cd55214684db5561995f6dad897c6
  - name: async-broadcast
    version: 0.5.1
    sha: 7c48ccdbf6ca6b121e0f586cbc0e73ae440e56c67c30fa0873b4e110d9c26d2b
  - name: async-channel
    version: 2.1.1
    sha: 1ca33f4bc4ed1babef42cad36cc1f51fa88be00420404e5b1e80ab1b18f7678c
  - name: async-executor
    version: 1.8.0
    sha: 17ae5ebefcc48e7452b4987947920dac9450be1110cadf34d1b8c116bdbaf97c
  - name: async-fs
    version: 1.6.0
    sha: 279cf904654eeebfa37ac9bb1598880884924aab82e290aa65c9e77a0e142e06
  - name: async-fs
    version: 2.1.0
    sha: dd1f344136bad34df1f83a47f3fd7f2ab85d75cb8a940af4ccf6d482a84ea01b
  - name: async-global-executor
    version: 2.4.1
    sha: 05b1b633a2115cd122d73b955eadd9916c18c8f510ec9cd1686404c60ad1c29c
  - name: async-io
    version: 1.13.0
    sha: 0fc5b45d93ef0529756f812ca52e44c221b35341892d3dcc34132ac02f3dd2af
  - name: async-io
    version: 2.3.1
    sha: 8f97ab0c5b00a7cdbe5a371b9a782ee7be1316095885c8a4ea1daf490eb0ef65
  - name: async-lock
    version: 2.8.0
    sha: 287272293e9d8c41773cec55e365490fe034813a2f172f502d6ddcf75b2f582b
  - name: async-lock
    version: 3.3.0
    sha: d034b430882f8381900d3fe6f0aaa3ad94f2cb4ac519b429692a1bc2dda4ae7b
  - name: async-process
    version: 1.8.1
    sha: ea6438ba0a08d81529c69b36700fa2f95837bfe3e776ab39cde9c14d9149da88
  - name: async-process
    version: 2.0.1
    sha: 15c1cd5d253ecac3d3cf15e390fd96bd92a13b1d14497d81abf077304794fb04
  - name: async-recursion
    version: 1.0.5
    sha: 5fd55a5ba1179988837d24ab4c7cc8ed6efdeff578ede0416b4225a5fca35bd0
  - name: async-signal
    version: 0.2.5
    sha: 9e47d90f65a225c4527103a8d747001fc56e375203592b25ad103e1ca13124c5
  - name: async-task
    version: 4.7.0
    sha: fbb36e985947064623dbd357f727af08ffd077f93d696782f3c56365fa2e2799
  - name: async-trait
    version: 0.1.77
    sha: c980ee35e870bd1a4d2c8294d4c04d0499e67bca1e4b5cefcc693c2fa00caea9
  - name: atomic-waker
    version: 1.1.2
    sha: 1505bd5d3d116872e7271a6d4e16d81d0c8570876c8de68093a09ac269d8aac0
  - name: autocfg
    version: 1.1.0
    sha: d468802bab17cbc0cc575e9b053f41e72aa36bfa6b7f55e3529ffa43161b97fa
  - name: backtrace
    version: 0.3.69
    sha: 2089b7e3f35b9dd2d0ed921ead4f6d318c27680d4a5bd167b3ee120edb105837
  - name: bindgen
    version: 0.69.4
    sha: a00dc851838a2120612785d195287475a3ac45514741da670b735818822129a0
  - name: bit_field
    version: 0.10.2
    sha: dc827186963e592360843fb5ba4b973e145841266c1357f7180c43526f2e5b61
  - name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - name: bitflags
    version: 2.4.2
    sha: ed570934406eb16438a4e976b1b4500774099c13b8cb96eec99f620f05090ddf
  - name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - name: block-buffer
    version: 0.10.4
    sha: 3078c7629b62d3f0439517fa394996acacc5cbc91c5a20d8c658e77abd503a71
  - name: blocking
    version: 1.5.1
    sha: 6a37913e8dc4ddcc604f0c6d3bf2887c995153af3611de9e23c352b44c1b9118
  - name: bytemuck
    version: 1.14.1
    sha: ed2490600f404f2b94c167e31d3ed1d5f3c225a0f3b80230053b3e0b7b962bd9
  - name: byteorder
    version: 1.5.0
    sha: 1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b
  - name: bytes
    version: 1.5.0
    sha: a2bd12c1caf447e69cd4528f47f94d203fd2582878ecb9e9465484c4148a8223
  - name: cairo-rs
    version: 0.18.5
    sha: 8ca26ef0159422fb77631dc9d17b102f253b876fe1586b03b803e63a309b4ee2
  - name: cairo-rs
    version: 0.19.1
    sha: bc1c415b7088381c53c575420899c34c9e6312df5ac5defd05614210e9fd6e1b
  - name: cairo-sys-rs
    version: 0.18.2
    sha: 685c9fa8e590b8b3d678873528d83411db17242a73fccaed827770ea0fedda51
  - name: cairo-sys-rs
    version: 0.19.1
    sha: 75b6a5fefce2eadb8333e3c604ac964ba6573ec4f28bdd17f67032c4a2831831
  - name: cast
    version: 0.3.0
    sha: 37b2a672a2cb129a2e41c10b1224bb368f9f37a2b16b612598138befd7b37eb5
  - name: cc
    version: 1.0.83
    sha: f1174fb0b6ec23863f8b971027804a42614e347eafb0a95bf0b12cdae21fc4d0
  - name: cexpr
    version: 0.6.0
    sha: 6fac387a98bb7c37292057cffc56d62ecb629900026402633ae9160df93a8766
  - name: cfg-expr
    version: 0.15.6
    sha: 6100bc57b6209840798d95cb2775684849d332f7bd788db2a8c8caf7ef82a41a
  - name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - name: clang-sys
    version: 1.7.0
    sha: 67523a3b4be3ce1989d607a828d036249522dd9c1c8de7f4dd2dae43a37369d1
  - name: color_quant
    version: 1.1.0
    sha: 3d7b894f5411737b7867f4827955924d7c254fc9f4d91a6aad6b097804b1018b
  - name: concurrent-queue
    version: 2.4.0
    sha: d16048cd947b08fa32c24458a22f5dc5e835264f689f4f5653210c69fd107363
  - name: cpufeatures
    version: 0.2.12
    sha: 53fe5e26ff1b7aef8bca9c6080520cfb8d9333c7568e1829cef191a9723e5504
  - name: crc32fast
    version: 1.3.2
    sha: b540bd8bc810d3885c6ea91e2018302f68baba2129ab3e88f32389ee9370880d
  - name: crossbeam-deque
    version: 0.8.5
    sha: 613f8cc01fe9cf1a3eb3d7f488fd2fa8388403e97039e2f73692932e291a770d
  - name: crossbeam-epoch
    version: 0.9.18
    sha: 5b82ac4a3c2ca9c3460964f020e1402edd5753411d7737aa39c3714ad1b5420e
  - name: crossbeam-utils
    version: 0.8.19
    sha: 248e3bacc7dc6baa3b21e405ee045c3047101a49145e7e9eca583ab4c2ca5345
  - name: crunchy
    version: 0.2.2
    sha: 7a81dae078cea95a014a339291cec439d2f232ebe854a9d672b796c6afafa9b7
  - name: crypto-common
    version: 0.1.6
    sha: 1bfb12502f3fc46cca1bb51ac28df9d618d813cdc3d2f25b9fe775a34af26bb3
  - name: cssparser
    version: 0.31.2
    sha: 5b3df4f93e5fbbe73ec01ec8d3f68bba73107993a5b1e7519273c32db9b0d5be
  - name: cssparser-macros
    version: 0.6.1
    sha: 13b588ba4ac1a99f7f2964d24b3d896ddc6bf847ee3855dbd4366f058cfcd331
  - name: darling
    version: 0.14.4
    sha: 7b750cb3417fd1b327431a470f388520309479ab0bf5e323505daf0290cd3850
  - name: darling_core
    version: 0.14.4
    sha: 109c1ca6e6b7f82cc233a97004ea8ed7ca123a9af07a8230878fcfda9b158bf0
  - name: darling_macro
    version: 0.14.4
    sha: a4aab4dbc9f7611d8b55048a3a16d2d010c2c8334e46304b40ac1cc14bf3b48e
  - name: data-url
    version: 0.3.1
    sha: 5c297a1c74b71ae29df00c3e22dd9534821d60eb9af5a0192823fa2acea70c2a
  - name: derivative
    version: 2.2.0
    sha: fcc3dd5e9e9c0b295d6e1e4d811fb6f157d5ffd784b8d202fc62eac8035a770b
  - name: derive_builder
    version: 0.12.0
    sha: 8d67778784b508018359cbc8696edb3db78160bab2c2a28ba7f56ef6932997f8
  - name: derive_builder_core
    version: 0.12.0
    sha: c11bdc11a0c47bc7d37d582b5285da6849c96681023680b906673c5707af7b0f
  - name: derive_builder_macro
    version: 0.12.0
    sha: ebcda35c7a396850a55ffeac740804b40ffec779b98fffbb1738f4033f0ee79e
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
    version: 0.8.33
    sha: 7268b386296a025e474d5140678f75d6de9493ae55a5d709eeb9dd08149945e1
  - name: enumflags2
    version: 0.7.8
    sha: 5998b4f30320c9d93aed72f63af821bfdac50465b75428fce77b48ec482c3939
  - name: enumflags2_derive
    version: 0.7.8
    sha: f95e2801cd355d4a1a3e3953ce6ee5ae9603a5c833455343a8bfe3f44d418246
  - name: enumn
    version: 0.1.13
    sha: 6fd000fd6988e73bbe993ea3db9b1aa64906ab88766d654973924340c8cddb42
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
    version: 3.1.0
    sha: d93877bcde0eb80ca09131a08d23f0a5c18a620b01db137dba666d18cd9b30c2
  - name: event-listener
    version: 4.0.3
    sha: 67b215c49b2b248c855fb73579eb1f4f26c38ffdc12973e20e07b91d78d5646e
  - name: event-listener-strategy
    version: 0.4.0
    sha: 958e4d70b6d5e81971bebec42271ec641e7ff4e170a6fa605f2b8a8b65cb97d3
  - name: exr
    version: 1.72.0
    sha: 887d93f60543e9a9362ef8a21beedd0a833c5d9610e18c67abe15a5963dcb1a4
  - name: fastrand
    version: 1.9.0
    sha: e51093e27b0797c359783294ca4f0a911c270184cb10f85783b118614a1501be
  - name: fastrand
    version: 2.0.1
    sha: 25cbce373ec4653f1a01a31e8a5e5ec0c622dc27ff9c4e6606eefef5cbbed4a5
  - name: fdeflate
    version: 0.3.4
    sha: 4f9bfee30e4dedf0ab8b422f03af778d9612b63f502710fc500a334ebe2de645
  - name: flate2
    version: 1.0.28
    sha: 46303f565772937ffe1d394a4fac6f411c6013172fadde9dcdb1e147a086940e
  - name: float-cmp
    version: 0.9.0
    sha: 98de4bbd547a563b716d8dfa9aad1cb19bfab00f4fa09a6a4ed21dbcf44ce9c4
  - name: flume
    version: 0.11.0
    sha: 55ac459de2512911e4b674ce33cf20befaba382d05b62b008afc1c8b57cbf181
  - name: fnv
    version: 1.0.7
    sha: 3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1
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
    version: 1.2.1
    sha: e13624c2627564efccf4934284bdd98cbaa14e79b0b5a141218e507b3a823456
  - name: four-cc
    version: 0.3.0
    sha: 431a4c31778fde52b4400de34975f219eeca55cc829a9de157cd743a5b230ecb
  - name: futf
    version: 0.1.5
    sha: df420e2e84819663797d1ec6544b13c5be84629e7bb00dc960d6917db2987843
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
    version: 1.13.0
    sha: 49a9d51ce47660b1e808d3c990b4709f2f415d928835a17dfd16991515c46bce
  - name: futures-lite
    version: 2.2.0
    sha: 445ba825b27408685aaecefd65178908c36c6e96aaf6d8599419d46e624192ba
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
  - name: fxhash
    version: 0.2.1
    sha: c31b6d751ae2c7f11320402d34e41349dd1016f8d5d45e48c4312bc8625af50c
  - name: gdk-pixbuf
    version: 0.18.5
    sha: 50e1f5f1b0bfb830d6ccc8066d18db35c487b1b2b1e8589b5dfe9f07e8defaec
  - name: gdk-pixbuf
    version: 0.19.0
    sha: c311c47800051b87de1335e8792774d7cec551c91a0a3d109ab21d76b36f208f
  - name: gdk-pixbuf-sys
    version: 0.18.0
    sha: 3f9839ea644ed9c97a34d129ad56d38a25e6756f99f3a88e15cd39c20629caf7
  - name: gdk-pixbuf-sys
    version: 0.19.0
    sha: 3dcbd04c1b2c4834cc008b4828bc917d062483b88d26effde6342e5622028f96
  - name: gdk4
    version: 0.8.0
    sha: 6771942f85a2beaa220c64739395e4401b9fab4a52aba9b503fa1e6ed4d4d806
  - name: gdk4-sys
    version: 0.8.0
    sha: 1eb95854fab65072023a7814434f003db571d6e45c287c0b0c540c1c78bdf6ae
  - name: generic-array
    version: 0.14.7
    sha: 85649ca51fd72272d7821adaf274ad91c288277713d9c18820d8499a7ff69e9a
  - name: getrandom
    version: 0.2.12
    sha: 190092ea657667030ac6a35e305e62fc4dd69fd98ac98631e5d3a2b1575a12b5
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
    version: 0.28.1
    sha: 4271d37baee1b8c7e4b708028c57d816cf9d2434acb33a549475f78c181f6253
  - name: gio
    version: 0.18.4
    sha: d4fc8f532f87b79cbc51a79748f16a6828fb784be93145a322fa14d06d354c73
  - name: gio
    version: 0.19.0
    sha: b3d1aaa2d926710a27f3b35822806b1513b393b71174dd2601c9d02fdab0cb82
  - name: gio-sys
    version: 0.18.1
    sha: 37566df850baf5e4cb0dfb78af2e4b9898d817ed9263d1090a2df958c64737d2
  - name: gio-sys
    version: 0.19.0
    sha: bcf8e1d9219bb294636753d307b030c1e8a032062cba74f493c431a5c8b81ce4
  - name: glib
    version: 0.18.5
    sha: 233daaf6e83ae6a12a52055f568f9d7cf4671dabb78ff9560ab6da230ce00ee5
  - name: glib
    version: 0.19.0
    sha: 170ee82b9b44b3b5fd1cf4971d6cf0eadec38303bb84c7bcc4e6b95a18934e71
  - name: glib-macros
    version: 0.18.5
    sha: 0bb0228f477c0900c880fd78c8759b95c7636dbd7842707f49e132378aa2acdc
  - name: glib-macros
    version: 0.19.0
    sha: 2ff52fff7e4d1bb8598ae744e9bb90c8c76271712483c3f0ce931bee9814de85
  - name: glib-sys
    version: 0.18.1
    sha: 063ce2eb6a8d0ea93d2bf8ba1957e78dbab6be1c2220dd3daca57d5a9d869898
  - name: glib-sys
    version: 0.19.0
    sha: 630f097773d7c7a0bb3258df4e8157b47dc98bbfa0e60ad9ab56174813feced4
  - name: glob
    version: 0.3.1
    sha: d2fabcfbdc87f4758337ca535fb41a6d701b65693ce38287d856d1674551ec9b
  - name: gobject-sys
    version: 0.18.0
    sha: 0850127b514d1c4a4654ead6dedadb18198999985908e6ffe4436f53c785ce44
  - name: gobject-sys
    version: 0.19.0
    sha: c85e2b1080b9418dd0c58b498da3a5c826030343e0ef07bde6a955d28de54979
  - name: half
    version: 2.3.1
    sha: bc52e53916c08643f1b56ec082790d1e86a32e58dc5268f897f313fbae7b4872
  - name: hashbrown
    version: 0.14.3
    sha: 290f1a1d9242c78d09ce40a5e87e7554ee637af1351968159f4952f028f75604
  - name: heck
    version: 0.4.1
    sha: 95505c38b4572b2d910cecb0281560f54b440a19336cbbcb27bf6ce6adc6f5a8
  - name: hermit-abi
    version: 0.3.4
    sha: 5d3d0e0f38255e7fa3cf31335b3a56f05febd18025f4db5ef7a0cfb4f8da651f
  - name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - name: home
    version: 0.5.9
    sha: e3d1354bf6b7235cb4a0576c2619fd4ed18183f689b12b006a0ee7329eeff9a5
  - name: ident_case
    version: 1.0.1
    sha: b9e0384b61958566e926dc50660321d12159025e767c18e043daf26b70104c39
  - name: idna
    version: 0.5.0
    sha: 634d9b1461af396cad843f47fdba5597a4f9e6ddd4bfb6ff5d85028c25cb12f6
  - name: image
    version: 0.24.8
    sha: 034bbe799d1909622a74d1193aa50147769440040ff36cb2baa947609b0a4e23
  - name: indexmap
    version: 2.2.2
    sha: 824b2ae422412366ba479e8111fd301f7b5faece8149317bb81925979a53f520
  - name: instant
    version: 0.1.12
    sha: 7a5bbe824c507c5da5956355e86a746d82e0e1464f65d862cc5e71da70e94b2c
  - name: io-lifetimes
    version: 1.0.11
    sha: eae7b9aee968036d54dce06cebaefd919e4472e753296daccd6d344e3e2df0c2
  - name: itertools
    version: 0.11.0
    sha: b1c173a5686ce8bfa551b3563d0c2170bf24ca44da99c7ca4bfdab5418c3fe57
  - name: itertools
    version: 0.12.1
    sha: ba291022dbbd398a455acf126c1e341954079855bc60dfdda641363bd6922569
  - name: itoa
    version: 1.0.10
    sha: b1a46d1a171d865aa5f83f92695765caa047a9b4cbae2cbf37dbd613a793fd4c
  - name: jobserver
    version: 0.1.27
    sha: 8c37f63953c4c63420ed5fd3d6d398c719489b9f872b9fa683262f8edd363c7d
  - name: jpeg-decoder
    version: 0.3.1
    sha: f5d4a7da358eff58addd2877a45865158f0d78c911d43a5784ceb7bbf52833b0
  - name: jpegxl-rs
    version: 0.8.3+libjxl-0.8.2
    sha: 35d93499577a4b5072cc59b6c45436f42854209152ecbcfd1e88aa1b45883d70
  - name: jpegxl-sys
    version: 0.8.2+libjxl-0.8.2
    sha: b907f540220390b54d9845eb5fe6a8f0453a0ea4f1e2e306cdbdbe8ee027d540
  - name: kamadak-exif
    version: 0.5.5
    sha: ef4fc70d0ab7e5b6bafa30216a6b48705ea964cdfc29c050f2412295eba58077
  - name: language-tags
    version: 0.3.2
    sha: d4345964bb142484797b161f473a503a434de77149dd8c7427788c6e13379388
  - name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - name: lazycell
    version: 1.3.0
    sha: 830d08ce1d1d941e6b30645f1a0eb5643013d835ce3779a5fc208261dbe10f55
  - name: lcms2
    version: 6.0.4
    sha: 2249d276363ddd7591b2e049d61d3d2be5efe8acabd670f4e9480e5fecbb5a60
  - name: lcms2-sys
    version: 4.0.4
    sha: 99c5fe876968a1685074a0978632afd4629d7ba40f0ac563388c1a296ce12536
  - name: lebe
    version: 0.5.2
    sha: 03087c2bad5e1034e8cace5926dec053fb3790248370865f5117a7d0213354c8
  - name: libc
    version: 0.2.153
    sha: 9c198f91728a82281a64e1f4f9eeb25d82cb32a5de251c6bd1b5154d63a8e7bd
  - name: libheif-rs
    version: 1.0.0
    sha: fc66735697217d6676b6fe89b33cbd0e7c580e5beffbc3861bdf42eb1ce1aa70
  - name: libheif-sys
    version: 2.1.0+1.17.4
    sha: 01b9d5bf9cf5c3d24fd875f09817810cd33b7dd1e13d6c52a0148f221224cd22
  - name: libloading
    version: 0.8.1
    sha: c571b676ddfc9a8c12f1f3d3085a7b163966a8fd8098a90640953ce5f6170161
  - name: librsvg
    version: 2.58.0-beta.0
    sha: 15cae2c563ada9fd1fc7a9778c9eed149a105453fdc81095defdd5dd375de440
  - name: libseccomp
    version: 0.3.0
    sha: 21c57fd8981a80019807b7b68118618d29a87177c63d704fc96e6ecd003ae5b3
  - name: libseccomp-sys
    version: 0.2.1
    sha: 9a7cbbd4ad467251987c6e5b47d53b11a5a05add08f2447a9e2d70aef1e0d138
  - name: linux-raw-sys
    version: 0.3.8
    sha: ef53942eb7bf7ff43a617b3e2c1c4a5ecf5944a7c1bc12d7ee39bbb15e5c1519
  - name: linux-raw-sys
    version: 0.4.13
    sha: 01cda141df6706de531b6c46c3a33ecca755538219bd484262fa09410c13539c
  - name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - name: lock_api
    version: 0.4.11
    sha: 3c168f8615b12bc01f9c17e2eb0cc07dcae1940121185446edc3744920e8ef45
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
  - name: matrixmultiply
    version: 0.3.8
    sha: 7574c1cf36da4798ab73da5b215bbf444f50718207754cb522201d78d1cd0ff2
  - name: memchr
    version: 2.7.1
    sha: 523dc4f511e55ab87b694dc30d0f820d60906ef06413f93d4d7a1385599cc149
  - name: memfd
    version: 0.6.4
    sha: b2cffa4ad52c6f791f4f8b15f0c05f9824b2ced1160e88cc393d64fff9a8ac64
  - name: memmap2
    version: 0.9.4
    sha: fe751422e4a8caa417e13c3ea66452215d7d63e19e604f4980461212f3ae1322
  - name: memoffset
    version: 0.7.1
    sha: 5de893c32cde5f383baa4c04c5d6dbdd735cfd4a794b0debdb2bb1b421da5ff4
  - name: memoffset
    version: 0.9.0
    sha: 5a634b1c61a95585bd15607c6ab0c4e5b226e695ff2800ba0cdccddf208c406c
  - name: minimal-lexical
    version: 0.2.1
    sha: 68354c5c6bd36d73ff3feceb05efa59b6acb7626617f4962be322a825e61f79a
  - name: miniz_oxide
    version: 0.7.2
    sha: 9d811f3e15f28568be3407c8e7fdb6514c1cda3cb30683f15b6a1a1dc4ea14a7
  - name: mio
    version: 0.8.10
    sha: 8f3d0b296e374a4e6f3c7b0a1f5a51d748a0d34c85e7dc48fc3fa9a87657fe09
  - name: mutate_once
    version: 0.1.1
    sha: 16cf681a23b4d0a43fc35024c176437f9dcd818db34e0f42ab456a0ee5ad497b
  - name: nalgebra
    version: 0.32.3
    sha: 307ed9b18cc2423f29e83f84fd23a8e73628727990181f18641a8b5dc2ab1caa
  - name: nalgebra-macros
    version: 0.2.1
    sha: 91761aed67d03ad966ef783ae962ef9bbaca728d2dd7ceb7939ec110fffad998
  - name: new_debug_unreachable
    version: 1.0.4
    sha: e4a24736216ec316047a1fc4252e27dabb04218aa4a3f37c6e7ddbf1f9782b54
  - name: nix
    version: 0.26.4
    sha: 598beaf3cc6fdd9a5dfb1630c2800c7acd31df7aaf0f565796fba2b53ca1af1b
  - name: nix
    version: 0.27.1
    sha: 2eb04e9c688eff1c89d72b407f168cf79bb9e867a9d3323ed6c01519eb9cc053
  - name: nom
    version: 7.1.3
    sha: d273983c5a657a70a3e8f2a01329822f3b8c8172b73826411a55751e404a0a4a
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
  - name: object
    version: 0.32.2
    sha: a6a622008b6e321afc04970976f62ee297fdbaa6f95318ca343e3eebb9648441
  - name: once_cell
    version: 1.19.0
    sha: 3fdb12b2476b595f9358c5161aa467c2438859caa136dec86c26fdd2efe17b92
  - name: ordered-stream
    version: 0.2.0
    sha: 9aa2b01e1d916879f73a53d01d1d6cee68adbb31d6d9177a8cfce093cced1d50
  - name: pango
    version: 0.18.3
    sha: 7ca27ec1eb0457ab26f3036ea52229edbdb74dee1edd29063f5b9b010e7ebee4
  - name: pango
    version: 0.19.0
    sha: 78d7f779b957728c74fd1a060dfa6d89a0bea792ebc50cc2da80e4e87282d69e
  - name: pango-sys
    version: 0.18.0
    sha: 436737e391a843e5933d6d9aa102cb126d501e815b83601365a948a518555dc5
  - name: pango-sys
    version: 0.19.0
    sha: f52ef6a881c19fbfe3b1484df5cad411acaaba29dbec843941c3110d19f340ea
  - name: pangocairo
    version: 0.18.0
    sha: 57036589a9cfcacf83f9e606d15813fc6bf03f0e9e69aa2b5e3bb85af86b38a5
  - name: pangocairo-sys
    version: 0.18.0
    sha: fc3c8ff676a37e7a72ec1d5fc029f91c407278083d2752784ff9f5188c108833
  - name: parking
    version: 2.2.0
    sha: bb813b8af86854136c6922af0598d719255ecb2179515e6e7730d468f05c9cae
  - name: parking_lot
    version: 0.12.1
    sha: 3742b2c103b9f06bc9fff0a37ff4912935851bee6d36f3c02bcc755bcfec228f
  - name: parking_lot_core
    version: 0.9.9
    sha: 4c42a9226546d68acdd9c0a280d17ce19bfe27a46bf68784e4066115788d008e
  - name: paste
    version: 1.0.14
    sha: de3145af08024dea9fa9914f381a17b8fc6034dfb00f3a84013f7ff43f29ed4c
  - name: percent-encoding
    version: 2.3.1
    sha: e3148f5046208a5d56bcfc03053e3ca6334e51da8dfb19b6cdc8b306fae3283e
  - name: phf
    version: 0.10.1
    sha: fabbf1ead8a5bcbc20f5f8b939ee3f5b0f6f281b6ad3468b84656b658b455259
  - name: phf
    version: 0.11.2
    sha: ade2d8b8f33c7333b51bcf0428d37e217e9f32192ae4772156f65063b8ce03dc
  - name: phf_codegen
    version: 0.10.0
    sha: 4fb1c3a8bc4dd4e5cfce29b44ffc14bedd2ee294559a294e2a4d4c9e9a6a13cd
  - name: phf_generator
    version: 0.10.0
    sha: 5d5285893bb5eb82e6aaf5d59ee909a06a16737a8970984dd7746ba9283498d6
  - name: phf_generator
    version: 0.11.2
    sha: 48e4cc64c2ad9ebe670cb8fd69dd50ae301650392e81c05f9bfcb2d5bdbc24b0
  - name: phf_macros
    version: 0.11.2
    sha: 3444646e286606587e49f3bcf1679b8cef1dc2c5ecc29ddacaffc305180d464b
  - name: phf_shared
    version: 0.10.0
    sha: b6796ad771acdc0123d2a88dc428b5e38ef24456743ddb1744ed628f9815c096
  - name: phf_shared
    version: 0.11.2
    sha: 90fcb95eef784c2ac79119d1dd819e162b5da872ce6f3c3abe1e8ca1c082f72b
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
    version: 0.3.29
    sha: 2900ede94e305130c13ddd391e0ab7cbaeb783945ae07a279c268cb05109c6cb
  - name: png
    version: 0.17.11
    sha: 1f6c3c3e617595665b8ea2ff95a86066be38fb121ff920a9c0eb282abcd1da5a
  - name: polling
    version: 2.8.0
    sha: 4b2d323e8ca7996b3e23126511a523f7e62924d93ecd5ae73b333815b0eb3dce
  - name: polling
    version: 3.3.2
    sha: 545c980a3880efd47b2e262f6a4bb6daad6555cf3367aa9c4e52895f69537a41
  - name: ppv-lite86
    version: 0.2.17
    sha: 5b40af805b3121feab8a3c29f04d8ad262fa8e0561883e7653e024ae4479e6de
  - name: precomputed-hash
    version: 0.1.1
    sha: 925383efa346730478fb4838dbe9137d2a47675ad789c546d150a6e1dd4ab31c
  - name: prettyplease
    version: 0.2.16
    sha: a41cf62165e97c7f814d2221421dbb9afcbcdb0a88068e5ea206e19951c2cbb5
  - name: proc-macro-crate
    version: 1.3.1
    sha: 7f4c021e1093a56626774e81216a4ce732a735e5bad4868a03f3ed65ca0c3919
  - name: proc-macro-crate
    version: 2.0.0
    sha: 7e8366a6159044a37876a2b9817124296703c586a5c92e2c53751fa06d8d43e8
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
  - name: qoi
    version: 0.4.1
    sha: 7f6d64c71eb498fe9eae14ce4ec935c555749aef511cca85b5568910d6e48001
  - name: quote
    version: 1.0.35
    sha: 291ec9ab5efd934aaf503a6466c5d5251535d108ee747472c3977cc5acc868ef
  - name: rand
    version: 0.8.5
    sha: 34af8d1a0e25924bc5b7c43c079c942339d8f0a8b57c39049bef581b46327404
  - name: rand_chacha
    version: 0.3.1
    sha: e6c10a63a0fa32252be49d21e7709d4d4baf8d231c2dbce1eaa8141b9b127d88
  - name: rand_core
    version: 0.6.4
    sha: ec0be4795e2f6a28069bec0b5ff3e2ac9bafc99e6a9a7dc3547996c5c816922c
  - name: rawpointer
    version: 0.2.1
    sha: 60a357793950651c4ed0f3f52338f53b2f809f32d83a07f72909fa13e4c6c1e3
  - name: rayon
    version: 1.8.1
    sha: fa7237101a77a10773db45d62004a272517633fbcc3df19d96455ede1122e051
  - name: rayon-core
    version: 1.12.1
    sha: 1465873a3dfdaa8ae7cb14b4383657caab0b3e8a0aa9ae8e04b044854c8dfce2
  - name: rctree
    version: 0.5.0
    sha: 3b42e27ef78c35d3998403c1d26f3efd9e135d3e5121b0a4845cc5cc27547f4f
  - name: redox_syscall
    version: 0.4.1
    sha: 4722d768eff46b75989dd134e5c353f0d6296e5aaa3132e776cbdb56be7731aa
  - name: regex
    version: 1.10.3
    sha: b62dbe01f0b06f9d8dc7d49e05a0785f153b00b2c227856282f671e0318c9b15
  - name: regex-automata
    version: 0.4.5
    sha: 5bb987efffd3c6d0d8f5f89510bb458559eab11e4f869acb20bf845e016259cd
  - name: regex-syntax
    version: 0.8.2
    sha: c08c74e62047bb2de4ff487b251e4a92e24f48745648451635cec7d591162d9f
  - name: rgb
    version: 0.8.37
    sha: 05aaa8004b64fd573fc9d002f4e632d51ad4f026c2b5ba95fcb6c2f32c2c47d8
  - name: rustc-demangle
    version: 0.1.23
    sha: d626bb9dae77e28219937af045c257c28bfd3f69333c512553507f5f9798cb76
  - name: rustc-hash
    version: 1.1.0
    sha: 08d43f7aa6b08d49f382cde6a7982047c3426db949b1424bc4b7ec9ae12c6ce2
  - name: rustix
    version: 0.37.27
    sha: fea8ca367a3a01fe35e6943c400addf443c0f57670e6ec51196f71a4b8762dd2
  - name: rustix
    version: 0.38.31
    sha: 6ea3e1a662af26cd7a3ba09c0297a31af215563ecf42817c98df621387f4e949
  - name: safe-transmute
    version: 0.11.2
    sha: 98a01dab6acf992653be49205bdd549f32f17cb2803e8eacf1560bf97259aae8
  - name: safe_arch
    version: 0.7.1
    sha: f398075ce1e6a179b46f51bd88d0598b92b00d3551f1a2d4ac49e771b56ac354
  - name: same-file
    version: 1.0.6
    sha: 93fc1dc3aaa9bfed95e02e6eadabb4baf7e3078b0bd1b4d7b6b0b68378900502
  - name: scopeguard
    version: 1.2.0
    sha: 94143f37725109f92c262ed2cf5e59bce7498c01bcc1502d7b9afe439a4e9f49
  - name: selectors
    version: 0.25.0
    sha: 4eb30575f3638fc8f6815f448d50cb1a2e255b0897985c8c59f4d37b72a07b06
  - name: serde
    version: 1.0.196
    sha: 870026e60fa08c69f064aa766c10f10b1d62db9ccd4d0abb206472bee0ce3b32
  - name: serde_derive
    version: 1.0.196
    sha: 33c85360c95e7d137454dc81d9a4ed2b8efd8fbe19cee57357b32b9771fccb67
  - name: serde_repr
    version: 0.1.18
    sha: 0b2e6b945e9d3df726b65d6ee24060aff8e3533d431f677a9695db04eff9dfdb
  - name: serde_spanned
    version: 0.6.5
    sha: eb3622f419d1296904700073ea6cc23ad690adbd66f13ea683df73298736f0c1
  - name: servo_arc
    version: 0.3.0
    sha: d036d71a959e00c77a63538b90a6c2390969f9772b096ea837205c6bd0491a44
  - name: sha1
    version: 0.10.6
    sha: e3bf829a2d51ab4a5ddf1352d8470c140cadc8301b2ae1789db023f01cedd6ba
  - name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
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
    version: 0.3.11
    sha: 38b58827f4464d87d377d175e90bf58eb00fd8716ff0a62f80356b5e61555d0d
  - name: slab
    version: 0.4.9
    sha: 8f92a496fb766b417c996b9c5e57daf2f7ad3b0bebe1ccfca4856390e3d3bb67
  - name: smallvec
    version: 1.13.1
    sha: e6ecd384b10a64542d77071bd64bd7b231f4ed5940fba55e98c3de13824cf3d7
  - name: socket2
    version: 0.4.10
    sha: 9f7916fc008ca5542385b89a3d3ce689953c143e9304a9bf8beec1de48994c0d
  - name: socket2
    version: 0.5.5
    sha: 7b5fac59a5cb5dd637972e5fca70daf0523c9067fcdc4842f053dae04a18f8e9
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
  - name: strsim
    version: 0.10.0
    sha: 73473c0e59e6d5812c5dfe2a064a6444949f089e20eec9a2e5506596494e4623
  - name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - name: syn
    version: 2.0.48
    sha: 0f3531638e407dfc0814761abb7c00a5b54992b849452a0646b7f65c9f770f3f
  - name: system-deps
    version: 6.2.0
    sha: 2a2d580ff6a20c55dfb86be5f9c238f67835d0e81cbdea8bf5680e0897320331
  - name: target-lexicon
    version: 0.12.13
    sha: 69758bda2e78f098e4ccb393021a0963bb3442eac05f135c30f61b7370bbafae
  - name: temp-dir
    version: 0.1.12
    sha: dd16aa9ffe15fe021c6ee3766772132c6e98dfa395a167e16864f61a9cfb71d6
  - name: tempfile
    version: 3.9.0
    sha: 01ce4141aa927a6d1bd34a041795abd0db1cccba5d5f24b009f694bdf3a1f3fa
  - name: tendril
    version: 0.4.3
    sha: d24a120c5fc464a3458240ee02c299ebcb9d67b5249c8848b09d639dca8d7bb0
  - name: thiserror
    version: 1.0.56
    sha: d54378c645627613241d077a3a79db965db602882668f9136ac42af9ecb730ad
  - name: thiserror-impl
    version: 1.0.56
    sha: fa0faa943b50f3db30a20aa7e265dbc66076993efed8463e8de414e5d06d3471
  - name: tiff
    version: 0.9.1
    sha: ba1310fcea54c6a9a4fd1aad794ecc02c31682f6bfbecdf460bf19533eed1e3e
  - name: tinyvec
    version: 1.6.0
    sha: 87cc5ceb3875bb20c2890005a4e226a4651264a5c75edb2421b52861a0a0cb50
  - name: tinyvec_macros
    version: 0.1.1
    sha: 1f3ccbac311fea05f86f61904b462b55fb3df8837a366dfc601a0161d0532f20
  - name: tokio
    version: 1.36.0
    sha: 61285f6515fa018fb2d1e46eb21223fff441ee8db5d0f1435e8ab4f5cdb80931
  - name: toml
    version: 0.8.9
    sha: c6a4b9e8023eb94392d3dca65d717c53abc5dad49c07cb65bb8fcd87115fa325
  - name: toml_datetime
    version: 0.6.5
    sha: 3550f4e9685620ac18a50ed434eb3aec30db8ba93b0287467bca5826ea25baf1
  - name: toml_edit
    version: 0.19.15
    sha: 1b5bb770da30e5cbfde35a2d7b9b8a2c4b8ef89548a7a6aeab5c9a576e3e7421
  - name: toml_edit
    version: 0.20.7
    sha: 70f427fce4d84c72b5b732388bf4a9f4531b53f74e2887e3ecb2481f68f66d81
  - name: toml_edit
    version: 0.21.1
    sha: 6a8534fd7f78b5405e860340ad6575217ce99f38d4d5c8f2442cb5ecb50090e1
  - name: tracing
    version: 0.1.40
    sha: c3523ab5a71916ccf420eebdf5521fcef02141234bbc0b8a49f2fdc4544364ef
  - name: tracing-attributes
    version: 0.1.27
    sha: 34704c8d6ebcbc939824180af020566b01a7c01f80641264eba0999f6c2b6be7
  - name: tracing-core
    version: 0.1.32
    sha: c06d3da6113f116aaee68e4d601191614c9053067f9ab7f6edbcb161237daa54
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
    version: 0.1.22
    sha: 5c5713f0fc4b5db668a2ac63cdb7bb4469d8c9fed047b1d0292cc7b0ce2ba921
  - name: url
    version: 2.5.0
    sha: 31e6302e3bb753d46e83516cae55ae196fc0c309407cf11ab35cc51a4c2a4633
  - name: utf-8
    version: 0.7.6
    sha: 09cc8ee72d2a9becf2f2febe0205bbed8fc6615b7cb429ad062dc7b7ddd036a9
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
    version: 1.1.1
    sha: f3c4517f54858c779bbcbf228f4fca63d121bf85fbecb2dc578cdf4a39395690
  - name: walkdir
    version: 2.4.0
    sha: d71d857dc86794ca4c280d616f7da00d2dbfd8cd788846559a6813e6aa4b54ee
  - name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
  - name: weezl
    version: 0.1.8
    sha: 53a85b86a771b1c87058196170769dd264f66c0782acf1ae6cc51bfd64b39082
  - name: which
    version: 4.4.2
    sha: 87ba24419a2078cd2b0f2ede2691b6c66d8e47836da3b6db8265ebad47afbfc7
  - name: wide
    version: 0.7.15
    sha: 89beec544f246e679fc25490e3f8e08003bc4bf612068f325120dad4cea02c1c
  - name: winapi
    version: 0.3.9
    sha: 5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419
  - name: winapi-i686-pc-windows-gnu
    version: 0.4.0
    sha: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
  - name: winapi-util
    version: 0.1.6
    sha: f29e6f9198ba0d26b4c9f07dbe6f9ed633e1f3d5b8b414090084349e46a52596
  - name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
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
    version: 0.52.0
    sha: 8a18201040b24831fbb9e4eb208f8892e1f50a37feb53cc7ff887feb8f50e7cd
  - name: windows_aarch64_gnullvm
    version: 0.48.5
    sha: 2b38e32f0abccf9987a4e3079dfb67dcd799fb61361e53e2882c3cbaf0d905d8
  - name: windows_aarch64_gnullvm
    version: 0.52.0
    sha: cb7764e35d4db8a7921e09562a0304bf2f93e0a51bfccee0bd0bb0b666b015ea
  - name: windows_aarch64_msvc
    version: 0.48.5
    sha: dc35310971f3b2dbbf3f0690a219f40e2d9afcf64f9ab7cc1be722937c26b4bc
  - name: windows_aarch64_msvc
    version: 0.52.0
    sha: bbaa0368d4f1d2aaefc55b6fcfee13f41544ddf36801e793edbbfd7d7df075ef
  - name: windows_i686_gnu
    version: 0.48.5
    sha: a75915e7def60c94dcef72200b9a8e58e5091744960da64ec734a6c6e9b3743e
  - name: windows_i686_gnu
    version: 0.52.0
    sha: a28637cb1fa3560a16915793afb20081aba2c92ee8af57b4d5f28e4b3e7df313
  - name: windows_i686_msvc
    version: 0.48.5
    sha: 8f55c233f70c4b27f66c523580f78f1004e8b5a8b659e05a4eb49d4166cca406
  - name: windows_i686_msvc
    version: 0.52.0
    sha: ffe5e8e31046ce6230cc7215707b816e339ff4d4d67c65dffa206fd0f7aa7b9a
  - name: windows_x86_64_gnu
    version: 0.48.5
    sha: 53d40abd2583d23e4718fddf1ebec84dbff8381c07cae67ff7768bbf19c6718e
  - name: windows_x86_64_gnu
    version: 0.52.0
    sha: 3d6fa32db2bc4a2f5abeacf2b69f7992cd09dca97498da74a151a3132c26befd
  - name: windows_x86_64_gnullvm
    version: 0.48.5
    sha: 0b7b52767868a23d5bab768e390dc5f5c55825b6d30b86c844ff2dc7414044cc
  - name: windows_x86_64_gnullvm
    version: 0.52.0
    sha: 1a657e1e9d3f514745a572a6846d3c7aa7dbe1658c056ed9c3344c4109a6949e
  - name: windows_x86_64_msvc
    version: 0.48.5
    sha: ed94fce61571a4006852b7389a063ab983c02eb1bb37b47f8272ce92d06d9538
  - name: windows_x86_64_msvc
    version: 0.52.0
    sha: dff9641d1cd4be8d1a070daf9e3773c5f67e78b4d9d42263020c057706765c04
  - name: winnow
    version: 0.5.37
    sha: a7cad8365489051ae9f054164e459304af2e7e9bb407c958076c8bf4aef52da5
  - name: xdg-home
    version: 1.1.0
    sha: 21e5a325c3cb8398ad6cf859c1135b25dd29e186679cf2da7581d9679f63b38e
  - name: xml5ever
    version: 0.17.0
    sha: 4034e1d05af98b51ad7214527730626f019682d797ba38b51689212118d8e650
  - name: zbus
    version: 3.15.0
    sha: c45d06ae3b0f9ba1fb2671268b975557d8f5a84bb5ec6e43964f87e763d8bca8
  - name: zbus_macros
    version: 3.15.0
    sha: b4a1ba45ed0ad344b85a2bb5a1fe9830aed23d67812ea39a586e7d0136439c7d
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
- sdk/libjxl.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:bootstrap-import.bst
