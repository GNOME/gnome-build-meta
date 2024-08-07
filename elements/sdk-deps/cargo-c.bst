kind: manual

build-depends:
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:bootstrap-import.bst

sources:
- kind: tar
  url: crates:crates/cargo-c/cargo-c-0.9.30+cargo-0.77.0.crate
  ref: ec77e3635cdb0d211f88f22d0460eef0ba031eb616ded57f2ffb98a90365c445
- kind: cargo2
  ref:
  - name: adler
    version: 1.0.2
    sha: f26201604c87b1e01bd3d98f8d5d9a8fcbb815e8cedb41ffccbeb4bf593a35fe
  - name: ahash
    version: 0.8.7
    sha: 77c3a9648d43b9cd48db467b3f87fdd6e146bcc88ab0180006cef2179fe11d01
  - name: aho-corasick
    version: 1.1.2
    sha: b2969dcb958b36655471fc61f7e416fa76033bdd4bfed0678d8fee1e2d07a1f0
  - name: allocator-api2
    version: 0.2.16
    sha: 0942ffc6dcaadf03badf6e6a2d0228460359d5e34b57ccdc720b7382dfbd5ec5
  - name: anstream
    version: 0.6.11
    sha: 6e2e1ebcb11de5c03c67de28a7df593d32191b44939c482e97702baaaa6ab6a5
  - name: anstyle
    version: 1.0.6
    sha: 8901269c6307e8d93993578286ac0edf7f195079ffff5ebdeea6a59ffb7e36bc
  - name: anstyle-parse
    version: 0.2.3
    sha: c75ac65da39e5fe5ab759307499ddad880d724eed2f6ce5b5e8a26f4f387928c
  - name: anstyle-query
    version: 1.0.2
    sha: e28923312444cdd728e4738b3f9c9cac739500909bb3d3c94b43551b16517648
  - name: anstyle-wincon
    version: 3.0.2
    sha: 1cd54b81ec8d6180e24654d0b371ad22fc3dd083b6ff8ba325b72e00c87660a7
  - name: anyhow
    version: 1.0.79
    sha: 080e9890a082662b09c1ad45f567faeeb47f22b5fb23895fbe1e651e718e25ca
  - name: arc-swap
    version: 1.6.0
    sha: bddcadddf5e9015d310179a59bb28c4d4b9920ad0f11e8e14dbadf654890c9a6
  - name: autocfg
    version: 1.1.0
    sha: d468802bab17cbc0cc575e9b053f41e72aa36bfa6b7f55e3529ffa43161b97fa
  - name: base16ct
    version: 0.2.0
    sha: 4c7f02d4ea65f2c1853089ffd8d2787bdbc63de2f0d29dedbcf8ccdfa0ccd4cf
  - name: base64
    version: 0.21.7
    sha: 9d297deb1925b89f2ccc13d7635fa0714f12c87adce1c75356b39ca9b7178567
  - name: base64ct
    version: 1.6.0
    sha: 8c3c1a368f70d6cf7302d78f8f7093da241fb8e8807c05cc9e51a125895a6d5b
  - name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - name: bitflags
    version: 2.4.2
    sha: ed570934406eb16438a4e976b1b4500774099c13b8cb96eec99f620f05090ddf
  - name: bitmaps
    version: 2.1.0
    sha: 031043d04099746d8db04daf1fa424b2bc8bd69d92b25962dcde24da39ab64a2
  - name: block-buffer
    version: 0.10.4
    sha: 3078c7629b62d3f0439517fa394996acacc5cbc91c5a20d8c658e77abd503a71
  - name: bstr
    version: 1.9.0
    sha: c48f0051a4b4c5e0b6d365cd04af53aeaa209e3cc15ec2cdb69e73cc87fbd0dc
  - name: btoi
    version: 0.4.3
    sha: 9dd6407f73a9b8b6162d8a2ef999fe6afd7cc15902ebf42c5cd296addf17e0ad
  - name: bumpalo
    version: 3.14.0
    sha: 7f30e7476521f6f8af1a1c4c0b8cc94f0bee37d91763d0ca2665f299b6cd8aec
  - name: bytes
    version: 1.5.0
    sha: a2bd12c1caf447e69cd4528f47f94d203fd2582878ecb9e9465484c4148a8223
  - name: bytesize
    version: 1.3.0
    sha: a3e368af43e418a04d52505cf3dbc23dda4e3407ae2fa99fd0e4f308ce546acc
  - name: cargo
    version: 0.77.0
    sha: 4a399e5bde59d144aa2c7ba643765e2f8c6c3c601daa2da03202caf66f2552b3
  - name: cargo-credential
    version: 0.4.2
    sha: ec27ad011c37339b865c765fa28096cd63d5b25fab680c04d9e410cb586c327d
  - name: cargo-credential-libsecret
    version: 0.4.2
    sha: 26b0ff7a44dd0af0fcd8d09bb1a6d7f7652847cba10aad017a6ea0a25ba7f00f
  - name: cargo-credential-macos-keychain
    version: 0.4.2
    sha: 4b7cf89a47dc2c20ae3a7c94335e151be32c20f85cc2790defdb1f5dac818de5
  - name: cargo-credential-wincred
    version: 0.4.2
    sha: 341df45dc893bdffa36e2f7cbe3da90b38c5c74e7f4c0088ac801fd055b6df5b
  - name: cargo-platform
    version: 0.1.7
    sha: 694c8807f2ae16faecc43dc17d74b3eb042482789fd0eb64b39a2e04e087053f
  - name: cargo-util
    version: 0.2.9
    sha: 74862c3c6e53a1c1f8f0178f9d38ab41e49746cd3a7cafc239b3d0248fd4e342
  - name: cbindgen
    version: 0.26.0
    sha: da6bc11b07529f16944307272d5bd9b22530bc7d05751717c9d416586cedab49
  - name: cc
    version: 1.0.83
    sha: f1174fb0b6ec23863f8b971027804a42614e347eafb0a95bf0b12cdae21fc4d0
  - name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - name: clap
    version: 4.5.0
    sha: 80c21025abd42669a92efc996ef13cfb2c5c627858421ea58d5c3b331a6c134f
  - name: clap_builder
    version: 4.5.0
    sha: 458bf1f341769dfcf849846f65dffdf9146daa56bcd2a47cb4e1de9915567c99
  - name: clap_derive
    version: 4.5.0
    sha: 307bc0538d5f0f83b8248db3087aa92fe504e4691294d0c96c0eabc33f47ba47
  - name: clap_lex
    version: 0.7.0
    sha: 98cc8fbded0c607b7ba9dd60cd98df59af97e84d24e49c8557331cfc26d301ce
  - name: clru
    version: 0.6.1
    sha: b8191fa7302e03607ff0e237d4246cc043ff5b3cb9409d995172ba3bea16b807
  - name: color-print
    version: 0.3.5
    sha: 7a858372ff14bab9b1b30ea504f2a4bc534582aee3e42ba2d41d2a7baba63d5d
  - name: color-print-proc-macro
    version: 0.3.5
    sha: 57e37866456a721d0a404439a1adae37a31be4e0055590d053dfe6981e05003f
  - name: colorchoice
    version: 1.0.0
    sha: acbf1af155f9b9ef647e42cdc158db4b64a1b61f743629225fde6f3e0be2a7c7
  - name: const-oid
    version: 0.9.6
    sha: c2459377285ad874054d797f3ccebf984978aa39129f6eafde5cdc8315b612f8
  - name: core-foundation
    version: 0.9.4
    sha: 91e195e091a93c46f7102ec7818a2aa394e1e1771c3ab4825963fa03e45afb8f
  - name: core-foundation-sys
    version: 0.8.6
    sha: 06ea2b9bc92be3c2baa9334a323ebca2d6f074ff852cd1d7b11064035cd3868f
  - name: cpufeatures
    version: 0.2.12
    sha: 53fe5e26ff1b7aef8bca9c6080520cfb8d9333c7568e1829cef191a9723e5504
  - name: crates-io
    version: 0.39.2
    sha: 6622f902c3c338eced1f000091f034846ae36aadaf35d0acd1ab0469a2d8ef1f
  - name: crc32fast
    version: 1.3.2
    sha: b540bd8bc810d3885c6ea91e2018302f68baba2129ab3e88f32389ee9370880d
  - name: crossbeam-channel
    version: 0.5.11
    sha: 176dc175b78f56c0f321911d9c8eb2b77a78a4860b9c19db83835fea1a46649b
  - name: crossbeam-deque
    version: 0.8.5
    sha: 613f8cc01fe9cf1a3eb3d7f488fd2fa8388403e97039e2f73692932e291a770d
  - name: crossbeam-epoch
    version: 0.9.18
    sha: 5b82ac4a3c2ca9c3460964f020e1402edd5753411d7737aa39c3714ad1b5420e
  - name: crossbeam-utils
    version: 0.8.19
    sha: 248e3bacc7dc6baa3b21e405ee045c3047101a49145e7e9eca583ab4c2ca5345
  - name: crypto-bigint
    version: 0.5.5
    sha: 0dc92fb57ca44df6db8059111ab3af99a63d5d0f8375d9972e319a379c6bab76
  - name: crypto-common
    version: 0.1.6
    sha: 1bfb12502f3fc46cca1bb51ac28df9d618d813cdc3d2f25b9fe775a34af26bb3
  - name: ct-codecs
    version: 1.1.1
    sha: f3b7eb4404b8195a9abb6356f4ac07d8ba267045c8d6d220ac4dc992e6cc75df
  - name: curl
    version: 0.4.45
    sha: f8e5123ab8c31200ce725939049ecd4a090b242608f24048131dedf9dd195aed
  - name: curl-sys
    version: 0.4.72+curl-8.6.0
    sha: 29cbdc8314c447d11e8fd156dcdd031d9e02a7a976163e396b548c03153bc9ea
  - name: der
    version: 0.7.8
    sha: fffa369a668c8af7dbf8b5e56c9f744fbd399949ed171606040001947de40b1c
  - name: deranged
    version: 0.3.11
    sha: b42b6fa04a440b495c8b04d0e71b707c585f83cb9cb28cf8cd0d976c315e31b4
  - name: digest
    version: 0.10.7
    sha: 9ed9a281f7bc9b7576e61468ba615a66a5c8cfdff42420a70aa82701a3b1e292
  - name: dunce
    version: 1.0.4
    sha: 56ce8c6da7551ec6c462cbaf3bfbc75131ebbfa1c944aeaa9dab51ca1c5f0c3b
  - name: ecdsa
    version: 0.16.9
    sha: ee27f32b5c5292967d2d4a9d7f1e0b0aed2c15daded5a60300e4abb9d8020bca
  - name: ed25519-compact
    version: 2.1.1
    sha: e9b3460f44bea8cd47f45a0c70892f1eff856d97cd55358b2f73f663789f6190
  - name: either
    version: 1.9.0
    sha: a26ae43d7bcc3b814de94796a5e736d4029efb0ee900c12e2d54c993ad1a1e07
  - name: elliptic-curve
    version: 0.13.8
    sha: b5e6043086bf7973472e0c7dff2142ea0b680d30e18d9cc40f267efbf222bd47
  - name: encoding_rs
    version: 0.8.33
    sha: 7268b386296a025e474d5140678f75d6de9493ae55a5d709eeb9dd08149945e1
  - name: equivalent
    version: 1.0.1
    sha: 5443807d6dff69373d433ab9ef5378ad8df50ca6298caf15de6e52e24aaf54d5
  - name: erased-serde
    version: 0.4.2
    sha: 55d05712b2d8d88102bc9868020c9e5c7a1f5527c452b9b97450a1d006140ba7
  - name: errno
    version: 0.3.8
    sha: a258e46cdc063eb8519c00b9fc845fc47bcfca4130e2f08e88665ceda8474245
  - name: fallible-iterator
    version: 0.3.0
    sha: 2acce4a10f12dc2fb14a218589d4f1f62ef011b2d0cc4b3cb1bba8e94da14649
  - name: fallible-streaming-iterator
    version: 0.1.9
    sha: 7360491ce676a36bf9bb3c56c1aa791658183a54d2744120f27285738d90465a
  - name: faster-hex
    version: 0.9.0
    sha: a2a2b11eda1d40935b26cf18f6833c526845ae8c41e58d09af6adeb6f0269183
  - name: fastrand
    version: 2.0.1
    sha: 25cbce373ec4653f1a01a31e8a5e5ec0c622dc27ff9c4e6606eefef5cbbed4a5
  - name: ff
    version: 0.13.0
    sha: ded41244b729663b1e574f1b4fb731469f69f79c17667b5d776b16cda0479449
  - name: fiat-crypto
    version: 0.2.6
    sha: 1676f435fc1dadde4d03e43f5d62b259e1ce5f40bd4ffb21db2b42ebe59c1382
  - name: filetime
    version: 0.2.23
    sha: 1ee447700ac8aa0b2f2bd7bc4462ad686ba06baa6727ac149a2d6277f0d240fd
  - name: flate2
    version: 1.0.28
    sha: 46303f565772937ffe1d394a4fac6f411c6013172fadde9dcdb1e147a086940e
  - name: foreign-types
    version: 0.3.2
    sha: f6f339eb8adc052cd2ca78910fda869aefa38d22d5cb648e6485e4d3fc06f3b1
  - name: foreign-types-shared
    version: 0.1.1
    sha: 00b0228411908ca8685dba7fc2cdd70ec9990a6e753e89b6ac91a84c40fbaf4b
  - name: form_urlencoded
    version: 1.2.1
    sha: e13624c2627564efccf4934284bdd98cbaa14e79b0b5a141218e507b3a823456
  - name: generic-array
    version: 0.14.7
    sha: 85649ca51fd72272d7821adaf274ad91c288277713d9c18820d8499a7ff69e9a
  - name: getrandom
    version: 0.2.12
    sha: 190092ea657667030ac6a35e305e62fc4dd69fd98ac98631e5d3a2b1575a12b5
  - name: git2
    version: 0.18.2
    sha: 1b3ba52851e73b46a4c3df1d89343741112003f0f6f13beb0dfac9e457c3fdcd
  - name: git2-curl
    version: 0.19.0
    sha: 78e26b61608c573ffd26fc79061a823aa5147449a1afe1f61679a21e2031f7c3
  - name: gix
    version: 0.56.0
    sha: 5b0dcdc9c60d66535897fa40a7ea2a635e72f99456b1d9ae86b7e170e80618cb
  - name: gix-actor
    version: 0.28.1
    sha: 2eadca029ef716b4378f7afb19f7ee101fde9e58ba1f1445971315ac866db417
  - name: gix-attributes
    version: 0.20.1
    sha: 0f395469d38c76ec47cd1a6c5a53fbc3f13f737b96eaf7535f4e6b367e643381
  - name: gix-bitmap
    version: 0.2.10
    sha: 78b6cd0f246180034ddafac9b00a112f19178135b21eb031b3f79355891f7325
  - name: gix-chunk
    version: 0.4.7
    sha: 003ec6deacf68076a0c157271a127e0bb2c031c1a41f7168cbe5d248d9b85c78
  - name: gix-command
    version: 0.3.4
    sha: c82b5e9494e61983e61049bbd15fe0fa6b70672dd236362bdb5b2b50fc428f10
  - name: gix-commitgraph
    version: 0.22.1
    sha: 85a7007ba021f059803afaf6f8a48872422abc20550ac12ede6ddea2936cec36
  - name: gix-config
    version: 0.32.1
    sha: 0341471d55d8676e98b88e121d7065dfa4c9c5acea4b6d6ecdd2846e85cce0c3
  - name: gix-config-value
    version: 0.14.4
    sha: 5b8a1e7bfb37a46ed0b8468db37a6d8a0a61d56bdbe4603ae492cb322e5f3958
  - name: gix-credentials
    version: 0.22.0
    sha: 513dac42450b27946bd0a0535a3a5a88e473d6522e5e3439a129cab779c88f3d
  - name: gix-date
    version: 0.8.3
    sha: fb7f3dfb72bebe3449b5e642be64e3c6ccbe9821c8b8f19f487cf5bfbbf4067e
  - name: gix-diff
    version: 0.38.0
    sha: 8119a985887cfe68f4bdf92e51bd64bc758a73882d82fcfc03ebcb164441c85d
  - name: gix-discover
    version: 0.27.0
    sha: 6fad89416ebe0b3b7df78464124e2a02417b6cd3743d48ad93df86f4d2929c07
  - name: gix-features
    version: 0.35.0
    sha: 9b9ff423ae4983f762659040d13dd7a5defbd54b6a04ac3cc7347741cec828cd
  - name: gix-features
    version: 0.36.1
    sha: 4d46a4a5c6bb5bebec9c0d18b65ada20e6517dbd7cf855b87dd4bbdce3a771b2
  - name: gix-filter
    version: 0.7.0
    sha: 6d6a5c9d8e55c364e7c226919c19c9a28be1392d6208b5008059fa94ff7e2bf0
  - name: gix-fs
    version: 0.8.1
    sha: 20e86eb040f5776a5ade092282e51cdcad398adb77d948b88d17583c2ae4e107
  - name: gix-glob
    version: 0.14.1
    sha: 5db19298c5eeea2961e5b3bf190767a2d1f09b8802aeb5f258e42276350aff19
  - name: gix-hash
    version: 0.13.3
    sha: 1f8cf8c2266f63e582b7eb206799b63aa5fa68ee510ad349f637dfe2d0653de0
  - name: gix-hashtable
    version: 0.4.1
    sha: feb61880816d7ec4f0b20606b498147d480860ddd9133ba542628df2f548d3ca
  - name: gix-ignore
    version: 0.9.1
    sha: a215cc8cf21645bca131fcf6329d3ebd46299c47dbbe27df71bb1ca9e328b879
  - name: gix-index
    version: 0.27.1
    sha: f3f308f5cd2992e96a274b0d1931e9a0e44fdcba87695ead3f6df30d8a697e9c
  - name: gix-lock
    version: 11.0.1
    sha: 7e5c65e6a29830a435664891ced3f3c1af010f14900226019590ee0971a22f37
  - name: gix-macros
    version: 0.1.3
    sha: d75e7ab728059f595f6ddc1ad8771b8d6a231971ae493d9d5948ecad366ee8bb
  - name: gix-negotiate
    version: 0.10.0
    sha: 979f6accd9c051b3dd018b50adf29c0a2459edddf6105cc70b767976cd6f8014
  - name: gix-object
    version: 0.39.0
    sha: febf79c5825720c1c63fe974c7bbe695d0cb54aabad73f45671c60ce0e501e33
  - name: gix-odb
    version: 0.55.0
    sha: 1fae5f971540c99c6ecc8d4368ecc9d18a9dc8b9391025c68c4399747dc93bac
  - name: gix-pack
    version: 0.45.0
    sha: 4569491c92446fddf373456ff360aff9a9effd627b40a70f2d7914dcd75a3205
  - name: gix-packetline
    version: 0.17.3
    sha: 09ff45eef7747bde4986429a3e813478d50c2688b8f239e57bd3aa81065b285f
  - name: gix-packetline-blocking
    version: 0.17.3
    sha: ca8ef6dd3ea50e26f3bf572e90c034d033c804d340cd1eb386392f184a9ba2f7
  - name: gix-path
    version: 0.10.5
    sha: 97e9ad649bf5e109562d6acba657ca428661ec08e77eaf3a755d8fa55485be9c
  - name: gix-pathspec
    version: 0.4.1
    sha: 1dbbb92f75a38ef043c8bb830b339b38d0698d7f3746968b5fcbade7a880494d
  - name: gix-prompt
    version: 0.8.2
    sha: 02bd89d058258e53e0fd6c57f13ee16c5673a83066a68e11f88626fc8cfda5f6
  - name: gix-protocol
    version: 0.42.0
    sha: 95736ef407db0bd15a5bdea791fbfcf523b9f13b96c852c240cd86a9ee0ef817
  - name: gix-quote
    version: 0.4.10
    sha: 9f7dc10303d73a960d10fb82f81188b036ac3e6b11b5795b20b1a60b51d1321f
  - name: gix-ref
    version: 0.39.1
    sha: 3b2069adc212cf7f3317ef55f6444abd06c50f28479dbbac5a86acf3b05cbbfe
  - name: gix-refspec
    version: 0.20.0
    sha: 76d9d3b82e1ee78fc0dc1c37ea5ea76c2dbc73f407db155f0dfcea285e583bee
  - name: gix-revision
    version: 0.24.0
    sha: fe5dd51710ce5434bc315ea30394fab483c5377276494edd79222b321a5a9544
  - name: gix-revwalk
    version: 0.10.0
    sha: 69d4ed2493ca94a475fdf147138e1ef8bab3b6ebb56abf3d9bda1c05372ec1dd
  - name: gix-sec
    version: 0.10.4
    sha: f8d9bf462feaf05f2121cba7399dbc6c34d88a9cad58fc1e95027791d6a3c6d2
  - name: gix-submodule
    version: 0.6.0
    sha: 02a3d7f60a95bdcaeb8981663c99d1c9f4de42aab1169524c949e948989809f9
  - name: gix-tempfile
    version: 11.0.1
    sha: 388dd29114a86ec69b28d1e26d6d63a662300ecf61ab3f4cc578f7d7dc9e7e23
  - name: gix-trace
    version: 0.1.7
    sha: 02b202d766a7fefc596e2cc6a89cda8ad8ad733aed82da635ac120691112a9b1
  - name: gix-transport
    version: 0.39.0
    sha: f731cfefc4d62468c6dd2053f5c6707828256a6d2f5488c1811e3f42c178b144
  - name: gix-traverse
    version: 0.35.0
    sha: df2112088122a0206592c84fbd42020db63b2ccaed66a0293779f2e5fbf80474
  - name: gix-url
    version: 0.25.2
    sha: 0c427a1a11ccfa53a4a2da47d9442c2241deee63a154bc15cc14b8312fbc4005
  - name: gix-utils
    version: 0.1.9
    sha: 56e839f3d0798b296411263da6bee780a176ef8008a5dfc31287f7eda9266ab8
  - name: gix-validate
    version: 0.8.3
    sha: ac7cc36f496bd5d96cdca0f9289bb684480725d40db60f48194aa7723b883854
  - name: gix-worktree
    version: 0.28.0
    sha: 7f1d0ae01dee14abe8c8117d78d7518f9a507de2dc4522546fbf4c444e9860b4
  - name: glob
    version: 0.3.1
    sha: d2fabcfbdc87f4758337ca535fb41a6d701b65693ce38287d856d1674551ec9b
  - name: globset
    version: 0.4.14
    sha: 57da3b9b5b85bd66f31093f8c408b90a74431672542466497dcbdfdc02034be1
  - name: group
    version: 0.13.0
    sha: f0f9ef7462f7c099f518d754361858f86d8a07af53ba9af0fe635bbccb151a63
  - name: hashbrown
    version: 0.12.3
    sha: 8a9ee70c43aaf417c914396645a0fa852624801b24ebb7ae78fe8272889ac888
  - name: hashbrown
    version: 0.14.3
    sha: 290f1a1d9242c78d09ce40a5e87e7554ee637af1351968159f4952f028f75604
  - name: hashlink
    version: 0.8.4
    sha: e8094feaf31ff591f651a2664fb9cfd92bba7a60ce3197265e9482ebe753c8f7
  - name: heck
    version: 0.4.1
    sha: 95505c38b4572b2d910cecb0281560f54b440a19336cbbcb27bf6ce6adc6f5a8
  - name: hermit-abi
    version: 0.3.5
    sha: d0c62115964e08cb8039170eb33c1d0e2388a256930279edca206fff675f82c3
  - name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - name: hkdf
    version: 0.12.4
    sha: 7b5f8eb2ad728638ea2c7d47a21db23b7b58a72ed6a38256b8a1849f15fbbdf7
  - name: hmac
    version: 0.12.1
    sha: 6c49c37c09c17a53d937dfbb742eb3a961d65a994e6bcdcf37e7399d0cc8ab5e
  - name: home
    version: 0.5.9
    sha: e3d1354bf6b7235cb4a0576c2619fd4ed18183f689b12b006a0ee7329eeff9a5
  - name: http-auth
    version: 0.1.9
    sha: 643c9bbf6a4ea8a656d6b4cd53d34f79e3f841ad5203c1a55fb7d761923bc255
  - name: humantime
    version: 2.1.0
    sha: 9a3a5bfb195931eeb336b2a7b4d761daec841b97f947d34394601737a7bba5e4
  - name: idna
    version: 0.5.0
    sha: 634d9b1461af396cad843f47fdba5597a4f9e6ddd4bfb6ff5d85028c25cb12f6
  - name: ignore
    version: 0.4.22
    sha: b46810df39e66e925525d6e38ce1e7f6e1d208f72dc39757880fcb66e2c58af1
  - name: im-rc
    version: 15.1.0
    sha: af1955a75fa080c677d3972822ec4bad316169ab1cfc6c257a942c2265dbe5fe
  - name: indexmap
    version: 1.9.3
    sha: bd070e393353796e801d209ad339e89596eb4c8d430d18ede6a1cced8fafbd99
  - name: indexmap
    version: 2.2.2
    sha: 824b2ae422412366ba479e8111fd301f7b5faece8149317bb81925979a53f520
  - name: is-terminal
    version: 0.4.11
    sha: fe8f25ce1159c7740ff0b9b2f5cdf4a8428742ba7c112b9f20f22cd5219c7dab
  - name: itertools
    version: 0.12.1
    sha: ba291022dbbd398a455acf126c1e341954079855bc60dfdda641363bd6922569
  - name: itoa
    version: 1.0.10
    sha: b1a46d1a171d865aa5f83f92695765caa047a9b4cbae2cbf37dbd613a793fd4c
  - name: jobserver
    version: 0.1.28
    sha: ab46a6e9526ddef3ae7f787c06f0f2600639ba80ea3eade3d8e670a2230f51d6
  - name: js-sys
    version: 0.3.68
    sha: 406cda4b368d531c842222cf9d2600a9a4acce8d29423695379c6868a143a9ee
  - name: kstring
    version: 2.0.0
    sha: ec3066350882a1cd6d950d055997f379ac37fd39f81cd4d8ed186032eb3c5747
  - name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - name: lazycell
    version: 1.3.0
    sha: 830d08ce1d1d941e6b30645f1a0eb5643013d835ce3779a5fc208261dbe10f55
  - name: libc
    version: 0.2.153
    sha: 9c198f91728a82281a64e1f4f9eeb25d82cb32a5de251c6bd1b5154d63a8e7bd
  - name: libgit2-sys
    version: 0.16.2+1.7.2
    sha: ee4126d8b4ee5c9d9ea891dd875cfdc1e9d0950437179104b183d7d8a74d24e8
  - name: libloading
    version: 0.8.1
    sha: c571b676ddfc9a8c12f1f3d3085a7b163966a8fd8098a90640953ce5f6170161
  - name: libnghttp2-sys
    version: 0.1.9+1.58.0
    sha: b57e858af2798e167e709b9d969325b6d8e9d50232fcbc494d7d54f976854a64
  - name: libsqlite3-sys
    version: 0.27.0
    sha: cf4e226dcd58b4be396f7bd3c20da8fdee2911400705297ba7d2d7cc2c30f716
  - name: libssh2-sys
    version: 0.3.0
    sha: 2dc8a030b787e2119a731f1951d6a773e2280c660f8ec4b0f5e1505a386e71ee
  - name: libz-sys
    version: 1.1.15
    sha: 037731f5d3aaa87a5675e895b63ddff1a87624bc29f77004ea829809654e48f6
  - name: linux-raw-sys
    version: 0.4.13
    sha: 01cda141df6706de531b6c46c3a33ecca755538219bd484262fa09410c13539c
  - name: lock_api
    version: 0.4.11
    sha: 3c168f8615b12bc01f9c17e2eb0cc07dcae1940121185446edc3744920e8ef45
  - name: log
    version: 0.4.20
    sha: b5e6163cb8c49088c2c36f57875e58ccd8c87c7427f7fbd50ea6710b2f3f2e8f
  - name: matchers
    version: 0.1.0
    sha: 8263075bb86c5a1b1427b5ae862e8889656f126e9f77c484496e8b47cf5c5558
  - name: maybe-async
    version: 0.2.9
    sha: afc95a651c82daf7004c824405aa1019723644950d488571bd718e3ed84646ed
  - name: memchr
    version: 2.7.1
    sha: 523dc4f511e55ab87b694dc30d0f820d60906ef06413f93d4d7a1385599cc149
  - name: memmap2
    version: 0.9.4
    sha: fe751422e4a8caa417e13c3ea66452215d7d63e19e604f4980461212f3ae1322
  - name: minimal-lexical
    version: 0.2.1
    sha: 68354c5c6bd36d73ff3feceb05efa59b6acb7626617f4962be322a825e61f79a
  - name: miniz_oxide
    version: 0.7.2
    sha: 9d811f3e15f28568be3407c8e7fdb6514c1cda3cb30683f15b6a1a1dc4ea14a7
  - name: miow
    version: 0.6.0
    sha: 359f76430b20a79f9e20e115b3428614e654f04fab314482fc0fda0ebd3c6044
  - name: nom
    version: 7.1.3
    sha: d273983c5a657a70a3e8f2a01329822f3b8c8172b73826411a55751e404a0a4a
  - name: normpath
    version: 1.1.1
    sha: ec60c60a693226186f5d6edf073232bfb6464ed97eb22cf3b01c1e8198fd97f5
  - name: nu-ansi-term
    version: 0.46.0
    sha: 77a8165726e8236064dbb45459242600304b42a5ea24ee2948e18e023bf7ba84
  - name: num-conv
    version: 0.1.0
    sha: 51d515d32fb182ee37cda2ccdcb92950d6a3c2893aa280e540671c2cd0f3b1d9
  - name: num-traits
    version: 0.2.18
    sha: da0df0e5185db44f69b44f26786fe401b6c293d1907744beaa7fa62b2e5a517a
  - name: num_threads
    version: 0.1.6
    sha: 2819ce041d2ee131036f4fc9d6ae7ae125a3a40e97ba64d04fe799ad9dabbb44
  - name: once_cell
    version: 1.19.0
    sha: 3fdb12b2476b595f9358c5161aa467c2438859caa136dec86c26fdd2efe17b92
  - name: opener
    version: 0.6.1
    sha: 6c62dcb6174f9cb326eac248f07e955d5d559c272730b6c03e396b443b562788
  - name: openssl
    version: 0.10.63
    sha: 15c9d69dd87a29568d4d017cfe8ec518706046a05184e5aea92d0af890b803c8
  - name: openssl-macros
    version: 0.1.1
    sha: a948666b637a0f465e8564c73e89d4dde00d72d4d473cc972f390fc3dcee7d9c
  - name: openssl-probe
    version: 0.1.5
    sha: ff011a302c396a5197692431fc1948019154afc178baf7d8e37367442a4601cf
  - name: openssl-src
    version: 300.2.2+3.2.1
    sha: 8bbfad0063610ac26ee79f7484739e2b07555a75c42453b89263830b5c8103bc
  - name: openssl-sys
    version: 0.9.99
    sha: 22e1bf214306098e4832460f797824c05d25aacdf896f64a985fb0fd992454ae
  - name: ordered-float
    version: 2.10.1
    sha: 68f19d67e5a2795c94e73e0bb1cc1a7edeb2e28efd39e2e1c9b7a40c1108b11c
  - name: orion
    version: 0.17.6
    sha: 7abdb10181903c8c4b016ba45d6d6d5af1a1e2a461aa4763a83b87f5df4695e5
  - name: os_info
    version: 3.7.0
    sha: 006e42d5b888366f1880eda20371fedde764ed2213dc8496f49622fa0c99cd5e
  - name: overload
    version: 0.1.1
    sha: b15813163c1d831bf4a13c3610c05c0d03b39feb07f7e09fa234dac9b15aaf39
  - name: p384
    version: 0.13.0
    sha: 70786f51bcc69f6a4c0360e063a4cac5419ef7c5cd5b3c99ad70f3be5ba79209
  - name: parking_lot
    version: 0.12.1
    sha: 3742b2c103b9f06bc9fff0a37ff4912935851bee6d36f3c02bcc755bcfec228f
  - name: parking_lot_core
    version: 0.9.9
    sha: 4c42a9226546d68acdd9c0a280d17ce19bfe27a46bf68784e4066115788d008e
  - name: pasetors
    version: 0.6.8
    sha: 6b36d47c66f2230dd1b7143d9afb2b4891879020210eddf2ccb624e529b96dba
  - name: pathdiff
    version: 0.2.1
    sha: 8835116a5c179084a830efb3adc117ab007512b535bc1a21c991d3b32a6b44dd
  - name: pem-rfc7468
    version: 0.7.0
    sha: 88b39c9bfcfc231068454382784bb460aae594343fb030d46e9f50a645418412
  - name: percent-encoding
    version: 2.3.1
    sha: e3148f5046208a5d56bcfc03053e3ca6334e51da8dfb19b6cdc8b306fae3283e
  - name: pin-project-lite
    version: 0.2.13
    sha: 8afb450f006bf6385ca15ef45d71d2288452bc3683ce2e2cacc0d18e4be60b58
  - name: pkcs8
    version: 0.10.2
    sha: f950b2377845cebe5cf8b5165cb3cc1a5e0fa5cfa3e1f7f55707d8fd82e0a7b7
  - name: pkg-config
    version: 0.3.29
    sha: 2900ede94e305130c13ddd391e0ab7cbaeb783945ae07a279c268cb05109c6cb
  - name: powerfmt
    version: 0.2.0
    sha: 439ee305def115ba05938db6eb1644ff94165c5ab5e9420d1c1bcedbba909391
  - name: ppv-lite86
    version: 0.2.17
    sha: 5b40af805b3121feab8a3c29f04d8ad262fa8e0561883e7653e024ae4479e6de
  - name: primeorder
    version: 0.13.6
    sha: 353e1ca18966c16d9deb1c69278edbc5f194139612772bd9537af60ac231e1e6
  - name: proc-macro2
    version: 1.0.78
    sha: e2422ad645d89c99f8f3e6b88a9fdeca7fabeac836b1002371c4367c8f984aae
  - name: prodash
    version: 26.2.2
    sha: 794b5bf8e2d19b53dcdcec3e4bba628e20f5b6062503ba89281fa7037dd7bbcf
  - name: pulldown-cmark
    version: 0.9.6
    sha: 57206b407293d2bcd3af849ce869d52068623f19e1b5ff8e8778e3309439682b
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
  - name: rand_xoshiro
    version: 0.6.0
    sha: 6f97cdb2a36ed4183de61b2f824cc45c9f1037f28afe0a322e9fff4c108b5aaa
  - name: redox_syscall
    version: 0.4.1
    sha: 4722d768eff46b75989dd134e5c353f0d6296e5aaa3132e776cbdb56be7731aa
  - name: regex
    version: 1.10.3
    sha: b62dbe01f0b06f9d8dc7d49e05a0785f153b00b2c227856282f671e0318c9b15
  - name: regex-automata
    version: 0.1.10
    sha: 6c230d73fb8d8c1b9c0b3135c5142a8acee3a0558fb8db5cf1cb65f8d7862132
  - name: regex-automata
    version: 0.4.5
    sha: 5bb987efffd3c6d0d8f5f89510bb458559eab11e4f869acb20bf845e016259cd
  - name: regex-syntax
    version: 0.6.29
    sha: f162c6dd7b008981e4d40210aca20b4bd0f9b60ca9271061b07f78537722f2e1
  - name: regex-syntax
    version: 0.8.2
    sha: c08c74e62047bb2de4ff487b251e4a92e24f48745648451635cec7d591162d9f
  - name: rfc6979
    version: 0.4.0
    sha: f8dd2a808d456c4a54e300a23e9f5a67e122c3024119acbfd73e3bf664491cb2
  - name: rusqlite
    version: 0.30.0
    sha: a78046161564f5e7cd9008aff3b2990b3850dc8e0349119b98e8f251e099f24d
  - name: rustfix
    version: 0.7.0
    sha: 7ec10cbeb92a2e494ef354d66126882da8c0a244ad769e2a7193efc5de625175
  - name: rustix
    version: 0.38.31
    sha: 6ea3e1a662af26cd7a3ba09c0297a31af215563ecf42817c98df621387f4e949
  - name: ryu
    version: 1.0.16
    sha: f98d2aa92eebf49b69786be48e4477826b256916e84a57ff2a4f21923b48eb4c
  - name: same-file
    version: 1.0.6
    sha: 93fc1dc3aaa9bfed95e02e6eadabb4baf7e3078b0bd1b4d7b6b0b68378900502
  - name: schannel
    version: 0.1.23
    sha: fbc91545643bcf3a0bbb6569265615222618bdf33ce4ffbbd13c4bbd4c093534
  - name: scopeguard
    version: 1.2.0
    sha: 94143f37725109f92c262ed2cf5e59bce7498c01bcc1502d7b9afe439a4e9f49
  - name: sec1
    version: 0.7.3
    sha: d3e97a565f76233a6003f9f5c54be1d9c5bdfa3eccfb189469f11ec4901c47dc
  - name: security-framework
    version: 2.9.2
    sha: 05b64fb303737d99b81884b2c63433e9ae28abebe5eb5045dcdd175dc2ecf4de
  - name: security-framework-sys
    version: 2.9.1
    sha: e932934257d3b408ed8f30db49d85ea163bfe74961f017f405b025af298f0c7a
  - name: semver
    version: 1.0.21
    sha: b97ed7a9823b74f99c7742f5336af7be5ecd3eeafcb1507d1fa93347b1d589b0
  - name: serde
    version: 1.0.196
    sha: 870026e60fa08c69f064aa766c10f10b1d62db9ccd4d0abb206472bee0ce3b32
  - name: serde-untagged
    version: 0.1.5
    sha: 6a160535368dfc353348e7eaa299156bd508c60c45a9249725f5f6d370d82a66
  - name: serde-value
    version: 0.7.0
    sha: f3a1a3341211875ef120e117ea7fd5228530ae7e7036a779fdc9117be6b3282c
  - name: serde_derive
    version: 1.0.196
    sha: 33c85360c95e7d137454dc81d9a4ed2b8efd8fbe19cee57357b32b9771fccb67
  - name: serde_ignored
    version: 0.1.10
    sha: a8e319a36d1b52126a0d608f24e93b2d81297091818cd70625fcf50a15d84ddf
  - name: serde_json
    version: 1.0.113
    sha: 69801b70b1c3dac963ecb03a364ba0ceda9cf60c71cfe475e99864759c8b8a79
  - name: serde_spanned
    version: 0.6.5
    sha: eb3622f419d1296904700073ea6cc23ad690adbd66f13ea683df73298736f0c1
  - name: sha1
    version: 0.10.6
    sha: e3bf829a2d51ab4a5ddf1352d8470c140cadc8301b2ae1789db023f01cedd6ba
  - name: sha1_smol
    version: 1.0.0
    sha: ae1a47186c03a32177042e55dbc5fd5aee900b8e0069a8d70fba96a9375cd012
  - name: sha2
    version: 0.10.8
    sha: 793db75ad2bcafc3ffa7c68b215fee268f537982cd901d132f89c6343f3a3dc8
  - name: sharded-slab
    version: 0.1.7
    sha: f40ca3c46823713e0d4209592e8d6e826aa57e928f09752619fc696c499637f6
  - name: shell-escape
    version: 0.1.5
    sha: 45bb67a18fa91266cc7807181f62f9178a6873bfad7dc788c42e6430db40184f
  - name: shell-words
    version: 1.1.0
    sha: 24188a676b6ae68c3b2cb3a01be17fbf7240ce009799bb56d5b1409051e78fde
  - name: signature
    version: 2.2.0
    sha: 77549399552de45a898a580c1b41d445bf730df867cc44e6c0233bbc4b8329de
  - name: sized-chunks
    version: 0.6.5
    sha: 16d69225bde7a69b235da73377861095455d298f2b970996eec25ddbb42b3d1e
  - name: smallvec
    version: 1.13.1
    sha: e6ecd384b10a64542d77071bd64bd7b231f4ed5940fba55e98c3de13824cf3d7
  - name: socket2
    version: 0.5.5
    sha: 7b5fac59a5cb5dd637972e5fca70daf0523c9067fcdc4842f053dae04a18f8e9
  - name: spki
    version: 0.7.3
    sha: d91ed6c858b01f942cd56b37a94b3e0a1798290327d1236e4d9cf4eaca44d29d
  - name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - name: strsim
    version: 0.11.0
    sha: 5ee073c9e4cd00e28217186dbe12796d692868f432bf2e97ee73bed0c56dfa01
  - name: subtle
    version: 2.5.0
    sha: 81cdd64d312baedb58e21336b31bc043b77e01cc99033ce76ef539f78e965ebc
  - name: supports-hyperlinks
    version: 2.1.0
    sha: f84231692eb0d4d41e4cdd0cabfdd2e6cd9e255e65f80c9aa7c98dd502b4233d
  - name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - name: syn
    version: 2.0.48
    sha: 0f3531638e407dfc0814761abb7c00a5b54992b849452a0646b7f65c9f770f3f
  - name: tar
    version: 0.4.40
    sha: b16afcea1f22891c49a00c751c7b63b2233284064f11a200fc624137c51e2ddb
  - name: tempfile
    version: 3.10.0
    sha: a365e8cd18e44762ef95d87f284f4b5cd04107fec2ff3052bd6a3e6069669e67
  - name: terminal_size
    version: 0.3.0
    sha: 21bebf2b7c9e0a515f6e0f8c51dc0f8e4696391e6f1ff30379559f8365fb0df7
  - name: thiserror
    version: 1.0.56
    sha: d54378c645627613241d077a3a79db965db602882668f9136ac42af9ecb730ad
  - name: thiserror-impl
    version: 1.0.56
    sha: fa0faa943b50f3db30a20aa7e265dbc66076993efed8463e8de414e5d06d3471
  - name: thread_local
    version: 1.1.7
    sha: 3fdd6f064ccff2d6567adcb3873ca630700f00b5ad3f060c25b5dcfd9a4ce152
  - name: time
    version: 0.3.34
    sha: c8248b6521bb14bc45b4067159b9b6ad792e2d6d754d6c41fb50e29fefe38749
  - name: time-core
    version: 0.1.2
    sha: ef927ca75afb808a4d64dd374f00a2adf8d0fcff8e7b184af886c3c87ec4a3f3
  - name: time-macros
    version: 0.2.17
    sha: 7ba3a3ef41e6672a2f0f001392bb5dcd3ff0a9992d618ca761a11c3121547774
  - name: tinyvec
    version: 1.6.0
    sha: 87cc5ceb3875bb20c2890005a4e226a4651264a5c75edb2421b52861a0a0cb50
  - name: tinyvec_macros
    version: 0.1.1
    sha: 1f3ccbac311fea05f86f61904b462b55fb3df8837a366dfc601a0161d0532f20
  - name: toml
    version: 0.5.11
    sha: f4f7f0dd8d50a853a531c426359045b1998f04219d88799810762cd4ad314234
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
    version: 0.22.4
    sha: 0c9ffdf896f8daaabf9b66ba8e77ea1ed5ed0f72821b398aba62352e95062951
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
  - name: unicase
    version: 2.7.0
    sha: f7d2d4dafb69621809a81864c9c1b864479e1235c0dd4e199924b9742439ed89
  - name: unicode-bidi
    version: 0.3.15
    sha: 08f95100a766bf4f8f28f90d77e0a5461bbdb219042e7679bebe79004fed8d75
  - name: unicode-bom
    version: 2.0.3
    sha: 7eec5d1121208364f6793f7d2e222bf75a915c19557537745b195b253dd64217
  - name: unicode-ident
    version: 1.0.12
    sha: 3354b9ac3fae1ff6755cb6db53683adb661634f67557942dea4facebec0fee4b
  - name: unicode-normalization
    version: 0.1.22
    sha: 5c5713f0fc4b5db668a2ac63cdb7bb4469d8c9fed047b1d0292cc7b0ce2ba921
  - name: unicode-width
    version: 0.1.11
    sha: e51733f11c9c4f72aa0c160008246859e340b00807569a0da0e7a1079b27ba85
  - name: unicode-xid
    version: 0.2.4
    sha: f962df74c8c05a667b5ee8bcf162993134c104e96440b663c8daa176dc772d8c
  - name: url
    version: 2.5.0
    sha: 31e6302e3bb753d46e83516cae55ae196fc0c309407cf11ab35cc51a4c2a4633
  - name: utf8parse
    version: 0.2.1
    sha: 711b9620af191e0cdc7468a8d14e709c3dcdb115b36f838e601583af800a370a
  - name: valuable
    version: 0.1.0
    sha: 830b7e5d4d90034032940e4ace0d9a9a057e7a45cd94e6c007832e39edb82f6d
  - name: vcpkg
    version: 0.2.15
    sha: accd4ea62f7bb7a82fe23066fb0957d48ef677f6eeb8215f372f52e48bb32426
  - name: version_check
    version: 0.9.4
    sha: 49874b5167b65d7193b8aba1567f5c7d93d001cafc34600cee003eda787e483f
  - name: walkdir
    version: 2.4.0
    sha: d71d857dc86794ca4c280d616f7da00d2dbfd8cd788846559a6813e6aa4b54ee
  - name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
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
    version: 0.5.39
    sha: 5389a154b01683d28c77f8f68f49dea75f0a4da32557a58f68ee51ebba472d29
  - name: zerocopy
    version: 0.7.32
    sha: 74d4d3961e53fa4c9a25a8637fc2bfaf2595b3d3ae34875568a5cf64787716be
  - name: zerocopy-derive
    version: 0.7.32
    sha: 9ce1b18ccd8e73a9321186f97e46f9f04b778851177567b1975109d26a08d2a6
  - name: zeroize
    version: 1.7.0
    sha: 525b4ec142c6b68a2d10f01f7bbf6755599ca3f81ea53b8431b7dd348f5fdb2d
config:
  install-commands:
  - cargo install --path . --root "%{install-root}%{prefix}"
  - rm "%{install-root}%{prefix}"/.crates*
