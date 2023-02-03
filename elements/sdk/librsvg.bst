kind: autotools

sources:
- kind: git_tag
  url: gnome:librsvg.git
  track: main
  ref: 2.55.90-78-g805e4ed8849aeb563c5b92a18a518a5d15e924a3
- kind: cargo
  ref:
  - name: adler
    version: 1.0.2
    sha: f26201604c87b1e01bd3d98f8d5d9a8fcbb815e8cedb41ffccbeb4bf593a35fe
  - name: aho-corasick
    version: 0.7.20
    sha: cc936419f96fa211c1b9166887b38e5e40b19958e5b895be7c1f93adec7071ac
  - name: android_system_properties
    version: 0.1.5
    sha: 819e7219dbd41043ac279b19830f2efc897156490d7fd6ea916720117ee66311
  - name: anes
    version: 0.1.6
    sha: 4b46cbb362ab8752921c97e041f5e366ee6297bd428a31275b9fcf1e380f7299
  - name: anyhow
    version: 1.0.66
    sha: 216261ddc8289130e551ddcd5ce8a064710c0d064a4d2895c67151c92b5443f6
  - name: approx
    version: 0.5.1
    sha: cab112f0a86d568ea0e627cc1d6be74a1e9cd55214684db5561995f6dad897c6
  - name: assert_cmd
    version: 2.0.6
    sha: ba45b8163c49ab5f972e59a8a5a03b6d2972619d486e19ec9fe744f7c2753d3c
  - name: atty
    version: 0.2.14
    sha: d9b39be18770d11421cdb1b9947a45dd3f37e93092cbf377614828a319d5fee8
  - name: autocfg
    version: 1.1.0
    sha: d468802bab17cbc0cc575e9b053f41e72aa36bfa6b7f55e3529ffa43161b97fa
  - name: base-x
    version: 0.2.11
    sha: 4cbbc9d0964165b47557570cce6c952866c2678457aca742aafc9fb771d30270
  - name: bit-set
    version: 0.5.3
    sha: 0700ddab506f33b20a03b13996eccd309a48e5ff77d0d95926aa0210fb4e95f1
  - name: bit-vec
    version: 0.6.3
    sha: 349f9b6a179ed607305526ca489b34ad0a41aed5f7980fa90eb03160b69598fb
  - name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - name: bstr
    version: 1.0.1
    sha: fca0852af221f458706eb0725c03e4ed6c46af9ac98e6a689d5e634215d594dd
  - name: bumpalo
    version: 3.11.1
    sha: 572f695136211188308f16ad2ca5c851a712c464060ae6974944458eb83880ba
  - name: bytemuck
    version: 1.12.3
    sha: aaa3a8d9a1ca92e282c96a32d6511b695d7d994d1d102ba85d279f9b2756947f
  - name: byteorder
    version: 1.4.3
    sha: 14c189c53d098945499cdfa7ecc63567cf3886b3332b312a5b4585d8d3a6a610
  - name: cairo-rs
    version: 0.16.3
    sha: 247e1183fa769ac22121f92276dae52f89acaf297f24b1320019f439b6e3b46f
  - name: cairo-sys-rs
    version: 0.16.3
    sha: 7c48f4af05fabdcfa9658178e1326efa061853f040ce7d72e33af6885196f421
  - name: cast
    version: 0.3.0
    sha: 37b2a672a2cb129a2e41c10b1224bb368f9f37a2b16b612598138befd7b37eb5
  - name: cc
    version: 1.0.77
    sha: e9f73505338f7d905b19d18738976aae232eb46b8efc15554ffc56deb5d9ebe4
  - name: cfg-expr
    version: 0.11.0
    sha: b0357a6402b295ca3a86bc148e84df46c02e41f41fef186bda662557ef6328aa
  - name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - name: chrono
    version: 0.4.23
    sha: 16b0a3d9ed01224b22057780a37bb8c5dbfe1be8ba48678e7bf57ec4b385411f
  - name: ciborium
    version: 0.2.0
    sha: b0c137568cc60b904a7724001b35ce2630fd00d5d84805fbb608ab89509d788f
  - name: ciborium-io
    version: 0.2.0
    sha: 346de753af073cc87b52b2083a506b38ac176a44cfb05497b622e27be899b369
  - name: ciborium-ll
    version: 0.2.0
    sha: 213030a2b5a4e0c0892b6652260cf6ccac84827b83a85a534e178e3906c4cf1b
  - name: clap
    version: 3.2.23
    sha: 71655c45cb9845d3270c9d6df84ebe72b4dad3c2ba3f7023ad47c144e4e473a5
  - name: clap
    version: 4.0.29
    sha: 4d63b9e9c07271b9957ad22c173bae2a4d9a81127680962039296abcd2f8251d
  - name: clap_complete
    version: 4.0.6
    sha: b7b3c9eae0de7bf8e3f904a5e40612b21fb2e2e566456d177809a48b892d24da
  - name: clap_derive
    version: 4.0.21
    sha: 0177313f9f02afc995627906bbd8967e2be069f5261954222dac78290c2b9014
  - name: clap_lex
    version: 0.2.4
    sha: 2850f2f5a82cbf437dd5af4d49848fbdfc27c157c3d010345776f952765261c5
  - name: clap_lex
    version: 0.3.0
    sha: 0d4198f73e42b4936b35b5bb248d81d2b595ecb170da0bac7655c54eedfa8da8
  - name: codespan-reporting
    version: 0.11.1
    sha: 3538270d33cc669650c4b093848450d380def10c331d38c768e34cac80576e6e
  - name: const-cstr
    version: 0.3.0
    sha: ed3d0b5ff30645a68f35ece8cea4556ca14ef8a1651455f789a099a0513532a6
  - name: const_fn
    version: 0.4.9
    sha: fbdcdcb6d86f71c5e97409ad45898af11cbc995b4ee8112d59095a28d376c935
  - name: convert_case
    version: 0.4.0
    sha: 6245d59a3e82a7fc217c5828a6692dbc6dfb63a0c8c90495621f7b9d79704a0e
  - name: core-foundation-sys
    version: 0.8.3
    sha: 5827cebf4670468b8772dd191856768aedcb1b0278a04f989f7766351917b9dc
  - name: crc32fast
    version: 1.3.2
    sha: b540bd8bc810d3885c6ea91e2018302f68baba2129ab3e88f32389ee9370880d
  - name: criterion
    version: 0.4.0
    sha: e7c76e09c1aae2bc52b3d2f29e13c6572553b30c4aa1b8a49fd70de6412654cb
  - name: criterion-plot
    version: 0.5.0
    sha: 6b50826342786a51a89e2da3a28f1c32b06e387201bc2d19791f622c673706b1
  - name: crossbeam-channel
    version: 0.5.6
    sha: c2dd04ddaf88237dc3b8d8f9a3c1004b506b54b3313403944054d23c0870c521
  - name: crossbeam-deque
    version: 0.8.2
    sha: 715e8152b692bba2d374b53d4875445368fdf21a94751410af607a5ac677d1fc
  - name: crossbeam-epoch
    version: 0.9.13
    sha: 01a9af1f4c2ef74bb8aa1f7e19706bc72d03598c8a570bb5de72243c7a9d9d5a
  - name: crossbeam-utils
    version: 0.8.14
    sha: 4fb766fa798726286dbbb842f174001dab8abc7b627a1dd86e0b7222a95d929f
  - name: cssparser
    version: 0.28.1
    sha: 1db8599a9761b371751fbf13e076fa03c6e1a78f8c5288e6ab9467f10a2322c1
  - name: cssparser-macros
    version: 0.6.0
    sha: dfae75de57f2b2e85e8768c3ea840fd159c8f33e2b6522c7835b7abac81be16e
  - name: cxx
    version: 1.0.82
    sha: d4a41a86530d0fe7f5d9ea779916b7cadd2d4f9add748b99c2c029cbbdfaf453
  - name: cxx-build
    version: 1.0.82
    sha: 06416d667ff3e3ad2df1cd8cd8afae5da26cf9cec4d0825040f88b5ca659a2f0
  - name: cxxbridge-flags
    version: 1.0.82
    sha: 820a9a2af1669deeef27cb271f476ffd196a2c4b6731336011e0ba63e2c7cf71
  - name: cxxbridge-macro
    version: 1.0.82
    sha: a08a6e2fcc370a089ad3b4aaf54db3b1b4cee38ddabce5896b33eb693275f470
  - name: data-url
    version: 0.2.0
    sha: 8d7439c3735f405729d52c3fbbe4de140eaf938a1fe47d227c27f8254d4302a5
  - name: derive_more
    version: 0.99.17
    sha: 4fb810d30a7c1953f91334de7244731fc3f3c10d7fe163338a35b9f640960321
  - name: difflib
    version: 0.4.0
    sha: 6184e33543162437515c2e2b48714794e37845ec9851711914eec9d308f6ebe8
  - name: discard
    version: 1.0.4
    sha: 212d0f5754cb6769937f4501cc0e67f4f4483c8d2c3e1e922ee9edbe4ab4c7c0
  - name: dlib
    version: 0.5.0
    sha: ac1b7517328c04c2aa68422fc60a41b92208182142ed04a25879c26c8f878794
  - name: doc-comment
    version: 0.3.3
    sha: fea41bba32d969b513997752735605054bc0dfa92b4c56bf1189f2e174be7a10
  - name: dtoa
    version: 0.4.8
    sha: 56899898ce76aaf4a0f24d914c97ea6ed976d42fec6ad33fcbb0a1103e07b2b0
  - name: dtoa-short
    version: 0.3.3
    sha: bde03329ae10e79ede66c9ce4dc930aa8599043b0743008548680f25b91502d6
  - name: either
    version: 1.8.0
    sha: 90e5c1c8368803113bf0c9584fc495a58b86dc8a29edbf8fe877d21d9507e797
  - name: encoding
    version: 0.2.33
    sha: 6b0d943856b990d12d3b55b359144ff341533e516d94098b1d3fc1ac666d36ec
  - name: encoding-index-japanese
    version: 1.20141219.5
    sha: 04e8b2ff42e9a05335dbf8b5c6f7567e5591d0d916ccef4e0b1710d32a0d0c91
  - name: encoding-index-korean
    version: 1.20141219.5
    sha: 4dc33fb8e6bcba213fe2f14275f0963fd16f0a02c878e3095ecfdf5bee529d81
  - name: encoding-index-simpchinese
    version: 1.20141219.5
    sha: d87a7194909b9118fc707194baa434a4e3b0fb6a5a757c73c3adb07aa25031f7
  - name: encoding-index-singlebyte
    version: 1.20141219.5
    sha: 3351d5acffb224af9ca265f435b859c7c01537c0849754d3db3fdf2bfe2ae84a
  - name: encoding-index-tradchinese
    version: 1.20141219.5
    sha: fd0e20d5688ce3cab59eb3ef3a2083a5c77bf496cb798dc6fcdb75f323890c18
  - name: encoding_index_tests
    version: 0.1.4
    sha: a246d82be1c9d791c5dfde9a2bd045fc3cbba3fa2b11ad558f27d01712f00569
  - name: errno
    version: 0.2.8
    sha: f639046355ee4f37944e44f60642c6f3a7efa3cf6b78c78a0d989a8ce6c396a1
  - name: errno-dragonfly
    version: 0.1.2
    sha: aa68f1b12764fab894d2755d2518754e71b4fd80ecfb822714a1206c2aab39bf
  - name: fastrand
    version: 1.8.0
    sha: a7a407cfaa3385c4ae6b23e84623d48c2798d06e3e6a1878f7f59f17b3f86499
  - name: flate2
    version: 1.0.25
    sha: a8a2db397cb1c8772f31494cb8917e48cd1e64f0fa7efac59fbd741a0a8ce841
  - name: float-cmp
    version: 0.9.0
    sha: 98de4bbd547a563b716d8dfa9aad1cb19bfab00f4fa09a6a4ed21dbcf44ce9c4
  - name: fnv
    version: 1.0.7
    sha: 3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1
  - name: form_urlencoded
    version: 1.1.0
    sha: a9c384f161156f5260c24a097c56119f9be8c798586aecc13afbcbe7b7e26bf8
  - name: futf
    version: 0.1.5
    sha: df420e2e84819663797d1ec6544b13c5be84629e7bb00dc960d6917db2987843
  - name: futures-channel
    version: 0.3.25
    sha: 52ba265a92256105f45b719605a571ffe2d1f0fea3807304b522c1d778f79eed
  - name: futures-core
    version: 0.3.25
    sha: 04909a7a7e4633ae6c4a9ab280aeb86da1236243a77b694a49eacd659a4bd3ac
  - name: futures-executor
    version: 0.3.25
    sha: 7acc85df6714c176ab5edf386123fafe217be88c0840ec11f199441134a074e2
  - name: futures-io
    version: 0.3.25
    sha: 00f5fb52a06bdcadeb54e8d3671f8888a39697dcb0b81b23b55174030427f4eb
  - name: futures-macro
    version: 0.3.25
    sha: bdfb8ce053d86b91919aad980c220b1fb8401a9394410e1c289ed7e66b61835d
  - name: futures-task
    version: 0.3.25
    sha: 2ffb393ac5d9a6eaa9d3fdf37ae2776656b706e200c8e16b1bdb227f5198e6ea
  - name: futures-util
    version: 0.3.25
    sha: 197676987abd2f9cadff84926f410af1c183608d36641465df73ae8211dc65d6
  - name: fxhash
    version: 0.2.1
    sha: c31b6d751ae2c7f11320402d34e41349dd1016f8d5d45e48c4312bc8625af50c
  - name: gdk-pixbuf
    version: 0.16.4
    sha: d3094f2b8578136d1929cade4e0fff82f573521b579e96cfc24af2458431f176
  - name: gdk-pixbuf-sys
    version: 0.16.3
    sha: 3092cf797a5f1210479ea38070d9ae8a5b8e9f8f1be9f32f4643c529c7d70016
  - name: getrandom
    version: 0.1.16
    sha: 8fc3cb4d91f53b50155bdcfd23f6a4c39ae1969c2ae85982b135750cccaf5fce
  - name: getrandom
    version: 0.2.8
    sha: c05aeb6a22b8f62540c194aac980f2115af067bfe15a0734d7277a768d396b31
  - name: gio
    version: 0.16.3
    sha: 1d4a17d999e6e4e05d87c2bb05b7140d47769bc53211711a33e2f91536458714
  - name: gio-sys
    version: 0.16.3
    sha: e9b693b8e39d042a95547fc258a7b07349b1f0b48f4b2fa3108ba3c51c0b5229
  - name: glib
    version: 0.16.4
    sha: d5204a4217749b385cefbfb7bf3a2fcde83e4ce6d0945f64440a1f5bd4010305
  - name: glib-macros
    version: 0.16.3
    sha: e084807350b01348b6d9dbabb724d1a0bb987f47a2c85de200e98e12e30733bf
  - name: glib-sys
    version: 0.16.3
    sha: c61a4f46316d06bfa33a7ac22df6f0524c8be58e3db2d9ca99ccb1f357b62a65
  - name: gobject-sys
    version: 0.16.3
    sha: 3520bb9c07ae2a12c7f2fbb24d4efc11231c8146a86956413fb1a79bb760a0f1
  - name: half
    version: 1.8.2
    sha: eabb4a44450da02c90444cf74558da904edde8fb4e9035a9a6a4e15445af0bd7
  - name: hashbrown
    version: 0.12.3
    sha: 8a9ee70c43aaf417c914396645a0fa852624801b24ebb7ae78fe8272889ac888
  - name: heck
    version: 0.4.0
    sha: 2540771e65fc8cb83cd6e8a237f70c319bd5c29f78ed1084ba5d50eeac86f7f9
  - name: hermit-abi
    version: 0.1.19
    sha: 62b467343b94ba476dcb2500d242dadbb39557df889310ac77c5d99100aaac33
  - name: hermit-abi
    version: 0.2.6
    sha: ee512640fe35acbfb4bb779db6f0d80704c2cacfa2e39b601ef3e3f47d1ae4c7
  - name: iana-time-zone
    version: 0.1.53
    sha: 64c122667b287044802d6ce17ee2ddf13207ed924c712de9a66a5814d5b64765
  - name: iana-time-zone-haiku
    version: 0.1.1
    sha: 0703ae284fc167426161c2e3f1da3ea71d94b21bedbcc9494e92b28e334e3dca
  - name: idna
    version: 0.3.0
    sha: e14ddfc70884202db2244c223200c204c2bda1bc6e0998d11b5e024d657209e6
  - name: indexmap
    version: 1.9.2
    sha: 1885e79c1fc4b10f0e172c475f458b7f7b93061064d98c3293e98c5ba0c8b399
  - name: instant
    version: 0.1.12
    sha: 7a5bbe824c507c5da5956355e86a746d82e0e1464f65d862cc5e71da70e94b2c
  - name: io-lifetimes
    version: 1.0.3
    sha: 46112a93252b123d31a119a8d1a1ac19deac4fac6e0e8b0df58f0d4e5870e63c
  - name: is-terminal
    version: 0.4.1
    sha: 927609f78c2913a6f6ac3c27a4fe87f43e2a35367c0c4b0f8265e8f49a104330
  - name: itertools
    version: 0.10.5
    sha: b0fd2260e829bddf4cb6ea802289de2f86d6a7a690192fbe91b3f46e0f2c8473
  - name: itoa
    version: 0.4.8
    sha: b71991ff56294aa922b450139ee08b3bfc70982c6b2c7562771375cf73542dd4
  - name: itoa
    version: 1.0.4
    sha: 4217ad341ebadf8d8e724e264f13e593e0648f5b3e94b3896a5df283be015ecc
  - name: js-sys
    version: 0.3.60
    sha: 49409df3e3bf0856b916e2ceaca09ee28e6871cf7d9ce97a692cacfdb2a25a47
  - name: language-tags
    version: 0.3.2
    sha: d4345964bb142484797b161f473a503a434de77149dd8c7427788c6e13379388
  - name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - name: libc
    version: 0.2.137
    sha: fc7fcc620a3bff7cdd7a365be3376c97191aeaccc2a603e600951e452615bf89
  - name: libloading
    version: 0.7.4
    sha: b67380fd3b2fbe7527a606e18729d21c6f3951633d0500574c4dc22d2d638b9f
  - name: link-cplusplus
    version: 1.0.7
    sha: 9272ab7b96c9046fbc5bc56c06c117cb639fe2d509df0c421cad82d2915cf369
  - name: linked-hash-map
    version: 0.5.6
    sha: 0717cef1bc8b636c6e1c1bbdefc09e6322da8a9321966e8928ef80d20f7f770f
  - name: linux-raw-sys
    version: 0.1.3
    sha: 8f9f08d8963a6c613f4b1a78f4f4a4dbfadf8e6545b2d72861731e4858b8b47f
  - name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - name: lock_api
    version: 0.4.9
    sha: 435011366fe56583b16cf956f9df0095b405b82d76425bc8981c0e22e60ec4df
  - name: log
    version: 0.4.17
    sha: abb12e687cfb44aa40f41fc3978ef76448f9b6038cad6aef4259d3c095a2382e
  - name: lopdf
    version: 0.29.0
    sha: de0f69c40d6dbc68ebac4bf5aec3d9978e094e22e29fcabd045acd9cec74a9dc
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
    version: 0.1.9
    sha: a3e378b66a060d48947b590737b30a1be76706c8dd7b8ba0f2fe3989c68a853f
  - name: matrixmultiply
    version: 0.3.2
    sha: add85d4dd35074e6fedc608f8c8f513a3548619a9024b751949ef0e8e45a4d84
  - name: memchr
    version: 2.5.0
    sha: 2dffe52ecf27772e601905b7522cb4ef790d2cc203488bbd0e2fe85fcb74566d
  - name: memoffset
    version: 0.7.1
    sha: 5de893c32cde5f383baa4c04c5d6dbdd735cfd4a794b0debdb2bb1b421da5ff4
  - name: miniz_oxide
    version: 0.6.2
    sha: b275950c28b37e794e8c55d88aeb5e139d0ce23fdbbeda68f8d7174abdf9e8fa
  - name: nalgebra
    version: 0.31.4
    sha: 20bd243ab3dbb395b39ee730402d2e5405e448c75133ec49cc977762c4cba3d1
  - name: nalgebra-macros
    version: 0.1.0
    sha: 01fcc0b8149b4632adc89ac3b7b31a12fb6099a0317a4eb2ebff574ef7de7218
  - name: new_debug_unreachable
    version: 1.0.4
    sha: e4a24736216ec316047a1fc4252e27dabb04218aa4a3f37c6e7ddbf1f9782b54
  - name: nodrop
    version: 0.1.14
    sha: 72ef4a56884ca558e5ddb05a1d1e7e1bfd9a68d9ed024c21704cc98872dae1bb
  - name: normalize-line-endings
    version: 0.3.0
    sha: 61807f77802ff30975e01f4f071c8ba10c022052f98b3294119f3e615d13e5be
  - name: num-complex
    version: 0.4.2
    sha: 7ae39348c8bc5fbd7f40c727a9925f03517afd2ab27d46702108b6a7e5414c19
  - name: num-integer
    version: 0.1.45
    sha: 225d3389fb3509a24c93f5c29eb6bde2586b98d9f016636dff58d7c6f7569cd9
  - name: num-rational
    version: 0.4.1
    sha: 0638a1c9d0a3c0914158145bc76cff373a75a627e6ecbfb71cbe6f453a5a19b0
  - name: num-traits
    version: 0.2.15
    sha: 578ede34cf02f8924ab9447f50c28075b4d3e5b269972345e7e0372b38c6cdcd
  - name: num_cpus
    version: 1.14.0
    sha: f6058e64324c71e02bc2b150e4f3bc8286db6c83092132ffa3f6b1eab0f9def5
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
    version: 1.16.0
    sha: 86f0b0d4bf799edbc74508c1e8bf170ff5f41238e5f8225603ca7caaae2b7860
  - name: oorandom
    version: 11.1.3
    sha: 0ab1bc2a289d34bd04a330323ac98a1b4bc82c9d9fcb1e66b63caa84da26b575
  - name: os_str_bytes
    version: 6.4.1
    sha: 9b7820b9daea5457c9f21c69448905d723fbd21136ccf521748f23fd49e723ee
  - name: pango
    version: 0.16.3
    sha: f6a83cd4015382dbb0f4fcf3ab7b277d4885711a62b2f2c1e6582a120094edad
  - name: pango-sys
    version: 0.16.3
    sha: 9e134909a9a293e04d2cc31928aa95679c5e4df954d0b85483159bd20d8f047f
  - name: pangocairo
    version: 0.16.3
    sha: 16ad2ec87789371b551fd2367c10aa37060412ffd3e60abd99491b21b93a3f9b
  - name: pangocairo-sys
    version: 0.16.3
    sha: 848d2df9b7f1a8c7a19d994de443bcbe5d4382610ccb8e64247f932be74fcf76
  - name: parking_lot
    version: 0.12.1
    sha: 3742b2c103b9f06bc9fff0a37ff4912935851bee6d36f3c02bcc755bcfec228f
  - name: parking_lot_core
    version: 0.9.5
    sha: 7ff9f3fef3968a3ec5945535ed654cb38ff72d7495a25619e2247fb15a2ed9ba
  - name: paste
    version: 1.0.9
    sha: b1de2e551fb905ac83f73f7aedf2f0cb4a0da7e35efa24a202a936269f1f18e1
  - name: percent-encoding
    version: 2.2.0
    sha: 478c572c3d73181ff3c2539045f6eb99e5491218eae919370993b890cdbdd98e
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
    version: 0.8.0
    sha: 7f6fde18ff429ffc8fe78e2bf7f8b7a5a5a6e2a8b58bc5a9ac69198bbda9189c
  - name: phf_shared
    version: 0.10.0
    sha: b6796ad771acdc0123d2a88dc428b5e38ef24456743ddb1744ed628f9815c096
  - name: phf_shared
    version: 0.8.0
    sha: c00cf8b9eafe68dde5e9eaa2cef8ee84a9336a47d566ec55ca16589633b65af7
  - name: pin-project-lite
    version: 0.2.9
    sha: e0a7ae3ac2f1173085d398531c705756c94a4c56843785df85a60c1a0afac116
  - name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - name: pkg-config
    version: 0.3.26
    sha: 6ac9a59f73473f1b8d852421e59e64809f025994837ef743615c6d0c5b305160
  - name: plotters
    version: 0.3.4
    sha: 2538b639e642295546c50fcd545198c9d64ee2a38620a628724a3b266d5fbf97
  - name: plotters-backend
    version: 0.3.4
    sha: 193228616381fecdc1224c62e96946dfbc73ff4384fba576e052ff8c1bea8142
  - name: plotters-svg
    version: 0.3.3
    sha: f9a81d2759aae1dae668f783c308bc5c8ebd191ff4184aaa1b37f65a6ae5a56f
  - name: png
    version: 0.17.7
    sha: 5d708eaf860a19b19ce538740d2b4bdeeb8337fa53f7738455e706623ad5c638
  - name: pom
    version: 3.2.0
    sha: 07e2192780e9f8e282049ff9bffcaa28171e1cb0844f49ed5374e518ae6024ec
  - name: ppv-lite86
    version: 0.2.17
    sha: 5b40af805b3121feab8a3c29f04d8ad262fa8e0561883e7653e024ae4479e6de
  - name: precomputed-hash
    version: 0.1.1
    sha: 925383efa346730478fb4838dbe9137d2a47675ad789c546d150a6e1dd4ab31c
  - name: predicates
    version: 2.1.3
    sha: ed6bd09a7f7e68f3f0bf710fb7ab9c4615a488b58b5f653382a687701e458c92
  - name: predicates-core
    version: 1.0.5
    sha: 72f883590242d3c6fc5bf50299011695fa6590c2c70eac95ee1bdb9a733ad1a2
  - name: predicates-tree
    version: 1.0.7
    sha: 54ff541861505aabf6ea722d2131ee980b8276e10a1297b94e896dd8b621850d
  - name: proc-macro-crate
    version: 1.2.1
    sha: eda0fc3b0fb7c975631757e14d9049da17374063edb6ebbcbc54d880d4fe94e9
  - name: proc-macro-error
    version: 1.0.4
    sha: da25490ff9892aab3fcf7c36f08cfb902dd3e71ca0f9f9517bea02a73a5ce38c
  - name: proc-macro-error-attr
    version: 1.0.4
    sha: a1be40180e52ecc98ad80b184934baf3d0d29f979574e439af5a55274b35f869
  - name: proc-macro-hack
    version: 0.5.19
    sha: dbf0c48bc1d91375ae5c3cd81e3722dff1abcf81a30960240640d223f59fe0e5
  - name: proc-macro2
    version: 1.0.47
    sha: 5ea3d908b0e36316caf9e9e2c4625cdde190a7e6f440d794667ed17a1855e725
  - name: proptest
    version: 1.0.0
    sha: 1e0d9cc07f18492d879586c92b485def06bc850da3118075cd45d50e9c95b0e5
  - name: quick-error
    version: 1.2.3
    sha: a1d01941d82fa2ab50be1e79e6714289dd7cde78eba4c074bc5a4374f650dfe0
  - name: quick-error
    version: 2.0.1
    sha: a993555f31e5a609f617c12db6250dedcac1b0a85076912c436e6fc9b2c8e6a3
  - name: quote
    version: 1.0.21
    sha: bbe448f377a7d6961e30f5955f9b8d106c3f5e449d493ee1b125c1d43c2b5179
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
  - name: rand_xorshift
    version: 0.3.0
    sha: d25bf25ec5ae4a3f1b92f929810509a2f53d7dca2f50b794ff57e3face536c8f
  - name: rawpointer
    version: 0.2.1
    sha: 60a357793950651c4ed0f3f52338f53b2f809f32d83a07f72909fa13e4c6c1e3
  - name: rayon
    version: 1.6.0
    sha: 1e060280438193c554f654141c9ea9417886713b7acd75974c85b18a69a88e0b
  - name: rayon-core
    version: 1.10.1
    sha: cac410af5d00ab6884528b4ab69d1e8e146e8d471201800fa1b4524126de6ad3
  - name: rctree
    version: 0.5.0
    sha: 3b42e27ef78c35d3998403c1d26f3efd9e135d3e5121b0a4845cc5cc27547f4f
  - name: redox_syscall
    version: 0.2.16
    sha: fb5a58c1855b4b6819d59012155603f0b22ad30cad752600aadfcb695265519a
  - name: regex
    version: 1.7.0
    sha: e076559ef8e241f2ae3479e36f97bd5741c0330689e217ad51ce2c76808b868a
  - name: regex-automata
    version: 0.1.10
    sha: 6c230d73fb8d8c1b9c0b3135c5142a8acee3a0558fb8db5cf1cb65f8d7862132
  - name: regex-syntax
    version: 0.6.28
    sha: 456c603be3e8d448b072f410900c09faf164fbce2d480456f50eea6e25f9c848
  - name: remove_dir_all
    version: 0.5.3
    sha: 3acd125665422973a33ac9d3dd2df85edad0f4ae9b00dafb1a05e43a9f5ef8e7
  - name: rgb
    version: 0.8.34
    sha: 3603b7d71ca82644f79b5a06d1220e9a58ede60bd32255f698cb1af8838b8db3
  - name: rustc_version
    version: 0.2.3
    sha: 138e3e0acb6c9fb258b19b67cb8abd63c00679d2851805ea151465464fe9030a
  - name: rustc_version
    version: 0.4.0
    sha: bfa0f585226d2e68097d4f95d113b15b83a82e819ab25717ec0590d9584ef366
  - name: rustix
    version: 0.36.4
    sha: cb93e85278e08bb5788653183213d3a60fc242b10cb9be96586f5a73dcb67c23
  - name: rusty-fork
    version: 0.3.0
    sha: cb3dcc6e454c328bb824492db107ab7c0ae8fcffe4ad210136ef014458c1bc4f
  - name: ryu
    version: 1.0.11
    sha: 4501abdff3ae82a1c1b477a17252eb69cee9e66eb915c1abaa4f44d873df9f09
  - name: safe_arch
    version: 0.6.0
    sha: 794821e4ccb0d9f979512f9c1973480123f9bd62a90d74ab0f9426fcf8f4a529
  - name: same-file
    version: 1.0.6
    sha: 93fc1dc3aaa9bfed95e02e6eadabb4baf7e3078b0bd1b4d7b6b0b68378900502
  - name: scopeguard
    version: 1.1.0
    sha: d29ab0c6d3fc0ee92fe66e2d99f700eab17a8d57d1c1d3b748380fb20baa78cd
  - name: scratch
    version: 1.0.2
    sha: 9c8132065adcfd6e02db789d9285a0deb2f3fcb04002865ab67d5fb103533898
  - name: selectors
    version: 0.23.0
    sha: fdea87c686be721aab36607728047801ee21561bfdbd6bf0da7ace2536d5879f
  - name: semver
    version: 0.9.0
    sha: 1d7eb9ef2c18661902cc47e535f9bc51b78acd254da71d375c2f6720d9a40403
  - name: semver
    version: 1.0.14
    sha: e25dfac463d778e353db5be2449d1cce89bd6fd23c9f1ea21310ce6e5a1b29c4
  - name: semver-parser
    version: 0.7.0
    sha: 388a1df253eca08550bef6c72392cfe7c30914bf41df5269b68cbd6ff8f570a3
  - name: serde
    version: 1.0.148
    sha: e53f64bb4ba0191d6d0676e1b141ca55047d83b74f5607e6d8eb88126c52c2dc
  - name: serde_derive
    version: 1.0.148
    sha: a55492425aa53521babf6137309e7d34c20bbfbbfcfe2c7f3a047fd1f6b92c0c
  - name: serde_json
    version: 1.0.89
    sha: 020ff22c755c2ed3f8cf162dbb41a7268d934702f3ed3631656ea597e08fc3db
  - name: servo_arc
    version: 0.1.1
    sha: d98238b800e0d1576d8b6e3de32827c2d74bee68bb97748dcf5071fb53965432
  - name: sha1
    version: 0.6.1
    sha: c1da05c97445caa12d05e848c4a4fcbbea29e748ac28f7e80e9b010392063770
  - name: sha1_smol
    version: 1.0.0
    sha: ae1a47186c03a32177042e55dbc5fd5aee900b8e0069a8d70fba96a9375cd012
  - name: simba
    version: 0.7.3
    sha: 2f3fd720c48c53cace224ae62bef1bbff363a70c68c4802a78b5cc6159618176
  - name: siphasher
    version: 0.3.10
    sha: 7bd3e3206899af3f8b12af284fafc038cc1dc2b41d1b89dd17297221c5d225de
  - name: slab
    version: 0.4.7
    sha: 4614a76b2a8be0058caa9dbbaf66d988527d86d003c11a94fbd335d7661edcef
  - name: smallvec
    version: 1.10.0
    sha: a507befe795404456341dfab10cef66ead4c041f62b8b11bbb92bffe5d0953e0
  - name: stable_deref_trait
    version: 1.2.0
    sha: a8f112729512f8e442d81f95a8a7ddf2b7c6b8a1a6f509a95864142b30cab2d3
  - name: standback
    version: 0.2.17
    sha: e113fb6f3de07a243d434a56ec6f186dfd51cb08448239fe7bcae73f87ff28ff
  - name: stdweb
    version: 0.4.20
    sha: d022496b16281348b52d0e30ae99e01a73d737b2f45d38fed4edf79f9325a1d5
  - name: stdweb-derive
    version: 0.5.3
    sha: c87a60a40fccc84bef0652345bbbbbe20a605bf5d0ce81719fc476f5c03b50ef
  - name: stdweb-internal-macros
    version: 0.2.9
    sha: 58fa5ff6ad0d98d1ffa8cb115892b6e69d67799f6763e162a1c9db421dc22e11
  - name: stdweb-internal-runtime
    version: 0.1.5
    sha: 213701ba3370744dcd1a12960caa4843b3d68b4d1c0a5d575e0d65b2ee9d16c0
  - name: string_cache
    version: 0.8.4
    sha: 213494b7a2b503146286049378ce02b482200519accc31872ee8be91fa820a08
  - name: string_cache_codegen
    version: 0.5.2
    sha: 6bb30289b722be4ff74a408c3cc27edeaad656e06cb1fe8fa9231fa59c728988
  - name: strsim
    version: 0.10.0
    sha: 73473c0e59e6d5812c5dfe2a064a6444949f089e20eec9a2e5506596494e4623
  - name: syn
    version: 1.0.104
    sha: 4ae548ec36cf198c0ef7710d3c230987c2d6d7bd98ad6edc0274462724c585ce
  - name: system-deps
    version: 6.0.3
    sha: 2955b1fe31e1fa2fbd1976b71cc69a606d7d4da16f6de3333d0c92d51419aeff
  - name: tempfile
    version: 3.3.0
    sha: 5cdb1ef4eaeeaddc8fbd371e5017057064af0911902ef36b39801f67cc6d79e4
  - name: tendril
    version: 0.4.3
    sha: d24a120c5fc464a3458240ee02c299ebcb9d67b5249c8848b09d639dca8d7bb0
  - name: termcolor
    version: 1.1.3
    sha: bab24d30b911b2376f3a13cc2cd443142f0c81dda04c118693e35b3835757755
  - name: termtree
    version: 0.4.0
    sha: 95059e91184749cb66be6dc994f67f182b6d897cb3df74a5bf66b5e709295fd8
  - name: textwrap
    version: 0.16.0
    sha: 222a222a5bfe1bba4a77b45ec488a741b3cb8872e5e499451fd7d0129c9c7c3d
  - name: thiserror
    version: 1.0.37
    sha: 10deb33631e3c9018b9baf9dcbbc4f737320d2b576bac10f6aefa048fa407e3e
  - name: thiserror-impl
    version: 1.0.37
    sha: 982d17546b47146b28f7c22e3d08465f6b8903d0ea13c1660d9d84a6e7adcdbb
  - name: time
    version: 0.1.45
    sha: 1b797afad3f312d1c66a56d11d0316f916356d11bd158fbc6ca6389ff6bf805a
  - name: time
    version: 0.2.27
    sha: 4752a97f8eebd6854ff91f1c1824cd6160626ac4bd44287f7f4ea2035a02a242
  - name: time-macros
    version: 0.1.1
    sha: 957e9c6e26f12cb6d0dd7fc776bb67a706312e7299aed74c8dd5b17ebb27e2f1
  - name: time-macros-impl
    version: 0.1.2
    sha: fd3c141a1b43194f3f56a1411225df8646c55781d5f26db825b3d98507eb482f
  - name: tinytemplate
    version: 1.2.1
    sha: be4d6b5f19ff7664e8c98d03e2139cb510db9b0a60b55f8e8709b689d939b6bc
  - name: tinyvec
    version: 1.6.0
    sha: 87cc5ceb3875bb20c2890005a4e226a4651264a5c75edb2421b52861a0a0cb50
  - name: tinyvec_macros
    version: 0.1.0
    sha: cda74da7e1a664f795bb1f8a87ec406fb89a02522cf6e50620d016add6dbbf5c
  - name: toml
    version: 0.5.9
    sha: 8d82e1a7758622a465f8cee077614c73484dac5b836c02ff6a40d5d1010324d7
  - name: typenum
    version: 1.15.0
    sha: dcf81ac59edc17cc8697ff311e8f5ef2d99fcbd9817b34cec66f90b6c3dfd987
  - name: unicode-bidi
    version: 0.3.8
    sha: 099b7128301d285f79ddd55b9a83d5e6b9e97c92e0ea0daebee7263e932de992
  - name: unicode-ident
    version: 1.0.5
    sha: 6ceab39d59e4c9499d4e5a8ee0e2735b891bb7308ac83dfb4e80cad195c9f6f3
  - name: unicode-normalization
    version: 0.1.22
    sha: 5c5713f0fc4b5db668a2ac63cdb7bb4469d8c9fed047b1d0292cc7b0ce2ba921
  - name: unicode-width
    version: 0.1.10
    sha: c0edd1e5b14653f783770bce4a4dabb4a5108a5370a5f5d8cfe8710c361f6c8b
  - name: url
    version: 2.3.1
    sha: 0d68c799ae75762b8c3fe375feb6600ef5602c883c5d21eb51c09f22b83c4643
  - name: utf-8
    version: 0.7.6
    sha: 09cc8ee72d2a9becf2f2febe0205bbed8fc6615b7cb429ad062dc7b7ddd036a9
  - name: version-compare
    version: 0.1.1
    sha: 579a42fc0b8e0c63b76519a339be31bed574929511fa53c1a3acae26eb258f29
  - name: version_check
    version: 0.9.4
    sha: 49874b5167b65d7193b8aba1567f5c7d93d001cafc34600cee003eda787e483f
  - name: wait-timeout
    version: 0.2.0
    sha: 9f200f5b12eb75f8c1ed65abd4b2db8a6e1b138a20de009dacee265a2498f3f6
  - name: walkdir
    version: 2.3.2
    sha: 808cf2735cd4b6866113f648b791c6adc5714537bc222d9347bb203386ffda56
  - name: wasi
    version: 0.10.0+wasi-snapshot-preview1
    sha: 1a143597ca7c7793eff794def352d41792a93c481eb1042423ff7ff72ba2c31f
  - name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
  - name: wasi
    version: 0.9.0+wasi-snapshot-preview1
    sha: cccddf32554fecc6acb585f82a32a72e28b48f8c4c1883ddfeeeaa96f7d8e519
  - name: wasm-bindgen
    version: 0.2.83
    sha: eaf9f5aceeec8be17c128b2e93e031fb8a4d469bb9c4ae2d7dc1888b26887268
  - name: wasm-bindgen-backend
    version: 0.2.83
    sha: 4c8ffb332579b0557b52d268b91feab8df3615f265d5270fec2a8c95b17c1142
  - name: wasm-bindgen-macro
    version: 0.2.83
    sha: 052be0f94026e6cbc75cdefc9bae13fd6052cdcaf532fa6c45e7ae33a1e6c810
  - name: wasm-bindgen-macro-support
    version: 0.2.83
    sha: 07bc0c051dc5f23e307b13285f9d75df86bfdf816c5721e573dec1f9b8aa193c
  - name: wasm-bindgen-shared
    version: 0.2.83
    sha: 1c38c045535d93ec4f0b4defec448e4291638ee608530863b1e2ba115d4fff7f
  - name: web-sys
    version: 0.3.60
    sha: bcda906d8be16e728fd5adc5b729afad4e444e106ab28cd1c7256e54fa61510f
  - name: weezl
    version: 0.1.7
    sha: 9193164d4de03a926d909d3bc7c30543cecb35400c02114792c2cae20d5e2dbb
  - name: wide
    version: 0.7.5
    sha: ae41ecad2489a1655c8ef8489444b0b113c0a0c795944a3572a0931cf7d2525c
  - name: winapi
    version: 0.3.9
    sha: 5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419
  - name: winapi-i686-pc-windows-gnu
    version: 0.4.0
    sha: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
  - name: winapi-util
    version: 0.1.5
    sha: 70ec6ce85bb158151cae5e5c87f95a8e97d2c0c4b001223f33a334e3ce5de178
  - name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
  - name: windows-sys
    version: 0.42.0
    sha: 5a3e1820f08b8513f676f7ab6c1f99ff312fb97b553d30ff4dd86f9f15728aa7
  - name: windows_aarch64_gnullvm
    version: 0.42.0
    sha: 41d2aa71f6f0cbe00ae5167d90ef3cfe66527d6f613ca78ac8024c3ccab9a19e
  - name: windows_aarch64_msvc
    version: 0.42.0
    sha: dd0f252f5a35cac83d6311b2e795981f5ee6e67eb1f9a7f64eb4500fbc4dcdb4
  - name: windows_i686_gnu
    version: 0.42.0
    sha: fbeae19f6716841636c28d695375df17562ca208b2b7d0dc47635a50ae6c5de7
  - name: windows_i686_msvc
    version: 0.42.0
    sha: 84c12f65daa39dd2babe6e442988fc329d6243fdce47d7d2d155b8d874862246
  - name: windows_x86_64_gnu
    version: 0.42.0
    sha: bf7b1b21b5362cbc318f686150e5bcea75ecedc74dd157d874d754a2ca44b0ed
  - name: windows_x86_64_gnullvm
    version: 0.42.0
    sha: 09d525d2ba30eeb3297665bd434a54297e4170c7f1a44cad4ef58095b4cd2028
  - name: windows_x86_64_msvc
    version: 0.42.0
    sha: f40009d85759725a34da6d89a94e63d7bdc50a862acf0dbc7c8e488f1edcb6f5
  - name: xml5ever
    version: 0.17.0
    sha: 4034e1d05af98b51ad7214527730626f019682d797ba38b51689212118d8e650
  - name: yeslogic-fontconfig-sys
    version: 4.0.1
    sha: ec657fd32bbcbeaef5c7bc8e10b3db95b143fab8db0a50079773dbf936fd4f73
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- sdk-deps/gi-docgen.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --enable-gtk-doc
    --enable-vala

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/librsvg-2.so'
