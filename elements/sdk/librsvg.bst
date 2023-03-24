kind: autotools

sources:
- kind: git_tag
  url: gnome:librsvg.git
  track: main
  ref: 2.56.0-108-gabc1e11396b7cba6cf082c11f4b2c0b1719f911c
- kind: cargo
  ref:
  - name: adler
    version: 1.0.2
    sha: f26201604c87b1e01bd3d98f8d5d9a8fcbb815e8cedb41ffccbeb4bf593a35fe
  - name: aho-corasick
    version: 1.0.1
    sha: 67fc08ce920c31afb70f013dcce1bfc3a3195de6a228474e45e1f145b36f8d04
  - name: android_system_properties
    version: 0.1.5
    sha: 819e7219dbd41043ac279b19830f2efc897156490d7fd6ea916720117ee66311
  - name: anes
    version: 0.1.6
    sha: 4b46cbb362ab8752921c97e041f5e366ee6297bd428a31275b9fcf1e380f7299
  - name: anstream
    version: 0.3.2
    sha: 0ca84f3628370c59db74ee214b3263d58f9aadd9b4fe7e711fd87dc452b7f163
  - name: anstyle
    version: 1.0.0
    sha: 41ed9a86bf92ae6580e0a31281f65a1b1d867c0cc68d5346e2ae128dddfa6a7d
  - name: anstyle-parse
    version: 0.2.0
    sha: e765fd216e48e067936442276d1d57399e37bce53c264d6fefbe298080cb57ee
  - name: anstyle-query
    version: 1.0.0
    sha: 5ca11d4be1bab0c8bc8734a9aa7bf4ee8316d462a08c6ac5052f888fef5b494b
  - name: anstyle-wincon
    version: 1.0.1
    sha: 180abfa45703aebe0093f79badacc01b8fd4ea2e35118747e5811127f926e188
  - name: anyhow
    version: 1.0.71
    sha: 9c7d0618f0e0b7e8ff11427422b64564d5fb0be1940354bfe2e0529b18a9d9b8
  - name: approx
    version: 0.5.1
    sha: cab112f0a86d568ea0e627cc1d6be74a1e9cd55214684db5561995f6dad897c6
  - name: assert_cmd
    version: 2.0.11
    sha: 86d6b683edf8d1119fe420a94f8a7e389239666aa72e65495d91c00462510151
  - name: atty
    version: 0.2.14
    sha: d9b39be18770d11421cdb1b9947a45dd3f37e93092cbf377614828a319d5fee8
  - name: autocfg
    version: 1.1.0
    sha: d468802bab17cbc0cc575e9b053f41e72aa36bfa6b7f55e3529ffa43161b97fa
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
    version: 1.4.0
    sha: c3d4260bcc2e8fc9df1eac4919a720effeb63a3f0952f5bf4944adfa18897f09
  - name: bumpalo
    version: 3.12.1
    sha: 9b1ce199063694f33ffb7dd4e0ee620741495c32833cde5aa08f02a0bf96f0c8
  - name: bytemuck
    version: 1.13.1
    sha: 17febce684fd15d89027105661fec94afb475cb995fbc59d2865198446ba2eea
  - name: byteorder
    version: 1.4.3
    sha: 14c189c53d098945499cdfa7ecc63567cf3886b3332b312a5b4585d8d3a6a610
  - name: cairo-rs
    version: 0.17.0
    sha: a8af54f5d48af1226928adc1f57edd22f5df1349e7da1fc96ae15cf43db0e871
  - name: cairo-sys-rs
    version: 0.17.0
    sha: f55382a01d30e5e53f185eee269124f5e21ab526595b872751278dfbb463594e
  - name: cast
    version: 0.3.0
    sha: 37b2a672a2cb129a2e41c10b1224bb368f9f37a2b16b612598138befd7b37eb5
  - name: cc
    version: 1.0.79
    sha: 50d30906286121d95be3d479533b458f87493b30a4b5f79a607db8f5d11aa91f
  - name: cfg-expr
    version: 0.15.1
    sha: c8790cf1286da485c72cf5fc7aeba308438800036ec67d89425924c4807268c9
  - name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - name: chrono
    version: 0.4.24
    sha: 4e3c5919066adf22df73762e50cffcde3a758f2a848b113b586d1f86728b673b
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
    version: 3.2.25
    sha: 4ea181bf566f71cb9a5d17a59e1871af638180a18fb0035c92ae62b705207123
  - name: clap
    version: 4.2.7
    sha: 34d21f9bf1b425d2968943631ec91202fe5e837264063503708b83013f8fc938
  - name: clap_builder
    version: 4.2.7
    sha: 914c8c79fb560f238ef6429439a30023c862f7a28e688c58f7203f12b29970bd
  - name: clap_complete
    version: 4.2.1
    sha: 1a19591b2ab0e3c04b588a0e04ddde7b9eaa423646d1b4a8092879216bf47473
  - name: clap_derive
    version: 4.2.0
    sha: 3f9644cd56d6b87dbe899ef8b053e331c0637664e9e21a33dfcdc36093f5c5c4
  - name: clap_lex
    version: 0.2.4
    sha: 2850f2f5a82cbf437dd5af4d49848fbdfc27c157c3d010345776f952765261c5
  - name: clap_lex
    version: 0.4.1
    sha: 8a2dd5a6fe8c6e3502f568a6353e5273bbb15193ad9a89e457b9970798efbea1
  - name: codespan-reporting
    version: 0.11.1
    sha: 3538270d33cc669650c4b093848450d380def10c331d38c768e34cac80576e6e
  - name: colorchoice
    version: 1.0.0
    sha: acbf1af155f9b9ef647e42cdc158db4b64a1b61f743629225fde6f3e0be2a7c7
  - name: const-cstr
    version: 0.3.0
    sha: ed3d0b5ff30645a68f35ece8cea4556ca14ef8a1651455f789a099a0513532a6
  - name: convert_case
    version: 0.4.0
    sha: 6245d59a3e82a7fc217c5828a6692dbc6dfb63a0c8c90495621f7b9d79704a0e
  - name: core-foundation-sys
    version: 0.8.4
    sha: e496a50fda8aacccc86d7529e2c1e0892dbd0f898a6b5645b5561b89c3210efa
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
    version: 0.5.8
    sha: a33c2bf77f2df06183c3aa30d1e96c0695a313d4f9c453cc3762a6db39f99200
  - name: crossbeam-deque
    version: 0.8.3
    sha: ce6fd6f855243022dcecf8702fef0c297d4338e226845fe067f6341ad9fa0cef
  - name: crossbeam-epoch
    version: 0.9.14
    sha: 46bd5f3f85273295a9d14aedfb86f6aadbff6d8f5295c4a9edb08e819dcf5695
  - name: crossbeam-utils
    version: 0.8.15
    sha: 3c063cd8cc95f5c377ed0d4b49a4b21f632396ff690e8470c29b3359b346984b
  - name: cssparser
    version: 0.29.6
    sha: f93d03419cb5950ccfd3daf3ff1c7a36ace64609a1a8746d493df1ca0afde0fa
  - name: cssparser-macros
    version: 0.6.0
    sha: dfae75de57f2b2e85e8768c3ea840fd159c8f33e2b6522c7835b7abac81be16e
  - name: cstr
    version: 0.2.11
    sha: 8aa998c33a6d3271e3678950a22134cd7dd27cef86dee1b611b5b14207d1d90b
  - name: cxx
    version: 1.0.94
    sha: f61f1b6389c3fe1c316bf8a4dccc90a38208354b330925bce1f74a6c4756eb93
  - name: cxx-build
    version: 1.0.94
    sha: 12cee708e8962df2aeb38f594aae5d827c022b6460ac71a7a3e2c3c2aae5a07b
  - name: cxxbridge-flags
    version: 1.0.94
    sha: 7944172ae7e4068c533afbb984114a56c46e9ccddda550499caa222902c7f7bb
  - name: cxxbridge-macro
    version: 1.0.94
    sha: 2345488264226bf682893e25de0769f3360aac9957980ec49361b083ddaa5bc5
  - name: data-url
    version: 0.2.0
    sha: 8d7439c3735f405729d52c3fbbe4de140eaf938a1fe47d227c27f8254d4302a5
  - name: derive_more
    version: 0.99.17
    sha: 4fb810d30a7c1953f91334de7244731fc3f3c10d7fe163338a35b9f640960321
  - name: difflib
    version: 0.4.0
    sha: 6184e33543162437515c2e2b48714794e37845ec9851711914eec9d308f6ebe8
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
    version: 1.8.1
    sha: 7fcaabb2fef8c910e7f4c7ce9f67a1283a1715879a7c230ca9d6d1ae31f16d91
  - name: encoding_rs
    version: 0.8.32
    sha: 071a31f4ee85403370b58aca746f01041ede6f0da2730960ad001edc2b71b394
  - name: errno
    version: 0.3.1
    sha: 4bcfec3a70f97c962c307b2d2c56e358cf1d00b558d74262b5f929ee8cc7e73a
  - name: errno-dragonfly
    version: 0.1.2
    sha: aa68f1b12764fab894d2755d2518754e71b4fd80ecfb822714a1206c2aab39bf
  - name: fastrand
    version: 1.9.0
    sha: e51093e27b0797c359783294ca4f0a911c270184cb10f85783b118614a1501be
  - name: fdeflate
    version: 0.3.0
    sha: d329bdeac514ee06249dabc27877490f17f5d371ec693360768b838e19f3ae10
  - name: flate2
    version: 1.0.26
    sha: 3b9429470923de8e8cbd4d2dc513535400b4b3fef0319fb5c4e1f520a7bef743
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
  - name: futures-macro
    version: 0.3.28
    sha: 89ca545a94061b6365f2c7355b4b32bd20df3ff95f02da9329b34ccc3bd6ee72
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
    version: 0.17.0
    sha: b023fbe0c6b407bd3d9805d107d9800da3829dc5a676653210f1d5f16d7f59bf
  - name: gdk-pixbuf-sys
    version: 0.17.0
    sha: 7b41bd2b44ed49d99277d3925652a163038bd5ed943ec9809338ffb2f4391e3b
  - name: getrandom
    version: 0.1.16
    sha: 8fc3cb4d91f53b50155bdcfd23f6a4c39ae1969c2ae85982b135750cccaf5fce
  - name: getrandom
    version: 0.2.9
    sha: c85e1d9ab2eadba7e5040d4e09cbd6d072b76a557ad64e797c2cb9d4da21d7e4
  - name: gio
    version: 0.17.9
    sha: d14522e56c6bcb6f7a3aebc25cbcfb06776af4c0c25232b601b4383252d7cb92
  - name: gio-sys
    version: 0.17.4
    sha: 6b1d43b0d7968b48455244ecafe41192871257f5740aa6b095eb19db78e362a5
  - name: glib
    version: 0.17.9
    sha: a7f1de7cbde31ea4f0a919453a2dcece5d54d5b70e08f8ad254dc4840f5f09b6
  - name: glib-macros
    version: 0.17.9
    sha: 0a7206c5c03851ef126ea1444990e81fdd6765fb799d5bc694e4897ca01bb97f
  - name: glib-sys
    version: 0.17.4
    sha: 49f00ad0a1bf548e61adfff15d83430941d9e1bb620e334f779edd1c745680a5
  - name: gobject-sys
    version: 0.17.4
    sha: 15e75b0000a64632b2d8ca3cf856af9308e3a970844f6e9659bd197f026793d0
  - name: half
    version: 1.8.2
    sha: eabb4a44450da02c90444cf74558da904edde8fb4e9035a9a6a4e15445af0bd7
  - name: hashbrown
    version: 0.12.3
    sha: 8a9ee70c43aaf417c914396645a0fa852624801b24ebb7ae78fe8272889ac888
  - name: heck
    version: 0.4.1
    sha: 95505c38b4572b2d910cecb0281560f54b440a19336cbbcb27bf6ce6adc6f5a8
  - name: hermit-abi
    version: 0.1.19
    sha: 62b467343b94ba476dcb2500d242dadbb39557df889310ac77c5d99100aaac33
  - name: hermit-abi
    version: 0.2.6
    sha: ee512640fe35acbfb4bb779db6f0d80704c2cacfa2e39b601ef3e3f47d1ae4c7
  - name: hermit-abi
    version: 0.3.1
    sha: fed44880c466736ef9a5c5b5facefb5ed0785676d0c02d612db14e54f0d84286
  - name: iana-time-zone
    version: 0.1.56
    sha: 0722cd7114b7de04316e7ea5456a0bbb20e4adb46fd27a3697adb812cff0f37c
  - name: iana-time-zone-haiku
    version: 0.1.1
    sha: 0703ae284fc167426161c2e3f1da3ea71d94b21bedbcc9494e92b28e334e3dca
  - name: idna
    version: 0.3.0
    sha: e14ddfc70884202db2244c223200c204c2bda1bc6e0998d11b5e024d657209e6
  - name: indexmap
    version: 1.9.3
    sha: bd070e393353796e801d209ad339e89596eb4c8d430d18ede6a1cced8fafbd99
  - name: instant
    version: 0.1.12
    sha: 7a5bbe824c507c5da5956355e86a746d82e0e1464f65d862cc5e71da70e94b2c
  - name: io-lifetimes
    version: 1.0.10
    sha: 9c66c74d2ae7e79a5a8f7ac924adbe38ee42a859c6539ad869eb51f0b52dc220
  - name: is-terminal
    version: 0.4.7
    sha: adcf93614601c8129ddf72e2d5633df827ba6551541c6d8c59520a371475be1f
  - name: itertools
    version: 0.10.5
    sha: b0fd2260e829bddf4cb6ea802289de2f86d6a7a690192fbe91b3f46e0f2c8473
  - name: itoa
    version: 1.0.6
    sha: 453ad9f582a441959e5f0d088b02ce04cfe8d51a8eaf077f12ac6d3e94164ca6
  - name: js-sys
    version: 0.3.61
    sha: 445dde2150c55e483f3d8416706b97ec8e8237c307e5b7b4b8dd15e6af2a0730
  - name: language-tags
    version: 0.3.2
    sha: d4345964bb142484797b161f473a503a434de77149dd8c7427788c6e13379388
  - name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - name: libc
    version: 0.2.144
    sha: 2b00cc1c228a6782d0f076e7b232802e0c5689d41bb5df366f2a6b6621cfdfe1
  - name: libloading
    version: 0.7.4
    sha: b67380fd3b2fbe7527a606e18729d21c6f3951633d0500574c4dc22d2d638b9f
  - name: libm
    version: 0.2.6
    sha: 348108ab3fba42ec82ff6e9564fc4ca0247bdccdc68dd8af9764bbc79c3c8ffb
  - name: link-cplusplus
    version: 1.0.8
    sha: ecd207c9c713c34f95a097a5b029ac2ce6010530c7b49d7fea24d977dede04f5
  - name: linked-hash-map
    version: 0.5.6
    sha: 0717cef1bc8b636c6e1c1bbdefc09e6322da8a9321966e8928ef80d20f7f770f
  - name: linux-raw-sys
    version: 0.3.7
    sha: ece97ea872ece730aed82664c424eb4c8291e1ff2480247ccf7409044bc6479f
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
    version: 0.30.0
    sha: 7ab029c5cd5b0a292b05e3121b6bcf02f20e58e85ffe6d5417a38c1f8f24cbf7
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
  - name: memoffset
    version: 0.8.0
    sha: d61c719bcfbcf5d62b3a09efa6088de8c54bc0bfcd3ea7ae39fcc186108b8de1
  - name: minimal-lexical
    version: 0.2.1
    sha: 68354c5c6bd36d73ff3feceb05efa59b6acb7626617f4962be322a825e61f79a
  - name: miniz_oxide
    version: 0.7.1
    sha: e7810e0be55b428ada41041c41f32c9f1a42817901b4ccf45fa3d4b6561e74c7
  - name: nalgebra
    version: 0.32.2
    sha: d68d47bba83f9e2006d117a9a33af1524e655516b8919caac694427a6fb1e511
  - name: nalgebra-macros
    version: 0.2.0
    sha: d232c68884c0c99810a5a4d333ef7e47689cfd0edc85efc9e54e1e6bf5212766
  - name: new_debug_unreachable
    version: 1.0.4
    sha: e4a24736216ec316047a1fc4252e27dabb04218aa4a3f37c6e7ddbf1f9782b54
  - name: nodrop
    version: 0.1.14
    sha: 72ef4a56884ca558e5ddb05a1d1e7e1bfd9a68d9ed024c21704cc98872dae1bb
  - name: nom
    version: 7.1.3
    sha: d273983c5a657a70a3e8f2a01329822f3b8c8172b73826411a55751e404a0a4a
  - name: normalize-line-endings
    version: 0.3.0
    sha: 61807f77802ff30975e01f4f071c8ba10c022052f98b3294119f3e615d13e5be
  - name: num-complex
    version: 0.4.3
    sha: 02e0d21255c828d6f128a1e41534206671e8c3ea0c62f32291e808dc82cff17d
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
    version: 1.15.0
    sha: 0fac9e2da13b5eb447a6ce3d392f23a29d8694bff781bf03a16cd9ac8697593b
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
    version: 1.17.1
    sha: b7e5500299e16ebb147ae15a00a942af264cf3688f47923b8fc2cd5858f23ad3
  - name: oorandom
    version: 11.1.3
    sha: 0ab1bc2a289d34bd04a330323ac98a1b4bc82c9d9fcb1e66b63caa84da26b575
  - name: os_str_bytes
    version: 6.5.0
    sha: ceedf44fb00f2d1984b0bc98102627ce622e083e49a5bacdb3e514fa4238e267
  - name: pango
    version: 0.17.4
    sha: 52c280b82a881e4208afb3359a8e7fde27a1b272280981f1f34610bed5770d37
  - name: pango-sys
    version: 0.17.0
    sha: 4293d0f0b5525eb5c24734d30b0ed02cd02aa734f216883f376b54de49625de8
  - name: pangocairo
    version: 0.17.0
    sha: 2feeb7ea7874507f83f5e7ba869c54e321959431c8fbd70d4b735c8b15d90506
  - name: pangocairo-sys
    version: 0.17.3
    sha: f60f1be8ef08087ddcbdcc1350e06073bff11113d425d12b622b716d96b9611c
  - name: parking_lot
    version: 0.12.1
    sha: 3742b2c103b9f06bc9fff0a37ff4912935851bee6d36f3c02bcc755bcfec228f
  - name: parking_lot_core
    version: 0.9.7
    sha: 9069cbb9f99e3a5083476ccb29ceb1de18b9118cafa53e90c9551235de2b9521
  - name: paste
    version: 1.0.12
    sha: 9f746c4065a8fa3fe23974dd82f15431cc8d40779821001404d10d2e79ca7d79
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
    version: 0.10.0
    sha: 58fdf3184dd560f160dd73922bea2d5cd6e8f064bf4b13110abd81b03697b4e0
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
    version: 0.3.27
    sha: 26072860ba924cbfa98ea39c8c19b4dd6a4a25423dbdf219c1eca91aa0cf6964
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
    version: 0.17.8
    sha: aaeebc51f9e7d2c150d3f3bfeb667f2aa985db5ef1e3d212847bdedb488beeaa
  - name: ppv-lite86
    version: 0.2.17
    sha: 5b40af805b3121feab8a3c29f04d8ad262fa8e0561883e7653e024ae4479e6de
  - name: precomputed-hash
    version: 0.1.1
    sha: 925383efa346730478fb4838dbe9137d2a47675ad789c546d150a6e1dd4ab31c
  - name: predicates
    version: 3.0.3
    sha: 09963355b9f467184c04017ced4a2ba2d75cbcb4e7462690d388233253d4b1a9
  - name: predicates-core
    version: 1.0.6
    sha: b794032607612e7abeb4db69adb4e33590fa6cf1149e95fd7cb00e634b92f174
  - name: predicates-tree
    version: 1.0.9
    sha: 368ba315fb8c5052ab692e68a0eefec6ec57b23a36959c14496f0b0df2c0cecf
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
    version: 1.0.56
    sha: 2b63bdb0cd06f1f4dedf69b254734f9b45af66e4a031e42a7480257d9898b435
  - name: proptest
    version: 1.1.0
    sha: 29f1b898011ce9595050a68e60f90bad083ff2987a695a42357134c8381fba70
  - name: quick-error
    version: 1.2.3
    sha: a1d01941d82fa2ab50be1e79e6714289dd7cde78eba4c074bc5a4374f650dfe0
  - name: quick-error
    version: 2.0.1
    sha: a993555f31e5a609f617c12db6250dedcac1b0a85076912c436e6fc9b2c8e6a3
  - name: quote
    version: 1.0.27
    sha: 8f4f29d145265ec1c483c7c654450edde0bfe043d3938d6972630663356d9500
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
    version: 1.7.0
    sha: 1d2df5196e37bcc87abebc0053e20787d73847bb33134a69841207dd0a47f03b
  - name: rayon-core
    version: 1.11.0
    sha: 4b8f95bd6966f5c87776639160a66bd8ab9895d9d4ab01ddba9fc60661aebe8d
  - name: rctree
    version: 0.5.0
    sha: 3b42e27ef78c35d3998403c1d26f3efd9e135d3e5121b0a4845cc5cc27547f4f
  - name: redox_syscall
    version: 0.2.16
    sha: fb5a58c1855b4b6819d59012155603f0b22ad30cad752600aadfcb695265519a
  - name: redox_syscall
    version: 0.3.5
    sha: 567664f262709473930a4bf9e51bf2ebf3348f2e748ccc50dea20646858f8f29
  - name: regex
    version: 1.8.1
    sha: af83e617f331cc6ae2da5443c602dfa5af81e517212d9d611a5b3ba1777b5370
  - name: regex-automata
    version: 0.1.10
    sha: 6c230d73fb8d8c1b9c0b3135c5142a8acee3a0558fb8db5cf1cb65f8d7862132
  - name: regex-syntax
    version: 0.6.29
    sha: f162c6dd7b008981e4d40210aca20b4bd0f9b60ca9271061b07f78537722f2e1
  - name: regex-syntax
    version: 0.7.1
    sha: a5996294f19bd3aae0453a862ad728f60e6600695733dd5df01da90c54363a3c
  - name: rgb
    version: 0.8.36
    sha: 20ec2d3e3fc7a92ced357df9cebd5a10b6fb2aa1ee797bf7e9ce2f17dffc8f59
  - name: rustc_version
    version: 0.4.0
    sha: bfa0f585226d2e68097d4f95d113b15b83a82e819ab25717ec0590d9584ef366
  - name: rustix
    version: 0.37.19
    sha: acf8729d8542766f1b2cf77eb034d52f40d375bb8b615d0b147089946e16613d
  - name: rusty-fork
    version: 0.3.0
    sha: cb3dcc6e454c328bb824492db107ab7c0ae8fcffe4ad210136ef014458c1bc4f
  - name: ryu
    version: 1.0.13
    sha: f91339c0467de62360649f8d3e185ca8de4224ff281f66000de5eb2a77a79041
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
    version: 1.0.5
    sha: 1792db035ce95be60c3f8853017b3999209281c24e2ba5bc8e59bf97a0c590c1
  - name: selectors
    version: 0.24.0
    sha: 0c37578180969d00692904465fb7f6b3d50b9a2b952b87c23d0e2e5cb5013416
  - name: semver
    version: 1.0.17
    sha: bebd363326d05ec3e2f532ab7660680f3b02130d780c299bca73469d521bc0ed
  - name: serde
    version: 1.0.162
    sha: 71b2f6e1ab5c2b98c05f0f35b236b22e8df7ead6ffbf51d7808da7f8817e7ab6
  - name: serde_derive
    version: 1.0.162
    sha: a2a0814352fd64b58489904a44ea8d90cb1a91dcb6b4f5ebabc32c8318e93cb6
  - name: serde_json
    version: 1.0.96
    sha: 057d394a50403bcac12672b2b18fb387ab6d289d957dab67dd201875391e52f1
  - name: serde_spanned
    version: 0.6.1
    sha: 0efd8caf556a6cebd3b285caf480045fcc1ac04f6bd786b09a6f11af30c4fcf4
  - name: servo_arc
    version: 0.2.0
    sha: d52aa42f8fdf0fed91e5ce7f23d8138441002fa31dca008acf47e6fd4721f741
  - name: simba
    version: 0.8.1
    sha: 061507c94fc6ab4ba1c9a0305018408e312e17c041eb63bef8aa726fa33aceae
  - name: simd-adler32
    version: 0.3.5
    sha: 238abfbb77c1915110ad968465608b68e869e0772622c9656714e73e5a1a522f
  - name: siphasher
    version: 0.3.10
    sha: 7bd3e3206899af3f8b12af284fafc038cc1dc2b41d1b89dd17297221c5d225de
  - name: slab
    version: 0.4.8
    sha: 6528351c9bc8ab22353f9d776db39a20288e8d6c37ef8cfe3317cf875eecfc2d
  - name: smallvec
    version: 1.10.0
    sha: a507befe795404456341dfab10cef66ead4c041f62b8b11bbb92bffe5d0953e0
  - name: stable_deref_trait
    version: 1.2.0
    sha: a8f112729512f8e442d81f95a8a7ddf2b7c6b8a1a6f509a95864142b30cab2d3
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
    version: 2.0.15
    sha: a34fcf3e8b60f57e6a14301a2e916d323af98b0ea63c599441eec8558660c822
  - name: system-deps
    version: 6.1.0
    sha: e5fa6fb9ee296c0dc2df41a656ca7948546d061958115ddb0bcaae43ad0d17d2
  - name: target-lexicon
    version: 0.12.7
    sha: fd1ba337640d60c3e96bc6f0638a939b9c9a7f2c316a1598c279828b3d1dc8c5
  - name: tempfile
    version: 3.5.0
    sha: b9fbec84f381d5795b08656e4912bec604d162bff9291d6189a78f4c8ab87998
  - name: tendril
    version: 0.4.3
    sha: d24a120c5fc464a3458240ee02c299ebcb9d67b5249c8848b09d639dca8d7bb0
  - name: termcolor
    version: 1.2.0
    sha: be55cf8942feac5c765c2c993422806843c9a9a45d4d5c407ad6dd2ea95eb9b6
  - name: termtree
    version: 0.4.1
    sha: 3369f5ac52d5eb6ab48c6b4ffdc8efbcad6b89c765749064ba298f2c68a16a76
  - name: textwrap
    version: 0.16.0
    sha: 222a222a5bfe1bba4a77b45ec488a741b3cb8872e5e499451fd7d0129c9c7c3d
  - name: thiserror
    version: 1.0.40
    sha: 978c9a314bd8dc99be594bc3c175faaa9794be04a5a5e153caba6915336cebac
  - name: thiserror-impl
    version: 1.0.40
    sha: f9456a42c5b0d803c8cd86e73dd7cc9edd429499f37a3550d286d5e86720569f
  - name: time
    version: 0.3.21
    sha: 8f3403384eaacbca9923fa06940178ac13e4edb725486d70e8e15881d0c836cc
  - name: time-core
    version: 0.1.1
    sha: 7300fbefb4dadc1af235a9cef3737cea692a9d97e1b9cbcd4ebdae6f8868e6fb
  - name: time-macros
    version: 0.2.9
    sha: 372950940a5f07bf38dbe211d7283c9e6d7327df53794992d293e534c733d09b
  - name: tinytemplate
    version: 1.2.1
    sha: be4d6b5f19ff7664e8c98d03e2139cb510db9b0a60b55f8e8709b689d939b6bc
  - name: tinyvec
    version: 1.6.0
    sha: 87cc5ceb3875bb20c2890005a4e226a4651264a5c75edb2421b52861a0a0cb50
  - name: tinyvec_macros
    version: 0.1.1
    sha: 1f3ccbac311fea05f86f61904b462b55fb3df8837a366dfc601a0161d0532f20
  - name: toml
    version: 0.7.3
    sha: b403acf6f2bb0859c93c7f0d967cb4a75a7ac552100f9322faf64dc047669b21
  - name: toml_datetime
    version: 0.6.1
    sha: 3ab8ed2edee10b50132aed5f331333428b011c99402b5a534154ed15746f9622
  - name: toml_edit
    version: 0.19.8
    sha: 239410c8609e8125456927e6707163a3b1fdb40561e4b803bc041f466ccfdc13
  - name: typenum
    version: 1.16.0
    sha: 497961ef93d974e23eb6f433eb5fe1b7930b659f06d12dec6fc44a8f554c0bba
  - name: unarray
    version: 0.1.4
    sha: eaea85b334db583fe3274d12b4cd1880032beab409c0d774be044d4480ab9a94
  - name: unicode-bidi
    version: 0.3.13
    sha: 92888ba5573ff080736b3648696b70cafad7d250551175acbaa4e0385b3e1460
  - name: unicode-ident
    version: 1.0.8
    sha: e5464a87b239f13a63a501f2701565754bae92d243d4bb7eb12f6d57d2269bf4
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
  - name: utf8parse
    version: 0.2.1
    sha: 711b9620af191e0cdc7468a8d14e709c3dcdb115b36f838e601583af800a370a
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
    version: 2.3.3
    sha: 36df944cda56c7d8d8b7496af378e6b16de9284591917d307c9b4d313c44e698
  - name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
  - name: wasi
    version: 0.9.0+wasi-snapshot-preview1
    sha: cccddf32554fecc6acb585f82a32a72e28b48f8c4c1883ddfeeeaa96f7d8e519
  - name: wasm-bindgen
    version: 0.2.84
    sha: 31f8dcbc21f30d9b8f2ea926ecb58f6b91192c17e9d33594b3df58b2007ca53b
  - name: wasm-bindgen-backend
    version: 0.2.84
    sha: 95ce90fd5bcc06af55a641a86428ee4229e44e07033963a2290a8e241607ccb9
  - name: wasm-bindgen-macro
    version: 0.2.84
    sha: 4c21f77c0bedc37fd5dc21f897894a5ca01e7bb159884559461862ae90c0b4c5
  - name: wasm-bindgen-macro-support
    version: 0.2.84
    sha: 2aff81306fcac3c7515ad4e177f521b5c9a15f2b08f4e32d823066102f35a5f6
  - name: wasm-bindgen-shared
    version: 0.2.84
    sha: 0046fef7e28c3804e5e38bfa31ea2a0f73905319b677e57ebe37e49358989b5d
  - name: web-sys
    version: 0.3.61
    sha: e33b99f4b23ba3eec1a53ac264e35a755f00e966e0065077d6027c0f575b0b97
  - name: weezl
    version: 0.1.7
    sha: 9193164d4de03a926d909d3bc7c30543cecb35400c02114792c2cae20d5e2dbb
  - name: wide
    version: 0.7.8
    sha: b689b6c49d6549434bf944e6b0f39238cf63693cb7a147e9d887507fffa3b223
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
  - name: windows
    version: 0.48.0
    sha: e686886bc078bc1b0b600cac0147aadb815089b6e4da64016cbd754b6342700f
  - name: windows-sys
    version: 0.45.0
    sha: 75283be5efb2831d37ea142365f009c02ec203cd29a3ebecbc093d52315b66d0
  - name: windows-sys
    version: 0.48.0
    sha: 677d2418bec65e3338edb076e806bc1ec15693c5d0104683f2efe857f61056a9
  - name: windows-targets
    version: 0.42.2
    sha: 8e5180c00cd44c9b1c88adb3693291f1cd93605ded80c250a75d472756b4d071
  - name: windows-targets
    version: 0.48.0
    sha: 7b1eb6f0cd7c80c79759c929114ef071b87354ce476d9d94271031c0497adfd5
  - name: windows_aarch64_gnullvm
    version: 0.42.2
    sha: 597a5118570b68bc08d8d59125332c54f1ba9d9adeedeef5b99b02ba2b0698f8
  - name: windows_aarch64_gnullvm
    version: 0.48.0
    sha: 91ae572e1b79dba883e0d315474df7305d12f569b400fcf90581b06062f7e1bc
  - name: windows_aarch64_msvc
    version: 0.42.2
    sha: e08e8864a60f06ef0d0ff4ba04124db8b0fb3be5776a5cd47641e942e58c4d43
  - name: windows_aarch64_msvc
    version: 0.48.0
    sha: b2ef27e0d7bdfcfc7b868b317c1d32c641a6fe4629c171b8928c7b08d98d7cf3
  - name: windows_i686_gnu
    version: 0.42.2
    sha: c61d927d8da41da96a81f029489353e68739737d3beca43145c8afec9a31a84f
  - name: windows_i686_gnu
    version: 0.48.0
    sha: 622a1962a7db830d6fd0a69683c80a18fda201879f0f447f065a3b7467daa241
  - name: windows_i686_msvc
    version: 0.42.2
    sha: 44d840b6ec649f480a41c8d80f9c65108b92d89345dd94027bfe06ac444d1060
  - name: windows_i686_msvc
    version: 0.48.0
    sha: 4542c6e364ce21bf45d69fdd2a8e455fa38d316158cfd43b3ac1c5b1b19f8e00
  - name: windows_x86_64_gnu
    version: 0.42.2
    sha: 8de912b8b8feb55c064867cf047dda097f92d51efad5b491dfb98f6bbb70cb36
  - name: windows_x86_64_gnu
    version: 0.48.0
    sha: ca2b8a661f7628cbd23440e50b05d705db3686f894fc9580820623656af974b1
  - name: windows_x86_64_gnullvm
    version: 0.42.2
    sha: 26d41b46a36d453748aedef1486d5c7a85db22e56aff34643984ea85514e94a3
  - name: windows_x86_64_gnullvm
    version: 0.48.0
    sha: 7896dbc1f41e08872e9d5e8f8baa8fdd2677f29468c4e156210174edc7f7b953
  - name: windows_x86_64_msvc
    version: 0.42.2
    sha: 9aec5da331524158c6d1a4ac0ab1541149c0b9505fde06423b02f5ef0106b9f0
  - name: windows_x86_64_msvc
    version: 0.48.0
    sha: 1a515f5799fe4961cb532f983ce2b23082366b898e52ffbce459c86f67c8378a
  - name: winnow
    version: 0.4.6
    sha: 61de7bac303dc551fe038e2b3cef0f571087a47571ea6e79a87692ac99b99699
  - name: xml5ever
    version: 0.17.0
    sha: 4034e1d05af98b51ad7214527730626f019682d797ba38b51689212118d8e650
  - name: yeslogic-fontconfig-sys
    version: 4.0.1
    sha: ec657fd32bbcbeaef5c7bc8e10b3db95b143fab8db0a50079773dbf936fd4f73
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk-deps/vala.bst
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
