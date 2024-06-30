kind: meson

sources:
- kind: git_repo
  url: gnome:librsvg.git
  track: main
  ref: 2.59.0-beta.1-72-gc068311e4f218002e7d1cbf7419a051299cbeeb8
- kind: cargo2
  ref:
  - kind: registry
    name: adler
    version: 1.0.2
    sha: f26201604c87b1e01bd3d98f8d5d9a8fcbb815e8cedb41ffccbeb4bf593a35fe
  - kind: registry
    name: ahash
    version: 0.8.11
    sha: e89da841a80418a9b391ebaea17f5c112ffaaa96f621d2c285b5174da76b9011
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
    name: anes
    version: 0.1.6
    sha: 4b46cbb362ab8752921c97e041f5e366ee6297bd428a31275b9fcf1e380f7299
  - kind: registry
    name: anstream
    version: 0.6.13
    sha: d96bd03f33fe50a863e394ee9718a706f988b9079b20c3784fb726e7678b62fb
  - kind: registry
    name: anstyle
    version: 1.0.6
    sha: 8901269c6307e8d93993578286ac0edf7f195079ffff5ebdeea6a59ffb7e36bc
  - kind: registry
    name: anstyle-parse
    version: 0.2.3
    sha: c75ac65da39e5fe5ab759307499ddad880d724eed2f6ce5b5e8a26f4f387928c
  - kind: registry
    name: anstyle-query
    version: 1.0.2
    sha: e28923312444cdd728e4738b3f9c9cac739500909bb3d3c94b43551b16517648
  - kind: registry
    name: anstyle-wincon
    version: 3.0.2
    sha: 1cd54b81ec8d6180e24654d0b371ad22fc3dd083b6ff8ba325b72e00c87660a7
  - kind: registry
    name: anyhow
    version: 1.0.82
    sha: f538837af36e6f6a9be0faa67f9a314f8119e4e4b5867c6ab40ed60360142519
  - kind: registry
    name: approx
    version: 0.5.1
    sha: cab112f0a86d568ea0e627cc1d6be74a1e9cd55214684db5561995f6dad897c6
  - kind: registry
    name: assert_cmd
    version: 2.0.13
    sha: 00ad3f3a942eee60335ab4342358c161ee296829e0d16ff42fc1d6cb07815467
  - kind: registry
    name: autocfg
    version: 1.2.0
    sha: f1fdabc7756949593fe60f30ec81974b613357de856987752631dea1e3394c80
  - kind: registry
    name: av-data
    version: 0.4.2
    sha: d75b98a3525d00f920df9a2d44cc99b9cc5b7dc70d7fbb612cd755270dbe6552
  - kind: registry
    name: bit-set
    version: 0.5.3
    sha: 0700ddab506f33b20a03b13996eccd309a48e5ff77d0d95926aa0210fb4e95f1
  - kind: registry
    name: bit-vec
    version: 0.6.3
    sha: 349f9b6a179ed607305526ca489b34ad0a41aed5f7980fa90eb03160b69598fb
  - kind: registry
    name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - kind: registry
    name: bitflags
    version: 2.5.0
    sha: cf4b9d6a944f767f8e5e0db018570623c85f3d925ac718db4e06d0187adb21c1
  - kind: registry
    name: bitreader
    version: 0.3.8
    sha: bdd859c9d97f7c468252795b35aeccc412bdbb1e90ee6969c4fa6328272eaeff
  - kind: registry
    name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - kind: registry
    name: bstr
    version: 1.9.1
    sha: 05efc5cfd9110c8416e471df0e96702d58690178e206e61b7173706673c93706
  - kind: registry
    name: bumpalo
    version: 3.16.0
    sha: 79296716171880943b8470b5f8d03aa55eb2e645a4874bdbb28adb49162e012c
  - kind: registry
    name: byte-slice-cast
    version: 1.2.2
    sha: c3ac9f8b63eca6fd385229b3675f6cc0dc5c8a5c8a54a59d4f52ffd670d87b0c
  - kind: registry
    name: bytemuck
    version: 1.15.0
    sha: 5d6d68c57235a3a081186990eca2867354726650f42f7516ca50c28d6281fd15
  - kind: registry
    name: byteorder
    version: 1.5.0
    sha: 1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b
  - kind: registry
    name: bytes
    version: 1.6.0
    sha: 514de17de45fdb8dc022b1a7975556c53c86f9f0aa5f534b98977b171857c2c9
  - kind: registry
    name: cairo-rs
    version: 0.19.4
    sha: b2ac2a4d0e69036cf0062976f6efcba1aaee3e448594e6514bb2ddf87acce562
  - kind: registry
    name: cairo-sys-rs
    version: 0.19.2
    sha: fd3bb3119664efbd78b5e6c93957447944f16bdbced84c17a9f41c7829b81e64
  - kind: registry
    name: cast
    version: 0.3.0
    sha: 37b2a672a2cb129a2e41c10b1224bb368f9f37a2b16b612598138befd7b37eb5
  - kind: registry
    name: cc
    version: 1.0.95
    sha: d32a725bc159af97c3e629873bb9f88fb8cf8a4867175f76dc987815ea07c83b
  - kind: registry
    name: cfg-expr
    version: 0.15.8
    sha: d067ad48b8650848b989a59a86c6c36a995d02d2bf778d45c3c5d57bc2718f02
  - kind: registry
    name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - kind: registry
    name: chrono
    version: 0.4.38
    sha: a21f936df1771bf62b77f047b726c4625ff2e8aa607c01ec06e5a05bd8463401
  - kind: registry
    name: ciborium
    version: 0.2.2
    sha: 42e69ffd6f0917f5c029256a24d0161db17cea3997d185db0d35926308770f0e
  - kind: registry
    name: ciborium-io
    version: 0.2.2
    sha: 05afea1e0a06c9be33d539b876f1ce3692f4afea2cb41f740e7743225ed1c757
  - kind: registry
    name: ciborium-ll
    version: 0.2.2
    sha: 57663b653d948a338bfb3eeba9bb2fd5fcfaecb9e199e87e1eda4d9e8b240fd9
  - kind: registry
    name: clap
    version: 4.4.18
    sha: 1e578d6ec4194633722ccf9544794b71b1385c3c027efe0c55db226fc880865c
  - kind: registry
    name: clap_builder
    version: 4.4.18
    sha: 4df4df40ec50c46000231c914968278b1eb05098cf8f1b3a518a95030e71d1c7
  - kind: registry
    name: clap_complete
    version: 4.4.10
    sha: abb745187d7f4d76267b37485a65e0149edd0e91a4cfcdd3f27524ad86cee9f3
  - kind: registry
    name: clap_derive
    version: 4.4.7
    sha: cf9804afaaf59a91e75b022a30fb7229a7901f60c755489cc61c9b423b836442
  - kind: registry
    name: clap_lex
    version: 0.6.0
    sha: 702fc72eb24e5a1e48ce58027a675bc24edd52096d5397d4aea7c6dd9eca0bd1
  - kind: registry
    name: color_quant
    version: 1.1.0
    sha: 3d7b894f5411737b7867f4827955924d7c254fc9f4d91a6aad6b097804b1018b
  - kind: registry
    name: colorchoice
    version: 1.0.0
    sha: acbf1af155f9b9ef647e42cdc158db4b64a1b61f743629225fde6f3e0be2a7c7
  - kind: registry
    name: const-cstr
    version: 0.3.0
    sha: ed3d0b5ff30645a68f35ece8cea4556ca14ef8a1651455f789a099a0513532a6
  - kind: registry
    name: core-foundation-sys
    version: 0.8.6
    sha: 06ea2b9bc92be3c2baa9334a323ebca2d6f074ff852cd1d7b11064035cd3868f
  - kind: registry
    name: crc32fast
    version: 1.4.0
    sha: b3855a8a784b474f333699ef2bbca9db2c4a1f6d9088a90a2d25b1eb53111eaa
  - kind: registry
    name: criterion
    version: 0.5.1
    sha: f2b12d017a929603d80db1831cd3a24082f8137ce19c69e6447f54f5fc8d692f
  - kind: registry
    name: criterion-plot
    version: 0.5.0
    sha: 6b50826342786a51a89e2da3a28f1c32b06e387201bc2d19791f622c673706b1
  - kind: registry
    name: crossbeam-deque
    version: 0.8.5
    sha: 613f8cc01fe9cf1a3eb3d7f488fd2fa8388403e97039e2f73692932e291a770d
  - kind: registry
    name: crossbeam-epoch
    version: 0.9.18
    sha: 5b82ac4a3c2ca9c3460964f020e1402edd5753411d7737aa39c3714ad1b5420e
  - kind: registry
    name: crossbeam-utils
    version: 0.8.19
    sha: 248e3bacc7dc6baa3b21e405ee045c3047101a49145e7e9eca583ab4c2ca5345
  - kind: registry
    name: crunchy
    version: 0.2.2
    sha: 7a81dae078cea95a014a339291cec439d2f232ebe854a9d672b796c6afafa9b7
  - kind: registry
    name: cssparser
    version: 0.31.2
    sha: 5b3df4f93e5fbbe73ec01ec8d3f68bba73107993a5b1e7519273c32db9b0d5be
  - kind: registry
    name: cssparser-macros
    version: 0.6.1
    sha: 13b588ba4ac1a99f7f2964d24b3d896ddc6bf847ee3855dbd4366f058cfcd331
  - kind: registry
    name: data-url
    version: 0.3.1
    sha: 5c297a1c74b71ae29df00c3e22dd9534821d60eb9af5a0192823fa2acea70c2a
  - kind: registry
    name: dav1d
    version: 0.10.3
    sha: 0d4b54a40baf633a71c6f0fb49494a7e4ee7bc26f3e727212b6cb915aa1ea1e1
  - kind: registry
    name: dav1d-sys
    version: 0.8.2
    sha: 6ecb1c5e8f4dc438eedc1b534a54672fb0e0a56035dae6b50162787bd2c50e95
  - kind: registry
    name: dcv-color-primitives
    version: 0.6.1
    sha: 07ad62edfed069700a5b33af6babd29c498d7e33eb01d96ffa8841ee1841634c
  - kind: registry
    name: deranged
    version: 0.3.11
    sha: b42b6fa04a440b495c8b04d0e71b707c585f83cb9cb28cf8cd0d976c315e31b4
  - kind: registry
    name: derive_more
    version: 0.99.17
    sha: 4fb810d30a7c1953f91334de7244731fc3f3c10d7fe163338a35b9f640960321
  - kind: registry
    name: difflib
    version: 0.4.0
    sha: 6184e33543162437515c2e2b48714794e37845ec9851711914eec9d308f6ebe8
  - kind: registry
    name: dlib
    version: 0.5.2
    sha: 330c60081dcc4c72131f8eb70510f1ac07223e5d4163db481a04a0befcffa412
  - kind: registry
    name: doc-comment
    version: 0.3.3
    sha: fea41bba32d969b513997752735605054bc0dfa92b4c56bf1189f2e174be7a10
  - kind: registry
    name: dtoa
    version: 1.0.9
    sha: dcbb2bf8e87535c23f7a8a321e364ce21462d0ff10cb6407820e8e96dfff6653
  - kind: registry
    name: dtoa-short
    version: 0.3.4
    sha: dbaceec3c6e4211c79e7b1800fb9680527106beb2f9c51904a3210c03a448c74
  - kind: registry
    name: either
    version: 1.11.0
    sha: a47c1c47d2f5964e29c61246e81db715514cd532db6b5116a25ea3c03d6780a2
  - kind: registry
    name: encoding_rs
    version: 0.8.34
    sha: b45de904aa0b010bce2ab45264d0631681847fa7b6f2eaa7dab7619943bc4f59
  - kind: registry
    name: equivalent
    version: 1.0.1
    sha: 5443807d6dff69373d433ab9ef5378ad8df50ca6298caf15de6e52e24aaf54d5
  - kind: registry
    name: errno
    version: 0.3.8
    sha: a258e46cdc063eb8519c00b9fc845fc47bcfca4130e2f08e88665ceda8474245
  - kind: registry
    name: fallible_collections
    version: 0.4.9
    sha: a88c69768c0a15262df21899142bc6df9b9b823546d4b4b9a7bc2d6c448ec6fd
  - kind: registry
    name: fastrand
    version: 2.0.2
    sha: 658bd65b1cf4c852a3cc96f18a8ce7b5640f6b703f905c7d74532294c2a63984
  - kind: registry
    name: fdeflate
    version: 0.3.4
    sha: 4f9bfee30e4dedf0ab8b422f03af778d9612b63f502710fc500a334ebe2de645
  - kind: registry
    name: flate2
    version: 1.0.29
    sha: 4556222738635b7a3417ae6130d8f52201e45a0c4d1a907f0826383adb5f85e7
  - kind: registry
    name: float-cmp
    version: 0.9.0
    sha: 98de4bbd547a563b716d8dfa9aad1cb19bfab00f4fa09a6a4ed21dbcf44ce9c4
  - kind: registry
    name: fnv
    version: 1.0.7
    sha: 3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1
  - kind: registry
    name: form_urlencoded
    version: 1.2.1
    sha: e13624c2627564efccf4934284bdd98cbaa14e79b0b5a141218e507b3a823456
  - kind: registry
    name: futf
    version: 0.1.5
    sha: df420e2e84819663797d1ec6544b13c5be84629e7bb00dc960d6917db2987843
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
    name: futures-macro
    version: 0.3.30
    sha: 87750cf4b7a4c0625b1529e4c543c2182106e4dedc60a2a6455e00d212c489ac
  - kind: registry
    name: futures-task
    version: 0.3.30
    sha: 38d84fa142264698cdce1a9f9172cf383a0c82de1bddcf3092901442c4097004
  - kind: registry
    name: futures-util
    version: 0.3.30
    sha: 3d6401deb83407ab3da39eba7e33987a73c3df0c82b4bb5813ee871c19c41d48
  - kind: registry
    name: fxhash
    version: 0.2.1
    sha: c31b6d751ae2c7f11320402d34e41349dd1016f8d5d45e48c4312bc8625af50c
  - kind: registry
    name: gdk-pixbuf
    version: 0.19.2
    sha: f6a23f8a0b5090494fd04924662d463f8386cc678dd3915015a838c1a3679b92
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.19.0
    sha: 3dcbd04c1b2c4834cc008b4828bc917d062483b88d26effde6342e5622028f96
  - kind: registry
    name: getrandom
    version: 0.2.14
    sha: 94b22e06ecb0110981051723910cbf0b5f5e09a2062dd7663334ee79a9d1286c
  - kind: registry
    name: gif
    version: 0.13.1
    sha: 3fb2d69b19215e18bb912fa30f7ce15846e301408695e44e0ef719f1da9e19f2
  - kind: registry
    name: gio
    version: 0.19.4
    sha: 3f91a0518c2ec539f099d3f945ab2d6a83ec372a9ef40a21906343b191182845
  - kind: registry
    name: gio-sys
    version: 0.19.0
    sha: bcf8e1d9219bb294636753d307b030c1e8a032062cba74f493c431a5c8b81ce4
  - kind: registry
    name: glib
    version: 0.19.4
    sha: ae1407b2ce171e654720be10d57d4054d3ff2f10a13d5b37e6819b41439832f7
  - kind: registry
    name: glib-macros
    version: 0.19.4
    sha: d8bba315e8ce8aa59631545358450f4962557e89b5f7db7442e7153b47037f71
  - kind: registry
    name: glib-sys
    version: 0.19.0
    sha: 630f097773d7c7a0bb3258df4e8157b47dc98bbfa0e60ad9ab56174813feced4
  - kind: registry
    name: gobject-sys
    version: 0.19.0
    sha: c85e2b1080b9418dd0c58b498da3a5c826030343e0ef07bde6a955d28de54979
  - kind: registry
    name: half
    version: 2.4.1
    sha: 6dd08c532ae367adf81c312a4580bc67f1d0fe8bc9c460520283f4c0ff277888
  - kind: registry
    name: hashbrown
    version: 0.13.2
    sha: 43a3c133739dddd0d2990f9a4bdf8eb4b21ef50e4851ca85ab661199821d510e
  - kind: registry
    name: hashbrown
    version: 0.14.3
    sha: 290f1a1d9242c78d09ce40a5e87e7554ee637af1351968159f4952f028f75604
  - kind: registry
    name: heck
    version: 0.4.1
    sha: 95505c38b4572b2d910cecb0281560f54b440a19336cbbcb27bf6ce6adc6f5a8
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: hermit-abi
    version: 0.3.9
    sha: d231dfb89cfffdbc30e7fc41579ed6066ad03abda9e567ccafae602b97ec5024
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
    name: image
    version: 0.24.9
    sha: 5690139d2f55868e080017335e4b94cb7414274c74f1669c84fb5feba2c9f69d
  - kind: registry
    name: indexmap
    version: 2.2.6
    sha: 168fb715dda47215e360912c096649d23d58bf392ac62f73919e831745e40f26
  - kind: registry
    name: is-terminal
    version: 0.4.12
    sha: f23ff5ef2b80d608d61efee834934d862cd92461afc0560dedf493e4c033738b
  - kind: registry
    name: itertools
    version: 0.10.5
    sha: b0fd2260e829bddf4cb6ea802289de2f86d6a7a690192fbe91b3f46e0f2c8473
  - kind: registry
    name: itertools
    version: 0.12.1
    sha: ba291022dbbd398a455acf126c1e341954079855bc60dfdda641363bd6922569
  - kind: registry
    name: itoa
    version: 1.0.11
    sha: 49f1f14873335454500d59611f1cf4a4b0f786f9ac11f4312a78e4cf2566695b
  - kind: registry
    name: jpeg-decoder
    version: 0.3.1
    sha: f5d4a7da358eff58addd2877a45865158f0d78c911d43a5784ceb7bbf52833b0
  - kind: registry
    name: js-sys
    version: 0.3.69
    sha: 29c15563dc2726973df627357ce0c9ddddbea194836909d655df6a75d2cf296d
  - kind: registry
    name: language-tags
    version: 0.3.2
    sha: d4345964bb142484797b161f473a503a434de77149dd8c7427788c6e13379388
  - kind: registry
    name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - kind: registry
    name: libc
    version: 0.2.153
    sha: 9c198f91728a82281a64e1f4f9eeb25d82cb32a5de251c6bd1b5154d63a8e7bd
  - kind: registry
    name: libloading
    version: 0.8.3
    sha: 0c2a198fb6b0eada2a8df47933734e6d35d350665a33a3593d7164fa52c75c19
  - kind: registry
    name: libm
    version: 0.2.8
    sha: 4ec2a862134d2a7d32d7983ddcdd1c4923530833c9f2ea1a44fc5fa473989058
  - kind: registry
    name: linked-hash-map
    version: 0.5.6
    sha: 0717cef1bc8b636c6e1c1bbdefc09e6322da8a9321966e8928ef80d20f7f770f
  - kind: registry
    name: linux-raw-sys
    version: 0.4.13
    sha: 01cda141df6706de531b6c46c3a33ecca755538219bd484262fa09410c13539c
  - kind: registry
    name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - kind: registry
    name: lock_api
    version: 0.4.12
    sha: 07af8b9cdd281b7915f413fa73f29ebd5d55d0d3f0155584dade1ff18cea1b17
  - kind: registry
    name: log
    version: 0.4.21
    sha: 90ed8c1e510134f979dbc4f070f87d4313098b704861a105fe34231c70a3901c
  - kind: registry
    name: lopdf
    version: 0.32.0
    sha: e775e4ee264e8a87d50a9efef7b67b4aa988cf94e75630859875fc347e6c872b
  - kind: registry
    name: mac
    version: 0.1.1
    sha: c41e0c4fef86961ac6d6f8a82609f55f31b05e4fce149ac5710e439df7619ba4
  - kind: registry
    name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - kind: registry
    name: markup5ever
    version: 0.11.0
    sha: 7a2629bb1404f3d34c2e921f21fd34ba00b206124c81f65c50b43b6aaefeb016
  - kind: registry
    name: matches
    version: 0.1.10
    sha: 2532096657941c2fea9c289d370a250971c689d4f143798ff67113ec042024a5
  - kind: registry
    name: matrixmultiply
    version: 0.3.8
    sha: 7574c1cf36da4798ab73da5b215bbf444f50718207754cb522201d78d1cd0ff2
  - kind: registry
    name: md5
    version: 0.7.0
    sha: 490cc448043f947bae3cbee9c203358d62dbee0db12107a74be5c30ccfd09771
  - kind: registry
    name: memchr
    version: 2.7.2
    sha: 6c8640c5d730cb13ebd907d8d04b52f55ac9a2eec55b440c8892f40d56c76c1d
  - kind: registry
    name: minimal-lexical
    version: 0.2.1
    sha: 68354c5c6bd36d73ff3feceb05efa59b6acb7626617f4962be322a825e61f79a
  - kind: registry
    name: miniz_oxide
    version: 0.7.2
    sha: 9d811f3e15f28568be3407c8e7fdb6514c1cda3cb30683f15b6a1a1dc4ea14a7
  - kind: registry
    name: mp4parse
    version: 0.17.0
    sha: 63a35203d3c6ce92d5251c77520acb2e57108c88728695aa883f70023624c570
  - kind: registry
    name: nalgebra
    version: 0.32.5
    sha: 3ea4908d4f23254adda3daa60ffef0f1ac7b8c3e9a864cf3cc154b251908a2ef
  - kind: registry
    name: nalgebra-macros
    version: 0.2.1
    sha: 91761aed67d03ad966ef783ae962ef9bbaca728d2dd7ceb7939ec110fffad998
  - kind: registry
    name: new_debug_unreachable
    version: 1.0.6
    sha: 650eef8c711430f1a879fdd01d4745a7deea475becfb90269c06775983bbf086
  - kind: registry
    name: nom
    version: 7.1.3
    sha: d273983c5a657a70a3e8f2a01329822f3b8c8172b73826411a55751e404a0a4a
  - kind: registry
    name: normalize-line-endings
    version: 0.3.0
    sha: 61807f77802ff30975e01f4f071c8ba10c022052f98b3294119f3e615d13e5be
  - kind: registry
    name: num-bigint
    version: 0.4.4
    sha: 608e7659b5c3d7cba262d894801b9ec9d00de989e8a82bd4bef91d08da45cdc0
  - kind: registry
    name: num-complex
    version: 0.4.5
    sha: 23c6602fda94a57c990fe0df199a035d83576b496aa29f4e634a8ac6004e68a6
  - kind: registry
    name: num-conv
    version: 0.1.0
    sha: 51d515d32fb182ee37cda2ccdcb92950d6a3c2893aa280e540671c2cd0f3b1d9
  - kind: registry
    name: num-derive
    version: 0.4.2
    sha: ed3955f1a9c7c0c15e092f9c887db08b1fc683305fdf6eb6684f22555355e202
  - kind: registry
    name: num-integer
    version: 0.1.46
    sha: 7969661fd2958a5cb096e56c8e1ad0444ac2bbcd0061bd28660485a44879858f
  - kind: registry
    name: num-rational
    version: 0.4.1
    sha: 0638a1c9d0a3c0914158145bc76cff373a75a627e6ecbfb71cbe6f453a5a19b0
  - kind: registry
    name: num-traits
    version: 0.2.18
    sha: da0df0e5185db44f69b44f26786fe401b6c293d1907744beaa7fa62b2e5a517a
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
    name: oorandom
    version: 11.1.3
    sha: 0ab1bc2a289d34bd04a330323ac98a1b4bc82c9d9fcb1e66b63caa84da26b575
  - kind: registry
    name: pango
    version: 0.19.3
    sha: b1264d13deb823cc652f26cfe59afb1ec4b9db2a5bd27c41b738c879cc1bfaa1
  - kind: registry
    name: pango-sys
    version: 0.19.0
    sha: f52ef6a881c19fbfe3b1484df5cad411acaaba29dbec843941c3110d19f340ea
  - kind: registry
    name: pangocairo
    version: 0.19.2
    sha: 6620c77967c62c7a84c6ca15ab855e8eecb248beb8ee43bc0eeaadd39123f687
  - kind: registry
    name: pangocairo-sys
    version: 0.19.0
    sha: 01bd0597ae45983f9e8b7f73afc42238426cd3fbb44a9cf14fd881a4ae08f1e4
  - kind: registry
    name: parking_lot
    version: 0.12.2
    sha: 7e4af0ca4f6caed20e900d564c242b8e5d4903fdacf31d3daf527b66fe6f42fb
  - kind: registry
    name: parking_lot_core
    version: 0.9.10
    sha: 1e401f977ab385c9e4e3ab30627d6f26d00e2c73eef317493c4ec6d468726cf8
  - kind: registry
    name: paste
    version: 1.0.14
    sha: de3145af08024dea9fa9914f381a17b8fc6034dfb00f3a84013f7ff43f29ed4c
  - kind: registry
    name: percent-encoding
    version: 2.3.1
    sha: e3148f5046208a5d56bcfc03053e3ca6334e51da8dfb19b6cdc8b306fae3283e
  - kind: registry
    name: phf
    version: 0.10.1
    sha: fabbf1ead8a5bcbc20f5f8b939ee3f5b0f6f281b6ad3468b84656b658b455259
  - kind: registry
    name: phf
    version: 0.11.2
    sha: ade2d8b8f33c7333b51bcf0428d37e217e9f32192ae4772156f65063b8ce03dc
  - kind: registry
    name: phf_codegen
    version: 0.10.0
    sha: 4fb1c3a8bc4dd4e5cfce29b44ffc14bedd2ee294559a294e2a4d4c9e9a6a13cd
  - kind: registry
    name: phf_generator
    version: 0.10.0
    sha: 5d5285893bb5eb82e6aaf5d59ee909a06a16737a8970984dd7746ba9283498d6
  - kind: registry
    name: phf_generator
    version: 0.11.2
    sha: 48e4cc64c2ad9ebe670cb8fd69dd50ae301650392e81c05f9bfcb2d5bdbc24b0
  - kind: registry
    name: phf_macros
    version: 0.11.2
    sha: 3444646e286606587e49f3bcf1679b8cef1dc2c5ecc29ddacaffc305180d464b
  - kind: registry
    name: phf_shared
    version: 0.10.0
    sha: b6796ad771acdc0123d2a88dc428b5e38ef24456743ddb1744ed628f9815c096
  - kind: registry
    name: phf_shared
    version: 0.11.2
    sha: 90fcb95eef784c2ac79119d1dd819e162b5da872ce6f3c3abe1e8ca1c082f72b
  - kind: registry
    name: pin-project-lite
    version: 0.2.14
    sha: bda66fc9667c18cb2758a2ac84d1167245054bcf85d5d1aaa6923f45801bdd02
  - kind: registry
    name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - kind: registry
    name: pkg-config
    version: 0.3.30
    sha: d231b230927b5e4ad203db57bbcbee2802f6bce620b1e4a9024a07d94e2907ec
  - kind: registry
    name: plotters
    version: 0.3.5
    sha: d2c224ba00d7cadd4d5c660deaf2098e5e80e07846537c51f9cfa4be50c1fd45
  - kind: registry
    name: plotters-backend
    version: 0.3.5
    sha: 9e76628b4d3a7581389a35d5b6e2139607ad7c75b17aed325f210aa91f4a9609
  - kind: registry
    name: plotters-svg
    version: 0.3.5
    sha: 38f6d39893cca0701371e3c27294f09797214b86f1fb951b89ade8ec04e2abab
  - kind: registry
    name: png
    version: 0.17.13
    sha: 06e4b0d3d1312775e782c86c91a111aa1f910cbb65e1337f9975b5f9a554b5e1
  - kind: registry
    name: powerfmt
    version: 0.2.0
    sha: 439ee305def115ba05938db6eb1644ff94165c5ab5e9420d1c1bcedbba909391
  - kind: registry
    name: ppv-lite86
    version: 0.2.17
    sha: 5b40af805b3121feab8a3c29f04d8ad262fa8e0561883e7653e024ae4479e6de
  - kind: registry
    name: precomputed-hash
    version: 0.1.1
    sha: 925383efa346730478fb4838dbe9137d2a47675ad789c546d150a6e1dd4ab31c
  - kind: registry
    name: predicates
    version: 3.1.0
    sha: 68b87bfd4605926cdfefc1c3b5f8fe560e3feca9d5552cf68c466d3d8236c7e8
  - kind: registry
    name: predicates-core
    version: 1.0.6
    sha: b794032607612e7abeb4db69adb4e33590fa6cf1149e95fd7cb00e634b92f174
  - kind: registry
    name: predicates-tree
    version: 1.0.9
    sha: 368ba315fb8c5052ab692e68a0eefec6ec57b23a36959c14496f0b0df2c0cecf
  - kind: registry
    name: proc-macro-crate
    version: 3.1.0
    sha: 6d37c51ca738a55da99dc0c4a34860fd675453b8b36209178c2249bb13651284
  - kind: registry
    name: proc-macro2
    version: 1.0.81
    sha: 3d1597b0c024618f09a9c3b8655b7e430397a36d23fdafec26d6965e9eec3eba
  - kind: registry
    name: proptest
    version: 1.4.0
    sha: 31b476131c3c86cb68032fdc5cb6d5a1045e3e42d96b69fa599fd77701e1f5bf
  - kind: registry
    name: quick-error
    version: 1.2.3
    sha: a1d01941d82fa2ab50be1e79e6714289dd7cde78eba4c074bc5a4374f650dfe0
  - kind: registry
    name: quick-error
    version: 2.0.1
    sha: a993555f31e5a609f617c12db6250dedcac1b0a85076912c436e6fc9b2c8e6a3
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
    name: rand_xorshift
    version: 0.3.0
    sha: d25bf25ec5ae4a3f1b92f929810509a2f53d7dca2f50b794ff57e3face536c8f
  - kind: registry
    name: rawpointer
    version: 0.2.1
    sha: 60a357793950651c4ed0f3f52338f53b2f809f32d83a07f72909fa13e4c6c1e3
  - kind: registry
    name: rayon
    version: 1.10.0
    sha: b418a60154510ca1a002a752ca9714984e21e4241e804d32555251faf8b78ffa
  - kind: registry
    name: rayon-core
    version: 1.12.1
    sha: 1465873a3dfdaa8ae7cb14b4383657caab0b3e8a0aa9ae8e04b044854c8dfce2
  - kind: registry
    name: rctree
    version: 0.6.0
    sha: e03e7866abec1101869ffa8e2c8355c4c2419d0214ece0cc3e428e5b94dea6e9
  - kind: registry
    name: redox_syscall
    version: 0.5.1
    sha: 469052894dcb553421e483e4209ee581a45100d31b4018de03e5a7ad86374a7e
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
    name: rgb
    version: 0.8.37
    sha: 05aaa8004b64fd573fc9d002f4e632d51ad4f026c2b5ba95fcb6c2f32c2c47d8
  - kind: registry
    name: rustix
    version: 0.38.34
    sha: 70dc5ec042f7a43c4a73241207cecc9873a06d45debb38b329f8541d85c2730f
  - kind: registry
    name: rusty-fork
    version: 0.3.0
    sha: cb3dcc6e454c328bb824492db107ab7c0ae8fcffe4ad210136ef014458c1bc4f
  - kind: registry
    name: ryu
    version: 1.0.17
    sha: e86697c916019a8588c99b5fac3cead74ec0b4b819707a682fd4d23fa0ce1ba1
  - kind: registry
    name: safe_arch
    version: 0.7.1
    sha: f398075ce1e6a179b46f51bd88d0598b92b00d3551f1a2d4ac49e771b56ac354
  - kind: registry
    name: same-file
    version: 1.0.6
    sha: 93fc1dc3aaa9bfed95e02e6eadabb4baf7e3078b0bd1b4d7b6b0b68378900502
  - kind: registry
    name: scopeguard
    version: 1.2.0
    sha: 94143f37725109f92c262ed2cf5e59bce7498c01bcc1502d7b9afe439a4e9f49
  - kind: registry
    name: selectors
    version: 0.25.0
    sha: 4eb30575f3638fc8f6815f448d50cb1a2e255b0897985c8c59f4d37b72a07b06
  - kind: registry
    name: serde
    version: 1.0.198
    sha: 9846a40c979031340571da2545a4e5b7c4163bdae79b301d5f86d03979451fcc
  - kind: registry
    name: serde_derive
    version: 1.0.198
    sha: e88edab869b01783ba905e7d0153f9fc1a6505a96e4ad3018011eedb838566d9
  - kind: registry
    name: serde_json
    version: 1.0.116
    sha: 3e17db7126d17feb94eb3fad46bf1a96b034e8aacbc2e775fe81505f8b0b2813
  - kind: registry
    name: serde_spanned
    version: 0.6.5
    sha: eb3622f419d1296904700073ea6cc23ad690adbd66f13ea683df73298736f0c1
  - kind: registry
    name: servo_arc
    version: 0.3.0
    sha: d036d71a959e00c77a63538b90a6c2390969f9772b096ea837205c6bd0491a44
  - kind: registry
    name: simba
    version: 0.8.1
    sha: 061507c94fc6ab4ba1c9a0305018408e312e17c041eb63bef8aa726fa33aceae
  - kind: registry
    name: simd-adler32
    version: 0.3.7
    sha: d66dc143e6b11c1eddc06d5c423cfc97062865baf299914ab64caa38182078fe
  - kind: registry
    name: siphasher
    version: 0.3.11
    sha: 38b58827f4464d87d377d175e90bf58eb00fd8716ff0a62f80356b5e61555d0d
  - kind: registry
    name: slab
    version: 0.4.9
    sha: 8f92a496fb766b417c996b9c5e57daf2f7ad3b0bebe1ccfca4856390e3d3bb67
  - kind: registry
    name: smallvec
    version: 1.13.2
    sha: 3c5e1a9a646d36c3599cd173a41282daf47c44583ad367b8e6837255952e5c67
  - kind: registry
    name: stable_deref_trait
    version: 1.2.0
    sha: a8f112729512f8e442d81f95a8a7ddf2b7c6b8a1a6f509a95864142b30cab2d3
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - kind: registry
    name: string_cache
    version: 0.8.7
    sha: f91138e76242f575eb1d3b38b4f1362f10d3a43f47d182a5b359af488a02293b
  - kind: registry
    name: string_cache_codegen
    version: 0.5.2
    sha: 6bb30289b722be4ff74a408c3cc27edeaad656e06cb1fe8fa9231fa59c728988
  - kind: registry
    name: strsim
    version: 0.10.0
    sha: 73473c0e59e6d5812c5dfe2a064a6444949f089e20eec9a2e5506596494e4623
  - kind: registry
    name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - kind: registry
    name: syn
    version: 2.0.60
    sha: 909518bc7b1c9b779f1bbf07f2929d35af9f0f37e47c6e9ef7f9dddc1e1821f3
  - kind: registry
    name: system-deps
    version: 6.2.2
    sha: a3e535eb8dded36d55ec13eddacd30dec501792ff23a0b1682c38601b8cf2349
  - kind: registry
    name: target-lexicon
    version: 0.12.14
    sha: e1fc403891a21bcfb7c37834ba66a547a8f402146eba7265b5a6d88059c9ff2f
  - kind: registry
    name: tempfile
    version: 3.10.1
    sha: 85b77fafb263dd9d05cbeac119526425676db3784113aa9295c88498cbf8bff1
  - kind: registry
    name: tendril
    version: 0.4.3
    sha: d24a120c5fc464a3458240ee02c299ebcb9d67b5249c8848b09d639dca8d7bb0
  - kind: registry
    name: termtree
    version: 0.4.1
    sha: 3369f5ac52d5eb6ab48c6b4ffdc8efbcad6b89c765749064ba298f2c68a16a76
  - kind: registry
    name: thiserror
    version: 1.0.59
    sha: f0126ad08bff79f29fc3ae6a55cc72352056dfff61e3ff8bb7129476d44b23aa
  - kind: registry
    name: thiserror-impl
    version: 1.0.59
    sha: d1cd413b5d558b4c5bf3680e324a6fa5014e7b7c067a51e69dbdf47eb7148b66
  - kind: registry
    name: time
    version: 0.3.36
    sha: 5dfd88e563464686c916c7e46e623e520ddc6d79fa6641390f2e3fa86e83e885
  - kind: registry
    name: time-core
    version: 0.1.2
    sha: ef927ca75afb808a4d64dd374f00a2adf8d0fcff8e7b184af886c3c87ec4a3f3
  - kind: registry
    name: time-macros
    version: 0.2.18
    sha: 3f252a68540fde3a3877aeea552b832b40ab9a69e318efd078774a01ddee1ccf
  - kind: registry
    name: tinytemplate
    version: 1.2.1
    sha: be4d6b5f19ff7664e8c98d03e2139cb510db9b0a60b55f8e8709b689d939b6bc
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
    version: 0.8.12
    sha: e9dd1545e8208b4a5af1aa9bbd0b4cf7e9ea08fabc5d0a5c67fcaafa17433aa3
  - kind: registry
    name: toml_datetime
    version: 0.6.5
    sha: 3550f4e9685620ac18a50ed434eb3aec30db8ba93b0287467bca5826ea25baf1
  - kind: registry
    name: toml_edit
    version: 0.21.1
    sha: 6a8534fd7f78b5405e860340ad6575217ce99f38d4d5c8f2442cb5ecb50090e1
  - kind: registry
    name: toml_edit
    version: 0.22.12
    sha: d3328d4f68a705b2a4498da1d580585d39a6510f98318a2cec3018a7ec61ddef
  - kind: registry
    name: typenum
    version: 1.17.0
    sha: 42ff0bf0c66b8238c6f3b578df37d0b7848e55df8577b3f74f92a69acceeb825
  - kind: registry
    name: unarray
    version: 0.1.4
    sha: eaea85b334db583fe3274d12b4cd1880032beab409c0d774be044d4480ab9a94
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
    name: utf-8
    version: 0.7.6
    sha: 09cc8ee72d2a9becf2f2febe0205bbed8fc6615b7cb429ad062dc7b7ddd036a9
  - kind: registry
    name: utf8parse
    version: 0.2.1
    sha: 711b9620af191e0cdc7468a8d14e709c3dcdb115b36f838e601583af800a370a
  - kind: registry
    name: version-compare
    version: 0.2.0
    sha: 852e951cb7832cb45cb1169900d19760cfa39b82bc0ea9c0e5a14ae88411c98b
  - kind: registry
    name: version_check
    version: 0.9.4
    sha: 49874b5167b65d7193b8aba1567f5c7d93d001cafc34600cee003eda787e483f
  - kind: registry
    name: wait-timeout
    version: 0.2.0
    sha: 9f200f5b12eb75f8c1ed65abd4b2db8a6e1b138a20de009dacee265a2498f3f6
  - kind: registry
    name: walkdir
    version: 2.5.0
    sha: 29790946404f91d9c5d06f9874efddea1dc06c5efe94541a7d6863108e3a5e4b
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
    name: web-sys
    version: 0.3.69
    sha: 77afa9a11836342370f4817622a2f0f418b134426d91a82dfb48f532d2ec13ef
  - kind: registry
    name: weezl
    version: 0.1.8
    sha: 53a85b86a771b1c87058196170769dd264f66c0782acf1ae6cc51bfd64b39082
  - kind: registry
    name: wide
    version: 0.7.16
    sha: 81a1851a719f11d1d2fea40e15c72f6c00de8c142d7ac47c1441cc7e4d0d5bc6
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
    version: 0.6.7
    sha: 14b9415ee827af173ebb3f15f9083df5a122eb93572ec28741fb153356ea2578
  - kind: registry
    name: xml5ever
    version: 0.17.0
    sha: 4034e1d05af98b51ad7214527730626f019682d797ba38b51689212118d8e650
  - kind: registry
    name: yeslogic-fontconfig-sys
    version: 4.0.1
    sha: ec657fd32bbcbeaef5c7bc8e10b3db95b143fab8db0a50079773dbf936fd4f73
  - kind: registry
    name: zerocopy
    version: 0.7.32
    sha: 74d4d3961e53fa4c9a25a8637fc2bfaf2595b3d3ae34875568a5cf64787716be
  - kind: registry
    name: zerocopy-derive
    version: 0.7.32
    sha: 9ce1b18ccd8e73a9321186f97e46f9f04b778851177567b1975109d26a08d2a6
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- sdk-deps/cargo-c.bst
- sdk-deps/gi-docgen.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/dav1d.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dpkgconfig.relocatable=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/librsvg-2.so'
