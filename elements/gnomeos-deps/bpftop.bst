kind: cargo

sources:
- kind: git_repo
  url: github:Netflix/bpftop.git
  track: 'v*'
  ref: v0.9.0-0-g35de7182f1603c9e45d4b7d21bd79fc0da89a195
- kind: cargo2
  ref:
  - kind: registry
    name: aho-corasick
    version: 1.1.3
    sha: 8e60d3430d3a69478ad0993f19238d2df97c507009a52b3c10addcd7f6bcb916
  - kind: registry
    name: allocator-api2
    version: 0.2.18
    sha: 5c6cb57a04249c6480766f7f7cef5467412af1490f8d1e243141daddada3264f
  - kind: registry
    name: anstream
    version: 0.6.14
    sha: 418c75fa768af9c03be99d17643f93f79bbba589895012a80e3452a19ddda15b
  - kind: registry
    name: anstyle
    version: 1.0.10
    sha: 55cc3b69f167a1ef2e161439aa98aed94e6028e5f9a59be9a6ffb47aef1651f9
  - kind: registry
    name: anstyle-parse
    version: 0.2.4
    sha: c03a11a9034d92058ceb6ee011ce58af4a9bf61491aa7e1e59ecd24bd40d22d4
  - kind: registry
    name: anstyle-query
    version: 1.0.3
    sha: a64c907d4e79225ac72e2a354c9ce84d50ebb4586dee56c82b3ee73004f537f5
  - kind: registry
    name: anstyle-wincon
    version: 3.0.3
    sha: 61a38449feb7068f52bb06c12759005cf459ee52bb4adc1d5a7c4322d716fb19
  - kind: registry
    name: anyhow
    version: 1.0.99
    sha: b0674a1ddeecb70197781e945de4b3b8ffb61fa939a5597bcf48503737663100
  - kind: registry
    name: atomic
    version: 0.6.1
    sha: a89cbf775b137e9b968e67227ef7f775587cde3fd31b0d8599dbd0f598a48340
  - kind: registry
    name: autocfg
    version: 1.3.0
    sha: 0c4b4d0bd25bd0b74681c0ad21497610ce1b7c91b1022cd21c80c6fbdd9476b0
  - kind: registry
    name: base64
    version: 0.22.1
    sha: 72b3254f16251a8381aa12e40e3c4d2f0199f8c6508fbecb9d91f575e0fbb8c6
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
    version: 2.11.0
    sha: 843867be96c8daad0d758b57df9392b6d8d271134fce549de6ce169ff98a92af
  - kind: registry
    name: block-buffer
    version: 0.10.4
    sha: 3078c7629b62d3f0439517fa394996acacc5cbc91c5a20d8c658e77abd503a71
  - kind: registry
    name: bumpalo
    version: 3.16.0
    sha: 79296716171880943b8470b5f8d03aa55eb2e645a4874bdbb28adb49162e012c
  - kind: registry
    name: bytemuck
    version: 1.25.0
    sha: c8efb64bd706a16a1bdde310ae86b351e4d21550d98d056f22f8a7f7a2183fec
  - kind: registry
    name: camino
    version: 1.1.6
    sha: c59e92b5a388f549b863a7bea62612c09f24c8393560709a54558a9abdfb3b9c
  - kind: registry
    name: cargo-platform
    version: 0.1.8
    sha: 24b1f0365a6c6bb4020cd05806fd0d33c44d38046b8bd7f0e40814b9763cabfc
  - kind: registry
    name: cargo_metadata
    version: 0.15.4
    sha: eee4243f1f26fc7a42710e7439c149e2b10b05472f88090acce52632f231a73a
  - kind: registry
    name: castaway
    version: 0.2.3
    sha: 0abae9be0aaf9ea96a3b1b8b1b55c602ca751eba1b1500220cea4ecbafe7c0d5
  - kind: registry
    name: cc
    version: 1.1.7
    sha: 26a5c3fd7bfa1ce3897a3a3501d362b2d87b7f2583ebcb4a949ec25911025cbc
  - kind: registry
    name: cfg-if
    version: 1.0.4
    sha: 9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801
  - kind: registry
    name: cfg_aliases
    version: 0.2.1
    sha: 613afe47fcd5fac7ccf1db93babcb082c5994d996f20b8b159f2ad1658eb5724
  - kind: registry
    name: circular-buffer
    version: 1.1.0
    sha: 23bdce1da528cadbac4654b5632bfcd8c6c63e25b1d42cea919a95958790b51d
  - kind: registry
    name: clap
    version: 4.5.45
    sha: 1fc0e74a703892159f5ae7d3aac52c8e6c392f5ae5f359c70b5881d60aaac318
  - kind: registry
    name: clap_builder
    version: 4.5.44
    sha: b3e7f4214277f3c7aa526a59dd3fbe306a370daee1f8b7b8c987069cd8e888a8
  - kind: registry
    name: clap_derive
    version: 4.5.45
    sha: 14cb31bb0a7d536caef2639baa7fad459e15c3144efefa6dbd1c84562c4739f6
  - kind: registry
    name: clap_lex
    version: 0.7.4
    sha: f46ad14479a25103f283c0f10005961cf086d8dc42205bb44c46ac563475dca6
  - kind: registry
    name: colorchoice
    version: 1.0.1
    sha: 0b6a852b24ab71dffc585bcb46eaf7959d175cb865a7152e35b348d1b2960422
  - kind: registry
    name: compact_str
    version: 0.9.0
    sha: 3fdb1325a1cece981e8a296ab8f0f9b63ae357bd0784a9faaf548cc7b480707a
  - kind: registry
    name: convert_case
    version: 0.10.0
    sha: 633458d4ef8c78b72454de2d54fd6ab2e60f9e02be22f3c6104cdc8a4e0fceb9
  - kind: registry
    name: cpufeatures
    version: 0.2.17
    sha: 59ed5838eebb26a2bb2e58f6d5b5316989ae9d08bab10e0e6d103e656d1b0280
  - kind: registry
    name: crossterm
    version: 0.29.0
    sha: d8b9f2e4c67f833b660cdb0a3523065869fb35570177239812ed4c905aeff87b
  - kind: registry
    name: crossterm_winapi
    version: 0.9.1
    sha: acdd7c62a3665c7f6830a51635d9ac9b23ed385797f70a83bb8bafe9c572ab2b
  - kind: registry
    name: crypto-common
    version: 0.1.7
    sha: 78c8292055d1c1df0cce5d180393dc8cce0abec0a7102adb6c7b1eef6016d60a
  - kind: registry
    name: csscolorparser
    version: 0.6.2
    sha: eb2a7d3066da2de787b7f032c736763eb7ae5d355f81a68bab2675a96008b0bf
  - kind: registry
    name: deltae
    version: 0.3.2
    sha: 5729f5117e208430e437df2f4843f5e5952997175992d1414f94c57d61e270b4
  - kind: registry
    name: deranged
    version: 0.5.8
    sha: 7cd812cc2bc1d69d4764bd80df88b4317eaef9e773c75226407d9bc0876b211c
  - kind: registry
    name: derive_more
    version: 2.1.1
    sha: d751e9e49156b02b44f9c1815bcb94b984cdcc4396ecc32521c739452808b134
  - kind: registry
    name: derive_more-impl
    version: 2.1.1
    sha: 799a97264921d8623a957f6c3b9011f3b5492f557bbb7a5a19b7fa6d06ba8dcb
  - kind: registry
    name: digest
    version: 0.10.7
    sha: 9ed9a281f7bc9b7576e61468ba615a66a5c8cfdff42420a70aa82701a3b1e292
  - kind: registry
    name: document-features
    version: 0.2.12
    sha: d4b8a88685455ed29a21542a33abd9cb6510b6b129abadabdcef0f4c55bc8f61
  - kind: registry
    name: either
    version: 1.11.0
    sha: a47c1c47d2f5964e29c61246e81db715514cd532db6b5116a25ea3c03d6780a2
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
  - kind: registry
    name: errno
    version: 0.3.14
    sha: 39cab71617ae0d63f51a36d69f866391735b51691dbda63cf6f96d042b63efeb
  - kind: registry
    name: euclid
    version: 0.22.14
    sha: f1a05365e3b1c6d1650318537c7460c6923f1abdd272ad6842baa2b509957a06
  - kind: registry
    name: fancy-regex
    version: 0.11.0
    sha: b95f7c0680e4142284cf8b22c14a476e87d61b004a3a0861872b32ef7ead40a2
  - kind: registry
    name: fastrand
    version: 2.1.0
    sha: 9fc0510504f03c51ada170672ac806f1f105a88aa97a5281117e1ddc3368e51a
  - kind: registry
    name: filedescriptor
    version: 0.8.3
    sha: e40758ed24c9b2eeb76c35fb0aebc66c626084edd827e07e1552279814c6682d
  - kind: registry
    name: finl_unicode
    version: 1.4.0
    sha: 9844ddc3a6e533d62bba727eb6c28b5d360921d5175e9ff0f1e621a5c590a4d5
  - kind: registry
    name: fixedbitset
    version: 0.4.2
    sha: 0ce7134b9999ecaf8bcd65542e436736ef32ddca1b3e06094cb6ec5755203b80
  - kind: registry
    name: fnv
    version: 1.0.7
    sha: 3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1
  - kind: registry
    name: foldhash
    version: 0.1.5
    sha: d9c4f5dac5e15c24eb999c26181a6ca40b39fe946cbe4c263c7209467bc83af2
  - kind: registry
    name: foldhash
    version: 0.2.0
    sha: 77ce24cb58228fbb8aa041425bb1050850ac19177686ea6e0f41a70416f56fdb
  - kind: registry
    name: generic-array
    version: 0.14.7
    sha: 85649ca51fd72272d7821adaf274ad91c288277713d9c18820d8499a7ff69e9a
  - kind: registry
    name: getrandom
    version: 0.3.4
    sha: 899def5c37c4fd7b2664648c28120ecec138e4d395b459e5ca34f9cce2dd77fd
  - kind: registry
    name: getrandom
    version: 0.4.2
    sha: 0de51e6874e94e7bf76d726fc5d13ba782deca734ff60d5bb2fb2607c7406555
  - kind: registry
    name: hashbrown
    version: 0.15.5
    sha: 9229cfe53dfd69f0609a49f65461bd93001ea1ef889cd5529dd176593f5338a1
  - kind: registry
    name: hashbrown
    version: 0.16.1
    sha: 841d1cc9bed7f9236f321df977030373f4a4163ae1a7dbfe1a51a2c1a51d9100
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
    name: id-arena
    version: 2.3.0
    sha: 3d3067d79b975e8844ca9eb072e16b31c3c1c36928edf9c6789548c524d0d954
  - kind: registry
    name: indexmap
    version: 2.13.0
    sha: 7714e70437a7dc3ac8eb7e6f8df75fd8eb422675fc7678aff7364301092b1017
  - kind: registry
    name: indoc
    version: 2.0.5
    sha: b248f5224d1d606005e02c97f5aa4e88eeb230488bcc03bc9ca4d7991399f2b5
  - kind: registry
    name: instability
    version: 0.3.2
    sha: b23a0c8dfe501baac4adf6ebbfa6eddf8f0c07f56b058cc1288017e32397846c
  - kind: registry
    name: is_terminal_polyfill
    version: 1.70.0
    sha: f8478577c03552c21db0e2724ffb8986a5ce7af88107e6be5d2ee6e158c12800
  - kind: registry
    name: itertools
    version: 0.14.0
    sha: 2b192c782037fadd9cfa75548310488aabdbf3d2da73885b31bd0abd03351285
  - kind: registry
    name: itoa
    version: 1.0.11
    sha: 49f1f14873335454500d59611f1cf4a4b0f786f9ac11f4312a78e4cf2566695b
  - kind: registry
    name: js-sys
    version: 0.3.92
    sha: cc4c90f45aa2e6eacbe8645f77fdea542ac97a494bcd117a67df9ff4d611f995
  - kind: registry
    name: kasuari
    version: 0.4.12
    sha: bde5057d6143cc94e861d90f591b9303d6716c6b9602309150bd068853c10899
  - kind: registry
    name: lab
    version: 0.11.0
    sha: bf36173d4167ed999940f804952e6b08197cae5ad5d572eb4db150ce8ad5d58f
  - kind: registry
    name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - kind: registry
    name: leb128fmt
    version: 0.1.0
    sha: 09edd9e8b54e49e587e4f6295a7d29c3ea94d469cb40ab8ca70b288248a81db2
  - kind: registry
    name: libbpf-cargo
    version: 0.24.4
    sha: e42b7b9b2836b25dd7a0e5ff3c2ec0e029a99b3025bfbef0202b55875654b45b
  - kind: registry
    name: libbpf-rs
    version: 0.24.4
    sha: d51b943363864472bf306570a7076cbfa84571a403b98f59d18af4c4135271ca
  - kind: registry
    name: libbpf-rs
    version: 0.25.0
    sha: e23d252d93e246c8787198369f06806c99c5077b5295be29505295f4e5426dc4
  - kind: registry
    name: libbpf-sys
    version: 1.5.0+v1.5.0
    sha: 2d8306b516a70a129cb6afed17c1e51e162d35aadfcc6339364addcebe32de90
  - kind: registry
    name: libc
    version: 0.2.178
    sha: 37c93d8daa9d8a012fd8ab92f088405fb202ea0b6ab73ee2482ae66af4f42091
  - kind: registry
    name: line-clipping
    version: 0.3.7
    sha: 3f50e8f47623268b5407192d26876c4d7f89d686ca130fdc53bced4814cd29f8
  - kind: registry
    name: linux-raw-sys
    version: 0.11.0
    sha: df1d3c3b53da64cf5760482273a98e575c651a67eec7f77df96b5b642de8f039
  - kind: registry
    name: linux-raw-sys
    version: 0.4.13
    sha: 01cda141df6706de531b6c46c3a33ecca755538219bd484262fa09410c13539c
  - kind: registry
    name: litrs
    version: 1.0.0
    sha: 11d3d7f243d5c5a8b9bb5d6dd2b1602c0cb0b9db1621bafc7ed66e35ff9fe092
  - kind: registry
    name: lock_api
    version: 0.4.12
    sha: 07af8b9cdd281b7915f413fa73f29ebd5d55d0d3f0155584dade1ff18cea1b17
  - kind: registry
    name: log
    version: 0.4.21
    sha: 90ed8c1e510134f979dbc4f070f87d4313098b704861a105fe34231c70a3901c
  - kind: registry
    name: lru
    version: 0.16.3
    sha: a1dc47f592c06f33f8e3aea9591776ec7c9f9e4124778ff8a3c3b87159f7e593
  - kind: registry
    name: mac_address
    version: 1.1.8
    sha: c0aeb26bf5e836cc1c341c8106051b573f1766dfa05aa87f0b98be5e51b02303
  - kind: registry
    name: memchr
    version: 2.7.2
    sha: 6c8640c5d730cb13ebd907d8d04b52f55ac9a2eec55b440c8892f40d56c76c1d
  - kind: registry
    name: memmap2
    version: 0.5.10
    sha: 83faa42c0a078c393f6b29d5db232d8be22776a891f8f56e5284faee4a20b327
  - kind: registry
    name: memmem
    version: 0.1.1
    sha: a64a92489e2744ce060c349162be1c5f33c6969234104dbd99ddb5feb08b8c15
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: minimal-lexical
    version: 0.2.1
    sha: 68354c5c6bd36d73ff3feceb05efa59b6acb7626617f4962be322a825e61f79a
  - kind: registry
    name: mio
    version: 1.0.1
    sha: 4569e456d394deccd22ce1c1913e6ea0e54519f577285001215d33557431afe4
  - kind: registry
    name: nix
    version: 0.29.0
    sha: 71e2746dc3a24dd78b3cfcb7be93368c6de9963d30f43a6a73998a9cf4b17b46
  - kind: registry
    name: nom
    version: 7.1.3
    sha: d273983c5a657a70a3e8f2a01329822f3b8c8172b73826411a55751e404a0a4a
  - kind: registry
    name: nu-ansi-term
    version: 0.50.1
    sha: d4a28e057d01f97e61255210fcff094d74ed0466038633e95017f5beb68e4399
  - kind: registry
    name: num-conv
    version: 0.2.1
    sha: c6673768db2d862beb9b39a78fdcb1a69439615d5794a1be50caa9bc92c81967
  - kind: registry
    name: num-derive
    version: 0.4.2
    sha: ed3955f1a9c7c0c15e092f9c887db08b1fc683305fdf6eb6684f22555355e202
  - kind: registry
    name: num-traits
    version: 0.2.19
    sha: 071dfc062690e90b734c0b2273ce72ad0ffa95f0c74596bc250dcfd960262841
  - kind: registry
    name: num_threads
    version: 0.1.7
    sha: 5c7398b9c8b70908f6371f47ed36737907c87c52af34c268fed0bf0ceb92ead9
  - kind: registry
    name: once_cell
    version: 1.19.0
    sha: 3fdb12b2476b595f9358c5161aa467c2438859caa136dec86c26fdd2efe17b92
  - kind: registry
    name: ordered-float
    version: 4.6.0
    sha: 7bb71e1b3fa6ca1c61f383464aaf2bb0e2f8e772a1f01d486832464de363b951
  - kind: registry
    name: parking_lot
    version: 0.12.2
    sha: 7e4af0ca4f6caed20e900d564c242b8e5d4903fdacf31d3daf527b66fe6f42fb
  - kind: registry
    name: parking_lot_core
    version: 0.9.10
    sha: 1e401f977ab385c9e4e3ab30627d6f26d00e2c73eef317493c4ec6d468726cf8
  - kind: registry
    name: pest
    version: 2.8.6
    sha: e0848c601009d37dfa3430c4666e147e49cdcf1b92ecd3e63657d8a5f19da662
  - kind: registry
    name: pest_derive
    version: 2.8.6
    sha: 11f486f1ea21e6c10ed15d5a7c77165d0ee443402f0780849d1768e7d9d6fe77
  - kind: registry
    name: pest_generator
    version: 2.8.6
    sha: 8040c4647b13b210a963c1ed407c1ff4fdfa01c31d6d2a098218702e6664f94f
  - kind: registry
    name: pest_meta
    version: 2.8.6
    sha: 89815c69d36021a140146f26659a81d6c2afa33d216d736dd4be5381a7362220
  - kind: registry
    name: phf
    version: 0.11.3
    sha: 1fd6780a80ae0c52cc120a26a1a42c1ae51b247a253e4e06113d23d2c2edd078
  - kind: registry
    name: phf_codegen
    version: 0.11.3
    sha: aef8048c789fa5e851558d709946d6d79a8ff88c0440c587967f8e94bfb1216a
  - kind: registry
    name: phf_generator
    version: 0.11.3
    sha: 3c80231409c20246a13fddb31776fb942c38553c51e871f8cbd687a4cfb5843d
  - kind: registry
    name: phf_macros
    version: 0.11.3
    sha: f84ac04429c13a7ff43785d75ad27569f2951ce0ffd30a3321230db2fc727216
  - kind: registry
    name: phf_shared
    version: 0.11.3
    sha: 67eabc2ef2a60eb7faa00097bd1ffdb5bd28e62bf39990626a582201b7a754e5
  - kind: registry
    name: pin-project-lite
    version: 0.2.14
    sha: bda66fc9667c18cb2758a2ac84d1167245054bcf85d5d1aaa6923f45801bdd02
  - kind: registry
    name: pkg-config
    version: 0.3.30
    sha: d231b230927b5e4ad203db57bbcbee2802f6bce620b1e4a9024a07d94e2907ec
  - kind: registry
    name: portable-atomic
    version: 1.13.1
    sha: c33a9471896f1c69cecef8d20cbe2f7accd12527ce60845ff44c153bb2a21b49
  - kind: registry
    name: powerfmt
    version: 0.2.0
    sha: 439ee305def115ba05938db6eb1644ff94165c5ab5e9420d1c1bcedbba909391
  - kind: registry
    name: prettyplease
    version: 0.2.37
    sha: 479ca8adacdd7ce8f1fb39ce9ecccbfe93a3f1344b3d0d97f20bc0196208f62b
  - kind: registry
    name: proc-macro2
    version: 1.0.101
    sha: 89ae43fd86e4158d6db51ad8e2b80f313af9cc74f5c0e03ccb87de09998732de
  - kind: registry
    name: quote
    version: 1.0.36
    sha: 0fa76aaf39101c457836aec0ce2316dbdc3ab723cdda1c6bd4e6ad4208acaca7
  - kind: registry
    name: r-efi
    version: 5.3.0
    sha: 69cdb34c158ceb288df11e18b4bd39de994f6657d83847bdffdbd7f346754b0f
  - kind: registry
    name: r-efi
    version: 6.0.0
    sha: f8dcc9c7d52a811697d2151c701e0d08956f92b0e24136cf4cf27b57a6a0d9bf
  - kind: registry
    name: rand
    version: 0.8.6
    sha: 5ca0ecfa931c29007047d1bc58e623ab12e5590e8c7cc53200d5202b69266d8a
  - kind: registry
    name: rand_core
    version: 0.6.4
    sha: ec0be4795e2f6a28069bec0b5ff3e2ac9bafc99e6a9a7dc3547996c5c816922c
  - kind: registry
    name: ratatui
    version: 0.30.0
    sha: d1ce67fb8ba4446454d1c8dbaeda0557ff5e94d39d5e5ed7f10a65eb4c8266bc
  - kind: registry
    name: ratatui-core
    version: 0.1.0
    sha: 5ef8dea09a92caaf73bff7adb70b76162e5937524058a7e5bff37869cbbec293
  - kind: registry
    name: ratatui-crossterm
    version: 0.1.0
    sha: 577c9b9f652b4c121fb25c6a391dd06406d3b092ba68827e6d2f09550edc54b3
  - kind: registry
    name: ratatui-macros
    version: 0.7.0
    sha: a7f1342a13e83e4bb9d0b793d0ea762be633f9582048c892ae9041ef39c936f4
  - kind: registry
    name: ratatui-termwiz
    version: 0.1.0
    sha: 0f76fe0bd0ed4295f0321b1676732e2454024c15a35d01904ddb315afd3d545c
  - kind: registry
    name: ratatui-widgets
    version: 0.3.0
    sha: d7dbfa023cd4e604c2553483820c5fe8aa9d71a42eea5aa77c6e7f35756612db
  - kind: registry
    name: redox_syscall
    version: 0.5.1
    sha: 469052894dcb553421e483e4209ee581a45100d31b4018de03e5a7ad86374a7e
  - kind: registry
    name: regex
    version: 1.11.2
    sha: 23d7fd106d8c02486a8d64e778353d1cffe08ce79ac2e82f540c86d0facf6912
  - kind: registry
    name: regex-automata
    version: 0.4.10
    sha: 6b9458fa0bfeeac22b5ca447c63aaf45f28439a709ccd244698632f9aa6394d6
  - kind: registry
    name: regex-syntax
    version: 0.8.6
    sha: caf4aa5b0f434c91fe5c7f1ecb6a5ece2130b02ad2a590589dda5146df959001
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: rustix
    version: 0.38.34
    sha: 70dc5ec042f7a43c4a73241207cecc9873a06d45debb38b329f8541d85c2730f
  - kind: registry
    name: rustix
    version: 1.1.3
    sha: 146c9e247ccc180c1f61615433868c99f3de3ae256a30a43b49f67c2d9171f34
  - kind: registry
    name: rustversion
    version: 1.0.16
    sha: 092474d1a01ea8278f69e6a358998405fae5b8b963ddaeb2b0b04a128bf1dfb0
  - kind: registry
    name: ryu
    version: 1.0.18
    sha: f3cb5ba0dc43242ce17de99c180e96db90b235b8a9fdc9543c96d2209116bd9f
  - kind: registry
    name: scopeguard
    version: 1.2.0
    sha: 94143f37725109f92c262ed2cf5e59bce7498c01bcc1502d7b9afe439a4e9f49
  - kind: registry
    name: semver
    version: 1.0.23
    sha: 61697e0a1c7e512e84a621326239844a24d8207b4669b41bc18b32ea5cbf988b
  - kind: registry
    name: serde
    version: 1.0.228
    sha: 9a8e94ea7f378bd32cbbd37198a4a91436180c5bb472411e48b5ec2e2124ae9e
  - kind: registry
    name: serde_core
    version: 1.0.228
    sha: 41d385c7d4ca58e59fc732af25c3983b67ac852c1a25000afe1175de458b67ad
  - kind: registry
    name: serde_derive
    version: 1.0.228
    sha: d540f220d3187173da220f885ab66608367b6574e925011a9353e4badda91d79
  - kind: registry
    name: serde_json
    version: 1.0.142
    sha: 030fedb782600dcbd6f02d479bf0d817ac3bb40d644745b769d6a96bc3afc5a7
  - kind: registry
    name: sha2
    version: 0.10.9
    sha: a7507d819769d01a365ab707794a4084392c824f54a7a6a7862f8c3d0892b283
  - kind: registry
    name: sharded-slab
    version: 0.1.7
    sha: f40ca3c46823713e0d4209592e8d6e826aa57e928f09752619fc696c499637f6
  - kind: registry
    name: signal-hook
    version: 0.3.17
    sha: 8621587d4798caf8eb44879d42e56b9a93ea5dcd315a6487c357130095b62801
  - kind: registry
    name: signal-hook-mio
    version: 0.2.4
    sha: 34db1a06d485c9142248b7a054f034b349b212551f3dfd19c94d45a754a217cd
  - kind: registry
    name: signal-hook-registry
    version: 1.4.2
    sha: a9e9e0b4211b72e7b8b6e85c807d36c212bdb33ea8587f7569562a84df5465b1
  - kind: registry
    name: siphasher
    version: 1.0.2
    sha: b2aa850e253778c88a04c3d7323b043aeda9d3e30d5971937c1855769763678e
  - kind: registry
    name: smallvec
    version: 1.13.2
    sha: 3c5e1a9a646d36c3599cd173a41282daf47c44583ad367b8e6837255952e5c67
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - kind: registry
    name: strsim
    version: 0.11.1
    sha: 7da8b5736845d9f2fcb837ea5d9e2628564b3b043a70948a3f0b778838c5fb4f
  - kind: registry
    name: strum
    version: 0.27.2
    sha: af23d6f6c1a224baef9d3f61e287d2761385a5b88fdab4eb4c6f11aeb54c4bcf
  - kind: registry
    name: strum_macros
    version: 0.27.2
    sha: 7695ce3845ea4b33927c055a39dc438a45b059f7c1b3d91d38d10355fb8cbca7
  - kind: registry
    name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - kind: registry
    name: syn
    version: 2.0.106
    sha: ede7c438028d4436d71104916910f5bb611972c5cfd7f89b8300a8186e6fada6
  - kind: registry
    name: tempfile
    version: 3.10.1
    sha: 85b77fafb263dd9d05cbeac119526425676db3784113aa9295c88498cbf8bff1
  - kind: registry
    name: terminfo
    version: 0.9.0
    sha: d4ea810f0692f9f51b382fff5893887bb4580f5fa246fde546e0b13e7fcee662
  - kind: registry
    name: termios
    version: 0.3.3
    sha: 411c5bf740737c7918b8b1fe232dca4dc9f8e754b8ad5e20966814001ed0ac6b
  - kind: registry
    name: termwiz
    version: 0.23.3
    sha: 4676b37242ccbd1aabf56edb093a4827dc49086c0ffd764a5705899e0f35f8f7
  - kind: registry
    name: thiserror
    version: 1.0.69
    sha: b6aaf5339b578ea85b50e080feb250a3e8ae8cfcdff9a461c9ec2904bc923f52
  - kind: registry
    name: thiserror
    version: 2.0.18
    sha: 4288b5bcbc7920c07a1149a35cf9590a2aa808e0bc1eafaade0b80947865fbc4
  - kind: registry
    name: thiserror-impl
    version: 1.0.69
    sha: 4fee6c4efc90059e10f81e6d42c60a18f76588c3d74cb83a0b242a2b6c7504c1
  - kind: registry
    name: thiserror-impl
    version: 2.0.18
    sha: ebc4ee7f67670e9b64d05fa4253e753e016c6c95ff35b89b7941d6b856dec1d5
  - kind: registry
    name: thread_local
    version: 1.1.8
    sha: 8b9ef9bad013ada3808854ceac7b46812a6465ba368859a37e2100283d2d719c
  - kind: registry
    name: time
    version: 0.3.47
    sha: 743bd48c283afc0388f9b8827b976905fb217ad9e647fae3a379a9283c4def2c
  - kind: registry
    name: time-core
    version: 0.1.8
    sha: 7694e1cfe791f8d31026952abf09c69ca6f6fa4e1a1229e18988f06a04a12dca
  - kind: registry
    name: tracing
    version: 0.1.41
    sha: 784e0ac535deb450455cbfa28a6f0df145ea1bb7ae51b821cf5e7927fdcfbdd0
  - kind: registry
    name: tracing-attributes
    version: 0.1.28
    sha: 395ae124c09f9e6918a2310af6038fba074bcf474ac352496d5910dd59a2226d
  - kind: registry
    name: tracing-core
    version: 0.1.33
    sha: e672c95779cf947c5311f83787af4fa8fffd12fb27e4993211a84bdfd9610f9c
  - kind: registry
    name: tracing-journald
    version: 0.3.1
    sha: fc0b4143302cf1022dac868d521e36e8b27691f72c84b3311750d5188ebba657
  - kind: registry
    name: tracing-log
    version: 0.2.0
    sha: ee855f1f400bd0e5c02d150ae5de3840039a3f54b025156404e34c23c03f47c3
  - kind: registry
    name: tracing-subscriber
    version: 0.3.20
    sha: 2054a14f5307d601f88daf0553e1cbf472acc4f2c51afab632431cdcd72124d5
  - kind: registry
    name: tui-input
    version: 0.15.0
    sha: 79c1ee964298f136020f5f69e0e601f4d3a1f610a7baf1af9fcb96152e8a2c45
  - kind: registry
    name: typenum
    version: 1.19.0
    sha: 562d481066bde0658276a35467c4af00bdc6ee726305698a55b86e61d7ad82bb
  - kind: registry
    name: ucd-trie
    version: 0.1.7
    sha: 2896d95c02a80c6d6a5d6e953d479f5ddf2dfdb6a244441010e373ac0fb88971
  - kind: registry
    name: unicode-ident
    version: 1.0.12
    sha: 3354b9ac3fae1ff6755cb6db53683adb661634f67557942dea4facebec0fee4b
  - kind: registry
    name: unicode-segmentation
    version: 1.13.2
    sha: 9629274872b2bfaf8d66f5f15725007f635594914870f65218920345aa11aa8c
  - kind: registry
    name: unicode-truncate
    version: 2.0.1
    sha: 16b380a1238663e5f8a691f9039c73e1cdae598a30e9855f541d29b08b53e9a5
  - kind: registry
    name: unicode-width
    version: 0.2.2
    sha: b4ac048d71ede7ee76d585517add45da530660ef4390e49b098733c6e897f254
  - kind: registry
    name: unicode-xid
    version: 0.2.6
    sha: ebc1c04c71510c7f702b52b7c350734c9ff1295c464a03335b00bb84fc54f853
  - kind: registry
    name: utf8parse
    version: 0.2.1
    sha: 711b9620af191e0cdc7468a8d14e709c3dcdb115b36f838e601583af800a370a
  - kind: registry
    name: uuid
    version: 1.23.0
    sha: 5ac8b6f42ead25368cf5b098aeb3dc8a1a2c05a3eee8a9a1a68c640edbfc79d9
  - kind: registry
    name: valuable
    version: 0.1.0
    sha: 830b7e5d4d90034032940e4ace0d9a9a057e7a45cd94e6c007832e39edb82f6d
  - kind: registry
    name: version_check
    version: 0.9.4
    sha: 49874b5167b65d7193b8aba1567f5c7d93d001cafc34600cee003eda787e483f
  - kind: registry
    name: vsprintf
    version: 2.0.0
    sha: aec2f81b75ca063294776b4f7e8da71d1d5ae81c2b1b149c8d89969230265d63
  - kind: registry
    name: vtparse
    version: 0.6.2
    sha: 6d9b2acfb050df409c972a37d3b8e08cdea3bddb0c09db9d53137e504cfabed0
  - kind: registry
    name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
  - kind: registry
    name: wasip2
    version: 1.0.2+wasi-0.2.9
    sha: 9517f9239f02c069db75e65f174b3da828fe5f5b945c4dd26bd25d89c03ebcf5
  - kind: registry
    name: wasip3
    version: 0.4.0+wasi-0.3.0-rc-2026-01-06
    sha: 5428f8bf88ea5ddc08faddef2ac4a67e390b88186c703ce6dbd955e1c145aca5
  - kind: registry
    name: wasm-bindgen
    version: 0.2.115
    sha: 6523d69017b7633e396a89c5efab138161ed5aafcbc8d3e5c5a42ae38f50495a
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.115
    sha: 4e3a6c758eb2f701ed3d052ff5737f5bfe6614326ea7f3bbac7156192dc32e67
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.115
    sha: 921de2737904886b52bcbb237301552d05969a6f9c40d261eb0533c8b055fedf
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.115
    sha: a93e946af942b58934c604527337bad9ae33ba1d5c6900bbb41c2c07c2364a93
  - kind: registry
    name: wasm-encoder
    version: 0.244.0
    sha: 990065f2fe63003fe337b932cfb5e3b80e0b4d0f5ff650e6985b1048f62c8319
  - kind: registry
    name: wasm-metadata
    version: 0.244.0
    sha: bb0e353e6a2fbdc176932bbaab493762eb1255a7900fe0fea1a2f96c296cc909
  - kind: registry
    name: wasmparser
    version: 0.244.0
    sha: 47b807c72e1bac69382b3a6fb3dbe8ea4c0ed87ff5629b8685ae6b9a611028fe
  - kind: registry
    name: wezterm-bidi
    version: 0.2.3
    sha: 0c0a6e355560527dd2d1cf7890652f4f09bb3433b6aadade4c9b5ed76de5f3ec
  - kind: registry
    name: wezterm-blob-leases
    version: 0.1.1
    sha: 692daff6d93d94e29e4114544ef6d5c942a7ed998b37abdc19b17136ea428eb7
  - kind: registry
    name: wezterm-color-types
    version: 0.3.0
    sha: 7de81ef35c9010270d63772bebef2f2d6d1f2d20a983d27505ac850b8c4b4296
  - kind: registry
    name: wezterm-dynamic
    version: 0.2.1
    sha: 5f2ab60e120fd6eaa68d9567f3226e876684639d22a4219b313ff69ec0ccd5ac
  - kind: registry
    name: wezterm-dynamic-derive
    version: 0.1.1
    sha: 46c0cf2d539c645b448eaffec9ec494b8b19bd5077d9e58cb1ae7efece8d575b
  - kind: registry
    name: wezterm-input-types
    version: 0.1.0
    sha: 7012add459f951456ec9d6c7e6fc340b1ce15d6fc9629f8c42853412c029e57e
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
    name: wit-bindgen
    version: 0.51.0
    sha: d7249219f66ced02969388cf2bb044a09756a083d0fab1e566056b04d9fbcaa5
  - kind: registry
    name: wit-bindgen-core
    version: 0.51.0
    sha: ea61de684c3ea68cb082b7a88508a8b27fcc8b797d738bfc99a82facf1d752dc
  - kind: registry
    name: wit-bindgen-rust
    version: 0.51.0
    sha: b7c566e0f4b284dd6561c786d9cb0142da491f46a9fbed79ea69cdad5db17f21
  - kind: registry
    name: wit-bindgen-rust-macro
    version: 0.51.0
    sha: 0c0f9bfd77e6a48eccf51359e3ae77140a7f50b1e2ebfe62422d8afdaffab17a
  - kind: registry
    name: wit-component
    version: 0.244.0
    sha: 9d66ea20e9553b30172b5e831994e35fbde2d165325bec84fc43dbf6f4eb9cb2
  - kind: registry
    name: wit-parser
    version: 0.244.0
    sha: ecc8ac4bc1dc3381b7f59c34f00b67e18f910c2c0f50015669dde7def656a736
build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/elfutils.bst
- freedesktop-sdk.bst:components/zlib.bst
