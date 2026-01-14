kind: make

sources:
- kind: git_repo
  url: github:bootc-dev/bootc.git
  track: v*
  ref: v1.12.0-0-g0ee9b2276d46df7ccc47ecbac7d6780903a8b4ca
- kind: cargo2
  ref:
  - kind: registry
    name: adler2
    version: 2.0.1
    sha: 320119579fcad9c21884f5c4861d16174d0e06250625266f50fe6898340abefa
  - kind: registry
    name: aho-corasick
    version: 1.1.4
    sha: ddd31a130427c27518df266943a5308ed92d4b226cc639f5a8f1002816174301
  - kind: registry
    name: ambient-authority
    version: 0.0.2
    sha: e9d4ee0d472d1cd2e28c97dfa124b3d8d992e10eb0a035f33f5d12e3a177ba3b
  - kind: registry
    name: android_system_properties
    version: 0.1.5
    sha: 819e7219dbd41043ac279b19830f2efc897156490d7fd6ea916720117ee66311
  - kind: registry
    name: anstream
    version: 0.6.21
    sha: 43d5b281e737544384e969a5ccad3f1cdd24b48086a0fc1b2a5262a26b8f4f4a
  - kind: registry
    name: anstyle
    version: 1.0.13
    sha: 5192cca8006f1fd4f7237516f40fa183bb07f8fbdfedaa0036de5ea9b0b45e78
  - kind: registry
    name: anstyle-parse
    version: 0.2.7
    sha: 4e7644824f0aa2c7b9384579234ef10eb7efb6a0deb83f9630a49594dd9c15c2
  - kind: registry
    name: anstyle-query
    version: 1.1.4
    sha: 9e231f6134f61b71076a3eab506c379d4f36122f2af15a9ff04415ea4c3339e2
  - kind: registry
    name: anstyle-wincon
    version: 3.0.10
    sha: 3e0633414522a32ffaac8ac6cc8f748e090c5717661fddeea04219e2344f5f2a
  - kind: registry
    name: anyhow
    version: 1.0.100
    sha: a23eb6b1614318a8071c9b2521f36b424b2c83db5eb3a0fead4a6c0809af6e61
  - kind: registry
    name: async-compression
    version: 0.4.32
    sha: 5a89bce6054c720275ac2432fbba080a66a2106a44a1b804553930ca6909f4e0
  - kind: registry
    name: autocfg
    version: 1.5.0
    sha: c08606f8c3cbf4ce6ec8e28fb0014a2c086708fe954eaa885384a6165172e7e8
  - kind: registry
    name: base64
    version: 0.20.0
    sha: 0ea22880d78093b0cbe17c89f64a7d457941e65759157ec6cb31a31d652b05e5
  - kind: registry
    name: base64
    version: 0.21.7
    sha: 9d297deb1925b89f2ccc13d7635fa0714f12c87adce1c75356b39ca9b7178567
  - kind: registry
    name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - kind: registry
    name: bitflags
    version: 2.10.0
    sha: 812e12b5285cc515a9c72a5c1d3b6d46a19dac5acfef5265968c166106e31dd3
  - kind: registry
    name: block-buffer
    version: 0.10.4
    sha: 3078c7629b62d3f0439517fa394996acacc5cbc91c5a20d8c658e77abd503a71
  - kind: registry
    name: bstr
    version: 1.12.1
    sha: 63044e1ae8e69f3b5a92c736ca6269b8d12fa7efe39bf34ddb06d102cf0e2cab
  - kind: registry
    name: bumpalo
    version: 3.19.0
    sha: 46c5e41b57b8bba42a04676d81cb89e9ee8e859a1a66f80a5a72e1cb76b34d43
  - kind: registry
    name: byteorder
    version: 1.5.0
    sha: 1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b
  - kind: registry
    name: bytes
    version: 1.10.1
    sha: d71b6127be86fdcfddb610f7182ac57211d4b18a3e9c82eb2d17662f2227ad6a
  - kind: registry
    name: camino
    version: 1.2.1
    sha: 276a59bf2b2c967788139340c9f0c5b12d7fd6630315c15c217e559de85d2609
  - kind: registry
    name: canon-json
    version: 0.2.1
    sha: b5ae9f90437d2e2efba2a6c75b8279aa6b8f2f4017e0a4aeb64a76cd9d3a2bab
  - kind: registry
    name: cap-primitives
    version: 3.4.5
    sha: b6cf3aea8a5081171859ef57bc1606b1df6999df4f1110f8eef68b30098d1d3a
  - kind: registry
    name: cap-std
    version: 3.4.5
    sha: b6dc3090992a735d23219de5c204927163d922f42f575a0189b005c62d37549a
  - kind: registry
    name: cap-std-ext
    version: 4.0.6
    sha: 7770022cf9ca0e804cdc7725fa6be84a3721e5733ba889b3300689dcdb407fa1
  - kind: registry
    name: cap-tempfile
    version: 3.4.5
    sha: 68d8ad5cfac469e58e632590f033d45c66415ef7a8aa801409884818036706f5
  - kind: registry
    name: cc
    version: 1.2.45
    sha: 35900b6c8d709fb1d854671ae27aeaa9eec2f8b01b364e1619a40da3e6fe2afe
  - kind: registry
    name: cfg-expr
    version: 0.20.4
    sha: 9acd0bdbbf4b2612d09f52ba61da432140cb10930354079d0d53fafc12968726
  - kind: registry
    name: cfg-if
    version: 1.0.4
    sha: 9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801
  - kind: registry
    name: cfg_aliases
    version: 0.2.1
    sha: 613afe47fcd5fac7ccf1db93babcb082c5994d996f20b8b159f2ad1658eb5724
  - kind: registry
    name: chrono
    version: 0.4.42
    sha: 145052bdd345b87320e369255277e3fb5152762ad123a901ef5c262dd38fe8d2
  - kind: registry
    name: clap
    version: 4.5.51
    sha: 4c26d721170e0295f191a69bd9a1f93efcdb0aff38684b61ab5750468972e5f5
  - kind: registry
    name: clap_builder
    version: 4.5.51
    sha: 75835f0c7bf681bfd05abe44e965760fea999a5286c6eb2d59883634fd02011a
  - kind: registry
    name: clap_derive
    version: 4.5.49
    sha: 2a0b5487afeab2deb2ff4e03a807ad1a03ac532ff5a2cee5d86884440c7f7671
  - kind: registry
    name: clap_lex
    version: 0.7.6
    sha: a1d728cc89cf3aee9ff92b05e62b19ee65a02b5702cff7d5a377e32c6ae29d8d
  - kind: registry
    name: clap_mangen
    version: 0.2.31
    sha: 439ea63a92086df93893164221ad4f24142086d535b3a0957b9b9bea2dc86301
  - kind: registry
    name: colorchoice
    version: 1.0.4
    sha: b05b61dc5112cbb17e4b6cd61790d9845d13888356391624cbe7e41efeac1e75
  - kind: registry
    name: comfy-table
    version: 7.2.1
    sha: b03b7db8e0b4b2fdad6c551e634134e99ec000e5c8c3b6856c65e8bbaded7a3b
  - kind: registry
    name: comma
    version: 1.0.0
    sha: 55b672471b4e9f9e95499ea597ff64941a309b2cdbffcc46f2cc5e2d971fd335
  - kind: git
    commit: 1498349e11d0e4bd545feab533f0b7ab5294ae9a
    repo: github:containers/composefs-rs
    query:
      rev: 1498349e11d0e4bd545feab533f0b7ab5294ae9a
    name: composefs
    version: 0.3.0
  - kind: git
    commit: 1498349e11d0e4bd545feab533f0b7ab5294ae9a
    repo: github:containers/composefs-rs
    query:
      rev: 1498349e11d0e4bd545feab533f0b7ab5294ae9a
    name: composefs-boot
    version: 0.3.0
  - kind: git
    commit: 1498349e11d0e4bd545feab533f0b7ab5294ae9a
    repo: github:containers/composefs-rs
    query:
      rev: 1498349e11d0e4bd545feab533f0b7ab5294ae9a
    name: composefs-oci
    version: 0.3.0
  - kind: registry
    name: compression-codecs
    version: 0.4.31
    sha: ef8a506ec4b81c460798f572caead636d57d3d7e940f998160f52bd254bf2d23
  - kind: registry
    name: compression-core
    version: 0.4.29
    sha: e47641d3deaf41fb1538ac1f54735925e275eaf3bf4d55c81b137fba797e5cbb
  - kind: registry
    name: console
    version: 0.15.11
    sha: 054ccb5b10f9f2cbf51eb355ca1d05c2d279ce1804688d0db74b4733a5aeafd8
  - kind: registry
    name: console
    version: 0.16.1
    sha: b430743a6eb14e9764d4260d4c0d8123087d504eeb9c48f2b2a5e810dd369df4
  - kind: registry
    name: const_format
    version: 0.2.35
    sha: 7faa7469a93a566e9ccc1c73fe783b4a65c274c5ace346038dca9c39fe0030ad
  - kind: registry
    name: const_format_proc_macros
    version: 0.2.34
    sha: 1d57c2eccfb16dbac1f4e61e206105db5820c9d26c3c472bc17c774259ef7744
  - kind: registry
    name: containers-image-proxy
    version: 0.9.0
    sha: 08ca6531917f9b250bf6a1af43603b2e083c192565774451411f9bf4f8bf8f2b
  - kind: registry
    name: convert_case
    version: 0.7.1
    sha: bb402b8d4c85569410425650ce3eddc7d698ed96d39a73f941b08fb63082f1e7
  - kind: registry
    name: core-foundation-sys
    version: 0.8.7
    sha: 773648b94d0e5d620f64f280777445740e61fe701025087ec8b57f45c791888b
  - kind: registry
    name: cpufeatures
    version: 0.2.17
    sha: 59ed5838eebb26a2bb2e58f6d5b5316989ae9d08bab10e0e6d103e656d1b0280
  - kind: registry
    name: crc32fast
    version: 1.5.0
    sha: 9481c1c90cbf2ac953f07c8d4a58aa3945c425b7185c9154d67a65e4230da511
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
    version: 0.1.6
    sha: 1bfb12502f3fc46cca1bb51ac28df9d618d813cdc3d2f25b9fe775a34af26bb3
  - kind: registry
    name: darling
    version: 0.20.11
    sha: fc7f46116c46ff9ab3eb1597a45688b6715c6e628b5c133e288e709a29bcb4ee
  - kind: registry
    name: darling_core
    version: 0.20.11
    sha: 0d00b9596d185e565c2207a0b01f8bd1a135483d02d9b7b0a54b11da8d53412e
  - kind: registry
    name: darling_macro
    version: 0.20.11
    sha: fc34b93ccb385b40dc71c6fceac4b2ad23662c7eeb248cf10d529b7e055b6ead
  - kind: registry
    name: derive_builder
    version: 0.20.2
    sha: 507dfb09ea8b7fa618fcf76e953f4f5e192547945816d5358edffe39f6f94947
  - kind: registry
    name: derive_builder_core
    version: 0.20.2
    sha: 2d5bcf7b024d6835cfb3d473887cd966994907effbe9227e8c8219824d06c4e8
  - kind: registry
    name: derive_builder_macro
    version: 0.20.2
    sha: ab63b0e2bf4d5928aff72e83a7dace85d7bba5fe12dcc3c5a572d78caffd3f3c
  - kind: registry
    name: derive_more
    version: 2.0.1
    sha: 093242cf7570c207c83073cf82f79706fe7b8317e98620a47d5be7c3d8497678
  - kind: registry
    name: derive_more-impl
    version: 2.0.1
    sha: bda628edc44c4bb645fbe0f758797143e4e07926f7ebf4e9bdfbd3d2ce621df3
  - kind: registry
    name: deunicode
    version: 1.6.2
    sha: abd57806937c9cc163efc8ea3910e00a62e2aeb0b8119f1793a978088f8f6b04
  - kind: registry
    name: dialoguer
    version: 0.12.0
    sha: 25f104b501bf2364e78d0d3974cbc774f738f5865306ed128e1e0d7499c0ad96
  - kind: registry
    name: digest
    version: 0.10.7
    sha: 9ed9a281f7bc9b7576e61468ba615a66a5c8cfdff42420a70aa82701a3b1e292
  - kind: registry
    name: document-features
    version: 0.2.12
    sha: d4b8a88685455ed29a21542a33abd9cb6510b6b129abadabdcef0f4c55bc8f61
  - kind: registry
    name: dyn-clone
    version: 1.0.20
    sha: d0881ea181b1df73ff77ffaaf9c7544ecc11e82fba9b5f27b262a3c73a332555
  - kind: registry
    name: either
    version: 1.15.0
    sha: 48c757948c5ede0e46177b7add2e67155f70e33c07fea8284df6576da70b3719
  - kind: registry
    name: encode_unicode
    version: 1.0.0
    sha: 34aa73646ffb006b8f5147f3dc182bd4bcb190227ce861fc4a4844bf8e3cb2c0
  - kind: registry
    name: env_home
    version: 0.1.0
    sha: c7f84e12ccf0a7ddc17a6c41c93326024c42920d7ee630d04950e6926645c0fe
  - kind: registry
    name: env_logger
    version: 0.8.4
    sha: a19187fea3ac7e84da7dacf48de0c45d63c6a76f9490dae389aead16c243fce3
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
  - kind: registry
    name: errno
    version: 0.3.14
    sha: 39cab71617ae0d63f51a36d69f866391735b51691dbda63cf6f96d042b63efeb
  - kind: registry
    name: escape8259
    version: 0.5.3
    sha: 5692dd7b5a1978a5aeb0ce83b7655c58ca8efdcb79d21036ea249da95afec2c6
  - kind: registry
    name: fastrand
    version: 2.3.0
    sha: 37909eebbb50d72f9059c3b6d82c0463f2ff062c9e95845c43a6c9c0355411be
  - kind: registry
    name: filetime
    version: 0.2.26
    sha: bc0505cd1b6fa6580283f6bdf70a73fcf4aba1184038c90902b92b3dd0df63ed
  - kind: registry
    name: find-msvc-tools
    version: 0.1.4
    sha: 52051878f80a721bb68ebfbc930e07b65ba72f2da88968ea5c06fd6ca3d3a127
  - kind: registry
    name: flate2
    version: 1.1.5
    sha: bfe33edd8e85a12a67454e37f8c75e730830d83e313556ab9ebf9ee7fbeb3bfb
  - kind: registry
    name: fn-error-context
    version: 0.2.1
    sha: 2cd66269887534af4b0c3e3337404591daa8dc8b9b2b3db71f9523beb4bafb41
  - kind: registry
    name: fnv
    version: 1.0.7
    sha: 3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1
  - kind: registry
    name: foreign-types
    version: 0.3.2
    sha: f6f339eb8adc052cd2ca78910fda869aefa38d22d5cb648e6485e4d3fc06f3b1
  - kind: registry
    name: foreign-types-shared
    version: 0.1.1
    sha: 00b0228411908ca8685dba7fc2cdd70ec9990a6e753e89b6ac91a84c40fbaf4b
  - kind: registry
    name: fs-set-times
    version: 0.20.3
    sha: 94e7099f6313ecacbe1256e8ff9d617b75d1bcb16a6fddef94866d225a01a14a
  - kind: registry
    name: futures-channel
    version: 0.3.31
    sha: 2dff15bf788c671c1934e366d07e30c1814a8ef514e1af724a602e8a2fbe1b10
  - kind: registry
    name: futures-core
    version: 0.3.31
    sha: 05f29059c0c2090612e8d742178b0580d2dc940c837851ad723096f87af6663e
  - kind: registry
    name: futures-executor
    version: 0.3.31
    sha: 1e28d1d997f585e54aebc3f97d39e72338912123a67330d723fdbb564d646c9f
  - kind: registry
    name: futures-io
    version: 0.3.31
    sha: 9e5c1b78ca4aae1ac06c48a526a655760685149f0d465d21f37abfe57ce075c6
  - kind: registry
    name: futures-macro
    version: 0.3.31
    sha: 162ee34ebcb7c64a8abebc059ce0fee27c2262618d7b60ed8faf72fef13c3650
  - kind: registry
    name: futures-sink
    version: 0.3.31
    sha: e575fab7d1e0dcb8d0c7bcf9a63ee213816ab51902e6d244a95819acacf1d4f7
  - kind: registry
    name: futures-task
    version: 0.3.31
    sha: f90f7dce0722e95104fcb095585910c0977252f286e354b5e3bd38902cd99988
  - kind: registry
    name: futures-util
    version: 0.3.31
    sha: 9fa08315bb612088cc391249efdc3bc77536f16c91f6cf495e6fbe85b20a4a81
  - kind: registry
    name: generic-array
    version: 0.14.9
    sha: 4bb6743198531e02858aeaea5398fcc883e71851fcbcb5a2f773e2fb6cb1edf2
  - kind: registry
    name: getopts
    version: 0.2.24
    sha: cfe4fbac503b8d1f88e6676011885f34b7174f46e59956bba534ba83abded4df
  - kind: registry
    name: getrandom
    version: 0.2.16
    sha: 335ff9f135e4384c8150d6f27c6daed433577f86b4750418338c01a1a2528592
  - kind: registry
    name: getrandom
    version: 0.3.4
    sha: 899def5c37c4fd7b2664648c28120ecec138e4d395b459e5ca34f9cce2dd77fd
  - kind: registry
    name: getset
    version: 0.1.6
    sha: 9cf0fc11e47561d47397154977bc219f4cf809b2974facc3ccb3b89e2436f912
  - kind: registry
    name: gio
    version: 0.20.12
    sha: 8e27e276e7b6b8d50f6376ee7769a71133e80d093bdc363bd0af71664228b831
  - kind: registry
    name: gio-sys
    version: 0.20.10
    sha: 521e93a7e56fc89e84aea9a52cfc9436816a4b363b030260b699950ff1336c83
  - kind: registry
    name: glib
    version: 0.20.12
    sha: ffc4b6e352d4716d84d7dde562dd9aee2a7d48beb872dd9ece7f2d1515b2d683
  - kind: registry
    name: glib-macros
    version: 0.20.12
    sha: e8084af62f09475a3f529b1629c10c429d7600ee1398ae12dd3bf175d74e7145
  - kind: registry
    name: glib-sys
    version: 0.20.10
    sha: 8ab79e1ed126803a8fb827e3de0e2ff95191912b8db65cee467edb56fc4cc215
  - kind: registry
    name: gobject-sys
    version: 0.20.10
    sha: ec9aca94bb73989e3cfdbf8f2e0f1f6da04db4d291c431f444838925c4c63eda
  - kind: registry
    name: gvariant
    version: 0.5.1
    sha: 748b888e9db06c42fef01ec5958d0955fd8813b3d6b5d3bb8b21713806abca04
  - kind: registry
    name: gvariant-macro
    version: 0.5.1
    sha: 88bee3fdb16eb087e08c38ea50f796c75085659c8a70b6928a8c9f3c7449beb5
  - kind: registry
    name: hashbrown
    version: 0.16.0
    sha: 5419bdc4f6a9207fbeba6d11b604d481addf78ecd10c11ad51e76c2f6482748d
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - kind: registry
    name: hmac
    version: 0.12.1
    sha: 6c49c37c09c17a53d937dfbb742eb3a961d65a994e6bcdcf37e7399d0cc8ab5e
  - kind: registry
    name: iana-time-zone
    version: 0.1.64
    sha: 33e57f83510bb73707521ebaffa789ec8caf86f9657cad665b092b581d40e9fb
  - kind: registry
    name: iana-time-zone-haiku
    version: 0.1.2
    sha: f31827a206f56af32e590ba56d5d2d085f558508192593743f16b2306495269f
  - kind: registry
    name: ident_case
    version: 1.0.1
    sha: b9e0384b61958566e926dc50660321d12159025e767c18e043daf26b70104c39
  - kind: registry
    name: indexmap
    version: 2.12.0
    sha: 6717a8d2a5a929a1a2eb43a12812498ed141a0bcfb7e8f7844fbdbe4303bba9f
  - kind: registry
    name: indicatif
    version: 0.17.11
    sha: 183b3088984b400f4cfac3620d5e076c84da5364016b4f49473de574b2586235
  - kind: registry
    name: indicatif
    version: 0.18.2
    sha: ade6dfcba0dfb62ad59e59e7241ec8912af34fd29e0e743e3db992bd278e8b65
  - kind: registry
    name: indoc
    version: 2.0.7
    sha: 79cf5c93f93228cf8efb3ba362535fb11199ac548a09ce117c9b1adc3030d706
  - kind: registry
    name: io-extras
    version: 0.18.4
    sha: 2285ddfe3054097ef4b2fe909ef8c3bcd1ea52a8f0d274416caebeef39f04a65
  - kind: registry
    name: io-lifetimes
    version: 2.0.4
    sha: 06432fb54d3be7964ecd3649233cddf80db2832f47fec34c01f65b3d9d774983
  - kind: registry
    name: io-lifetimes
    version: 3.0.1
    sha: 2f0fb0570afe1fed943c5c3d4102d5358592d8625fda6a0007fdbe65a92fba96
  - kind: registry
    name: ipnet
    version: 2.11.0
    sha: 469fb0b9cefa57e3ef31275ee7cacb78f2fdca44e4765491884a2b119d4eb130
  - kind: registry
    name: is_terminal_polyfill
    version: 1.70.2
    sha: a6cb138bb79a146c1bd460005623e142ef0181e3d0219cb493e02f7d08a35695
  - kind: registry
    name: itertools
    version: 0.14.0
    sha: 2b192c782037fadd9cfa75548310488aabdbf3d2da73885b31bd0abd03351285
  - kind: registry
    name: itoa
    version: 1.0.15
    sha: 4a5f13b858c8d314ee3e8f639011f7ccefe71f97f96e50151fb991f267928e2c
  - kind: registry
    name: jobserver
    version: 0.1.34
    sha: 9afb3de4395d6b3e67a780b6de64b51c978ecf11cb9a462c66be7d4ca9039d33
  - kind: registry
    name: js-sys
    version: 0.3.82
    sha: b011eec8cc36da2aab2d5cff675ec18454fad408585853910a202391cf9f8e65
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: libc
    version: 0.2.177
    sha: 2874a2af47a2325c2001a6e6fad9b16a53b802102b528163885171cf92b15976
  - kind: registry
    name: liboverdrop
    version: 0.1.0
    sha: 08e5373d7512834e2fbbe4100111483a99c28ca3818639f67ab2337672301f8e
  - kind: registry
    name: libredox
    version: 0.1.10
    sha: 416f7e718bdb06000964960ffa43b4335ad4012ae8b99060261aa4a8088d5ccb
  - kind: registry
    name: libsystemd
    version: 0.7.2
    sha: 19c97a761fc86953c5b885422b22c891dbf5bcb9dcc99d0110d6ce4c052759f0
  - kind: registry
    name: libtest-mimic
    version: 0.8.1
    sha: 5297962ef19edda4ce33aaa484386e0a5b3d7f2f4e037cbeee00503ef6b29d33
  - kind: registry
    name: libz-sys
    version: 1.1.22
    sha: 8b70e7a7df205e92a1a4cd9aaae7898dac0aa555503cc0a649494d0d60e7651d
  - kind: registry
    name: linkme
    version: 0.3.35
    sha: 5e3283ed2d0e50c06dd8602e0ab319bb048b6325d0bba739db64ed8205179898
  - kind: registry
    name: linkme-impl
    version: 0.3.35
    sha: e5cec0ec4228b4853bb129c84dbf093a27e6c7a20526da046defc334a1b017f7
  - kind: registry
    name: linux-raw-sys
    version: 0.11.0
    sha: df1d3c3b53da64cf5760482273a98e575c651a67eec7f77df96b5b642de8f039
  - kind: registry
    name: litrs
    version: 1.0.0
    sha: 11d3d7f243d5c5a8b9bb5d6dd2b1602c0cb0b9db1621bafc7ed66e35ff9fe092
  - kind: registry
    name: lock_api
    version: 0.4.14
    sha: 224399e74b87b5f3557511d98dff8b14089b3dadafcab6bb93eab67d3aace965
  - kind: registry
    name: log
    version: 0.4.28
    sha: 34080505efa8e45a4b816c349525ebe327ceaa8559756f0356cba97ef3bf7432
  - kind: registry
    name: mandown
    version: 1.1.0
    sha: 9edef1e8731732e8977534921abcef085c2308096092e7294b1bb2629589908f
  - kind: registry
    name: matchers
    version: 0.2.0
    sha: d1525a2a28c7f4fa0fc98bb91ae755d1e2d1505079e05539e35bc876b5d65ae9
  - kind: registry
    name: maybe-owned
    version: 0.3.4
    sha: 4facc753ae494aeb6e3c22f839b158aebd4f9270f55cd3c79906c45476c47ab4
  - kind: registry
    name: md-5
    version: 0.10.6
    sha: d89e7ee0cfbedfc4da3340218492196241d89eefb6dab27de5df917a6d2e78cf
  - kind: registry
    name: memchr
    version: 2.7.6
    sha: f52b00d39961fc5b2736ea853c9cc86238e165017a493d1d5c8eac6bdc4cc273
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: miniz_oxide
    version: 0.8.9
    sha: 1fa76a2c86f704bdb222d66965fb3d63269ce38518b83cb0575fca855ebb6316
  - kind: registry
    name: mio
    version: 1.1.0
    sha: 69d83b0086dc8ecf3ce9ae2874b2d1290252e2a30720bea58a5c6639b0092873
  - kind: registry
    name: nix
    version: 0.29.0
    sha: 71e2746dc3a24dd78b3cfcb7be93368c6de9963d30f43a6a73998a9cf4b17b46
  - kind: registry
    name: nix
    version: 0.30.1
    sha: 74523f3a35e05aba87a1d978330aef40f67b0304ac79c1c00b294c9830543db6
  - kind: registry
    name: nom
    version: 8.0.0
    sha: df9761775871bdef83bee530e60050f7e54b1105350d6884eb0fb4f46c2f9405
  - kind: registry
    name: nu-ansi-term
    version: 0.50.3
    sha: 7957b9740744892f114936ab4a57b3f487491bbeafaf8083688b16841a4240e5
  - kind: registry
    name: num-traits
    version: 0.2.19
    sha: 071dfc062690e90b734c0b2273ce72ad0ffa95f0c74596bc250dcfd960262841
  - kind: registry
    name: number_prefix
    version: 0.4.0
    sha: 830b246a0e5f20af87141b25c173cd1b609bd7779a4617d6ec582abaf90870f3
  - kind: registry
    name: oci-spec
    version: 0.8.3
    sha: 2eb4684653aeaba48dea019caa17b2773e1212e281d50b6fa759f36fe032239d
  - kind: registry
    name: ocidir
    version: 0.6.0
    sha: 92e746e3e6a7bb57a72ea4f0b8085f84aedaab1d537a5dc5488fd3cd5af0cd67
  - kind: registry
    name: once_cell
    version: 1.21.3
    sha: 42f5e15c9953c5e4ccceeb2e7382a716482c34515315f7b03532b8b4e8393d2d
  - kind: registry
    name: once_cell_polyfill
    version: 1.70.2
    sha: 384b8ab6d37215f3c5301a95a4accb5d64aa607f1fcb26a11b5303878451b4fe
  - kind: registry
    name: openssh-keys
    version: 0.6.5
    sha: 351339c4d45e6bdf2defef3ef1ce0b153810bd59b171b92b6a42e7bb0f32a4ad
  - kind: registry
    name: openssl
    version: 0.10.75
    sha: 08838db121398ad17ab8531ce9de97b244589089e290a384c900cb9ff7434328
  - kind: registry
    name: openssl-macros
    version: 0.1.1
    sha: a948666b637a0f465e8564c73e89d4dde00d72d4d473cc972f390fc3dcee7d9c
  - kind: registry
    name: openssl-sys
    version: 0.9.111
    sha: 82cab2d520aa75e3c58898289429321eb788c3106963d0dc886ec7a5f4adc321
  - kind: registry
    name: ostree
    version: 0.20.5
    sha: fc7b42858b9c42999daefaf06f2a60a0dfbb6995a7b87deb0a873f2fb447c269
  - kind: registry
    name: ostree-sys
    version: 0.15.3
    sha: 7aaaff741a79d31706e713a3971cfc670dfd969321e758b758b3fe79e3cdad49
  - kind: registry
    name: owo-colors
    version: 4.2.3
    sha: 9c6901729fa79e91a0913333229e9ca5dc725089d1c363b2f4b4760709dc4a52
  - kind: registry
    name: parking_lot
    version: 0.12.5
    sha: 93857453250e3077bd71ff98b6a65ea6621a19bb0f559a85248955ac12c45a1a
  - kind: registry
    name: parking_lot_core
    version: 0.9.12
    sha: 2621685985a2ebf1c516881c026032ac7deafcda1a2c9b7850dc81e3dfcb64c1
  - kind: registry
    name: pin-project
    version: 1.1.10
    sha: 677f1add503faace112b9f1373e43e9e054bfdd22ff1a63c1bc485eaec6a6a8a
  - kind: registry
    name: pin-project-internal
    version: 1.1.10
    sha: 6e918e4ff8c4549eb882f14b3a4bc8c8bc93de829416eacf579f1207a8fbf861
  - kind: registry
    name: pin-project-lite
    version: 0.2.16
    sha: 3b3cff922bd51709b605d9ead9aa71031d81447142d828eb4a6eba76fe619f9b
  - kind: registry
    name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - kind: registry
    name: pkg-config
    version: 0.3.32
    sha: 7edddbd0b52d732b21ad9a5fab5c704c14cd949e5e9a1ec5929a24fded1b904c
  - kind: registry
    name: portable-atomic
    version: 1.11.1
    sha: f84267b20a16ea918e43c6a88433c2d54fa145c92a811b5b047ccbe153674483
  - kind: registry
    name: ppv-lite86
    version: 0.2.21
    sha: 85eae3c4ed2f50dcfe72643da4befc30deadb458a9b590d720cde2f2b1e97da9
  - kind: registry
    name: proc-macro-crate
    version: 3.4.0
    sha: 219cb19e96be00ab2e37d6e299658a0cfa83e52429179969b0f0121b4ac46983
  - kind: registry
    name: proc-macro-error-attr2
    version: 2.0.0
    sha: 96de42df36bb9bba5542fe9f1a054b8cc87e172759a1868aa05c1f3acc89dfc5
  - kind: registry
    name: proc-macro-error2
    version: 2.0.1
    sha: 11ec05c52be0a07b08061f7dd003e7d7092e0472bc731b4af7bb1ef876109802
  - kind: registry
    name: proc-macro2
    version: 1.0.103
    sha: 5ee95bc4ef87b8d5ba32e8b7714ccc834865276eab0aed5c9958d00ec45f49e8
  - kind: registry
    name: pulldown-cmark
    version: 0.13.0
    sha: 1e8bbe1a966bd2f362681a44f6edce3c2310ac21e4d5067a6e7ec396297a6ea0
  - kind: registry
    name: pulldown-cmark-escape
    version: 0.11.0
    sha: 007d8adb5ddab6f8e3f491ac63566a7d5002cc7ed73901f72057943fa71ae1ae
  - kind: registry
    name: quickcheck
    version: 1.0.3
    sha: 588f6378e4dd99458b60ec275b4477add41ce4fa9f64dcba6f15adccb19b50d6
  - kind: registry
    name: quote
    version: 1.0.42
    sha: a338cc41d27e6cc6dce6cefc13a0729dfbb81c262b1f519331575dd80ef3067f
  - kind: registry
    name: r-efi
    version: 5.3.0
    sha: 69cdb34c158ceb288df11e18b4bd39de994f6657d83847bdffdbd7f346754b0f
  - kind: registry
    name: rand
    version: 0.8.5
    sha: 34af8d1a0e25924bc5b7c43c079c942339d8f0a8b57c39049bef581b46327404
  - kind: registry
    name: rand
    version: 0.9.2
    sha: 6db2770f06117d490610c7488547d543617b21bfa07796d7a12f6f1bd53850d1
  - kind: registry
    name: rand_chacha
    version: 0.3.1
    sha: e6c10a63a0fa32252be49d21e7709d4d4baf8d231c2dbce1eaa8141b9b127d88
  - kind: registry
    name: rand_chacha
    version: 0.9.0
    sha: d3022b5f1df60f26e1ffddd6c66e8aa15de382ae63b3a0c1bfc0e4d3e3f325cb
  - kind: registry
    name: rand_core
    version: 0.6.4
    sha: ec0be4795e2f6a28069bec0b5ff3e2ac9bafc99e6a9a7dc3547996c5c816922c
  - kind: registry
    name: rand_core
    version: 0.9.3
    sha: 99d9a13982dcf210057a8a78572b2217b667c3beacbf3a0d8b454f6f82837d38
  - kind: registry
    name: redox_syscall
    version: 0.5.18
    sha: ed2bf2547551a7053d6fdfafda3f938979645c44812fbfcda098faae3f1a362d
  - kind: registry
    name: ref-cast
    version: 1.0.25
    sha: f354300ae66f76f1c85c5f84693f0ce81d747e2c3f21a45fef496d89c960bf7d
  - kind: registry
    name: ref-cast-impl
    version: 1.0.25
    sha: b7186006dcb21920990093f30e3dea63b7d6e977bf1256be20c3563a5db070da
  - kind: registry
    name: regex
    version: 1.12.2
    sha: 843bc0191f75f3e22651ae5f1e72939ab2f72a4bc30fa80a066bd66edefc24d4
  - kind: registry
    name: regex-automata
    version: 0.4.13
    sha: 5276caf25ac86c8d810222b3dbb938e512c55c6831a10f3e6ed1c93b84041f1c
  - kind: registry
    name: regex-syntax
    version: 0.8.8
    sha: 7a2d987857b319362043e95f5353c0535c1f58eec5336fdfcf626430af7def58
  - kind: registry
    name: rexpect
    version: 0.6.2
    sha: 2c1bcd4ac488e9d2d726d147031cceff5cff6425011ff1914049739770fa4726
  - kind: registry
    name: roff
    version: 0.2.2
    sha: 88f8660c1ff60292143c98d08fc6e2f654d722db50410e3f3797d40baaf9d8f3
  - kind: registry
    name: rustix
    version: 1.1.2
    sha: cd15f8a2c5551a84d56efdc1cd049089e409ac19a3072d5037a17fd70719ff3e
  - kind: registry
    name: rustix-linux-procfs
    version: 0.1.1
    sha: 2fc84bf7e9aa16c4f2c758f27412dc9841341e16aa682d9c7ac308fe3ee12056
  - kind: registry
    name: rustversion
    version: 1.0.22
    sha: b39cdef0fa800fc44525c84ccb54a029961a8215f9619753635a9c0d2538d46d
  - kind: registry
    name: ryu
    version: 1.0.20
    sha: 28d3b2b1366ec20994f1fd18c3c594f05c5dd4bc44d8bb0c1c632c8d6829481f
  - kind: registry
    name: schemars
    version: 1.1.0
    sha: 9558e172d4e8533736ba97870c4b2cd63f84b382a3d6eb063da41b91cce17289
  - kind: registry
    name: schemars_derive
    version: 1.1.0
    sha: 301858a4023d78debd2353c7426dc486001bddc91ae31a76fb1f55132f7e2633
  - kind: registry
    name: scopeguard
    version: 1.2.0
    sha: 94143f37725109f92c262ed2cf5e59bce7498c01bcc1502d7b9afe439a4e9f49
  - kind: registry
    name: semver
    version: 1.0.27
    sha: d767eb0aabc880b29956c35734170f26ed551a859dbd361d140cdbeca61ab1e2
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
    name: serde_derive_internals
    version: 0.29.1
    sha: 18d26a20a969b9e3fdf2fc2d9f21eda6c40e2de84c9408bb5d3b05d499aae711
  - kind: registry
    name: serde_ignored
    version: 0.1.14
    sha: 115dffd5f3853e06e746965a20dcbae6ee747ae30b543d91b0e089668bb07798
  - kind: registry
    name: serde_json
    version: 1.0.145
    sha: 402a6f66d8c709116cf22f558eab210f5a50187f702eb4d7e5ef38d9a7f1c79c
  - kind: registry
    name: serde_spanned
    version: 1.0.3
    sha: e24345aa0fe688594e73770a5f6d1b216508b4f93484c0026d521acd30134392
  - kind: registry
    name: serde_yaml
    version: 0.9.34+deprecated
    sha: 6a8b1a1a2ebf674015cc02edccce75287f1a0130d394307b36743c2f5d504b47
  - kind: registry
    name: sha2
    version: 0.10.9
    sha: a7507d819769d01a365ab707794a4084392c824f54a7a6a7862f8c3d0892b283
  - kind: registry
    name: sharded-slab
    version: 0.1.7
    sha: f40ca3c46823713e0d4209592e8d6e826aa57e928f09752619fc696c499637f6
  - kind: registry
    name: shell-words
    version: 1.1.0
    sha: 24188a676b6ae68c3b2cb3a01be17fbf7240ce009799bb56d5b1409051e78fde
  - kind: registry
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
  - kind: registry
    name: signal-hook
    version: 0.3.18
    sha: d881a16cf4426aa584979d30bd82cb33429027e42122b169753d6ef1085ed6e2
  - kind: registry
    name: signal-hook-mio
    version: 0.2.5
    sha: b75a19a7a740b25bc7944bdee6172368f988763b744e3d4dfe753f6b4ece40cc
  - kind: registry
    name: signal-hook-registry
    version: 1.4.6
    sha: b2a4719bff48cee6b39d12c020eeb490953ad2443b7055bd0b21fca26bd8c28b
  - kind: registry
    name: simd-adler32
    version: 0.3.7
    sha: d66dc143e6b11c1eddc06d5c423cfc97062865baf299914ab64caa38182078fe
  - kind: registry
    name: similar
    version: 2.7.0
    sha: bbbb5d9659141646ae647b42fe094daf6c6192d1620870b449d9557f748b2daa
  - kind: registry
    name: similar-asserts
    version: 1.7.0
    sha: b5b441962c817e33508847a22bd82f03a30cff43642dc2fae8b050566121eb9a
  - kind: registry
    name: slab
    version: 0.4.11
    sha: 7a2ae44ef20feb57a68b23d846850f861394c2e02dc425a50098ae8c90267589
  - kind: registry
    name: smallvec
    version: 1.15.1
    sha: 67b1b7a3b5fe4f1376887184045fcf45c69e92af734b7aaddc05fb777b6fbd03
  - kind: registry
    name: socket2
    version: 0.6.1
    sha: 17129e116933cf371d018bb80ae557e889637989d8638274fb25622827b03881
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
    name: subtle
    version: 2.6.1
    sha: 13c2bddecc57b384dee18652358fb23172facb8a2c51ccc10d74c157bdea3292
  - kind: registry
    name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - kind: registry
    name: syn
    version: 2.0.109
    sha: 2f17c7e013e88258aa9543dcbe81aca68a667a9ac37cd69c9fbc07858bfe0e2f
  - kind: registry
    name: system-deps
    version: 7.0.7
    sha: 48c8f33736f986f16d69b6cb8b03f55ddcad5c41acc4ccc39dd88e84aa805e7f
  - kind: registry
    name: tar
    version: 0.4.44
    sha: 1d863878d212c87a19c1a610eb53bb01fe12951c0501cf5a0d65f724914a667a
  - kind: registry
    name: target-lexicon
    version: 0.13.3
    sha: df7f62577c25e07834649fc3b39fafdc597c0a3527dc1c60129201ccfcbaa50c
  - kind: registry
    name: tempfile
    version: 3.23.0
    sha: 2d31c77bdf42a745371d260a26ca7163f1e0924b64afa0b688e61b5a9fa02f16
  - kind: registry
    name: thiserror
    version: 1.0.69
    sha: b6aaf5339b578ea85b50e080feb250a3e8ae8cfcdff9a461c9ec2904bc923f52
  - kind: registry
    name: thiserror
    version: 2.0.17
    sha: f63587ca0f12b72a0600bcba1d40081f830876000bb46dd2337a3051618f4fc8
  - kind: registry
    name: thiserror-impl
    version: 1.0.69
    sha: 4fee6c4efc90059e10f81e6d42c60a18f76588c3d74cb83a0b242a2b6c7504c1
  - kind: registry
    name: thiserror-impl
    version: 2.0.17
    sha: 3ff15c8ecd7de3849db632e14d18d2571fa09dfc5ed93479bc4485c7a517c913
  - kind: registry
    name: thread_local
    version: 1.1.9
    sha: f60246a4944f24f6e018aa17cdeffb7818b76356965d03b07d6a9886e8962185
  - kind: registry
    name: tini
    version: 1.3.0
    sha: e004df4c5f0805eb5f55883204a514cfa43a6d924741be29e871753a53d5565a
  - kind: registry
    name: tokio
    version: 1.48.0
    sha: ff360e02eab121e0bc37a2d3b4d4dc622e6eda3a8e5253d5435ecf5bd4c68408
  - kind: registry
    name: tokio-macros
    version: 2.6.0
    sha: af407857209536a95c8e56f8231ef2c2e2aff839b22e07a1ffcbc617e9db9fa5
  - kind: registry
    name: tokio-stream
    version: 0.1.17
    sha: eca58d7bba4a75707817a2c44174253f9236b2d5fbd055602e9d5c07c139a047
  - kind: registry
    name: tokio-util
    version: 0.7.17
    sha: 2efa149fe76073d6e8fd97ef4f4eca7b67f599660115591483572e406e165594
  - kind: registry
    name: toml
    version: 0.9.8
    sha: f0dc8b1fb61449e27716ec0e1bdf0f6b8f3e8f6b05391e8497b8b6d7804ea6d8
  - kind: registry
    name: toml_datetime
    version: 0.7.3
    sha: f2cdb639ebbc97961c51720f858597f7f24c4fc295327923af55b74c3c724533
  - kind: registry
    name: toml_edit
    version: 0.23.7
    sha: 6485ef6d0d9b5d0ec17244ff7eb05310113c3f316f2d14200d4de56b3cb98f8d
  - kind: registry
    name: toml_parser
    version: 1.0.4
    sha: c0cbe268d35bdb4bb5a56a2de88d0ad0eb70af5384a99d648cd4b3d04039800e
  - kind: registry
    name: toml_writer
    version: 1.0.4
    sha: df8b2b54733674ad286d16267dcfc7a71ed5c776e4ac7aa3c3e2561f7c637bf2
  - kind: registry
    name: tracing
    version: 0.1.41
    sha: 784e0ac535deb450455cbfa28a6f0df145ea1bb7ae51b821cf5e7927fdcfbdd0
  - kind: registry
    name: tracing-attributes
    version: 0.1.30
    sha: 81383ab64e72a7a8b8e13130c49e3dab29def6d0c7d76a03087b3cf71c5c6903
  - kind: registry
    name: tracing-core
    version: 0.1.34
    sha: b9d12581f227e93f094d3af2ae690a574abb8a2b9b7a96e7cfe9647b2b617678
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
    name: typenum
    version: 1.19.0
    sha: 562d481066bde0658276a35467c4af00bdc6ee726305698a55b86e61d7ad82bb
  - kind: registry
    name: uapi-version
    version: 0.4.0
    sha: 849f6b1fe8a0fb07170737d7f3acf72cac5462fb3f4e86614474a49f7fac3b65
  - kind: registry
    name: unicase
    version: 2.8.1
    sha: 75b844d17643ee918803943289730bec8aac480150456169e647ed0b576ba539
  - kind: registry
    name: unicode-ident
    version: 1.0.22
    sha: 9312f7c4f6ff9069b165498234ce8be658059c6728633667c526e27dc2cf1df5
  - kind: registry
    name: unicode-segmentation
    version: 1.12.0
    sha: f6ccf251212114b54433ec949fd6a7841275f9ada20dddd2f29e9ceea4501493
  - kind: registry
    name: unicode-width
    version: 0.2.2
    sha: b4ac048d71ede7ee76d585517add45da530660ef4390e49b098733c6e897f254
  - kind: registry
    name: unicode-xid
    version: 0.2.6
    sha: ebc1c04c71510c7f702b52b7c350734c9ff1295c464a03335b00bb84fc54f853
  - kind: registry
    name: unit-prefix
    version: 0.5.1
    sha: 323402cff2dd658f39ca17c789b502021b3f18707c91cdf22e3838e1b4023817
  - kind: registry
    name: unsafe-libyaml
    version: 0.2.11
    sha: 673aac59facbab8a9007c7f6108d11f63b603f7cabff99fabf650fea5c32b861
  - kind: registry
    name: utf8parse
    version: 0.2.2
    sha: 06abde3611657adf66d383f00b093d7faecc7fa57071cce2578660c9f1010821
  - kind: registry
    name: uuid
    version: 1.18.1
    sha: 2f87b8aa10b915a06587d0dec516c282ff295b475d94abf425d62b57710070a2
  - kind: registry
    name: uzers
    version: 0.12.1
    sha: 4df81ff504e7d82ad53e95ed1ad5b72103c11253f39238bcc0235b90768a97dd
  - kind: registry
    name: valuable
    version: 0.1.1
    sha: ba73ea9cf16a25df0c8caa16c51acb937d5712a8429db78a3ee29d5dcacd3a65
  - kind: registry
    name: vcpkg
    version: 0.2.15
    sha: accd4ea62f7bb7a82fe23066fb0957d48ef677f6eeb8215f372f52e48bb32426
  - kind: registry
    name: version-compare
    version: 0.2.1
    sha: 03c2856837ef78f57382f06b2b8563a2f512f7185d732608fd9176cb3b8edf0e
  - kind: registry
    name: version_check
    version: 0.9.5
    sha: 0b928f33d975fc6ad9f86c8f283853ad26bdd5b10b7f1542aa2fa15e2289105a
  - kind: registry
    name: wasi
    version: 0.11.1+wasi-snapshot-preview1
    sha: ccf3ec651a847eb01de73ccad15eb7d99f80485de043efb2f370cd654f4ea44b
  - kind: registry
    name: wasip2
    version: 1.0.1+wasi-0.2.4
    sha: 0562428422c63773dad2c345a1882263bbf4d65cf3f42e90921f787ef5ad58e7
  - kind: registry
    name: wasm-bindgen
    version: 0.2.105
    sha: da95793dfc411fbbd93f5be7715b0578ec61fe87cb1a42b12eb625caa5c5ea60
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.105
    sha: 04264334509e04a7bf8690f2384ef5265f05143a4bff3889ab7a3269adab59c2
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.105
    sha: 420bc339d9f322e562942d52e115d57e950d12d88983a14c79b86859ee6c7ebc
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.105
    sha: 76f218a38c84bcb33c25ec7059b07847d465ce0e0a76b995e134a45adcb6af76
  - kind: registry
    name: web-time
    version: 1.1.0
    sha: 5a6580f308b1fad9207618087a65c04e7a10bc77e02c8e84e9b00dd4b12fa0bb
  - kind: registry
    name: which
    version: 8.0.0
    sha: d3fabb953106c3c8eea8306e4393700d7657561cb43122571b172bbfb7c7ba1d
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
    version: 0.62.2
    sha: b8e83a14d34d0623b51dce9581199302a221863196a1dde71a7663a4c2be9deb
  - kind: registry
    name: windows-implement
    version: 0.60.2
    sha: 053e2e040ab57b9dc951b72c264860db7eb3b0200ba345b4e4c3b14f67855ddf
  - kind: registry
    name: windows-interface
    version: 0.59.3
    sha: 3f316c4a2570ba26bbec722032c4099d8c8bc095efccdc15688708623367e358
  - kind: registry
    name: windows-link
    version: 0.2.1
    sha: f0805222e57f7521d6a62e36fa9163bc891acd422f971defe97d64e70d0a4fe5
  - kind: registry
    name: windows-result
    version: 0.4.1
    sha: 7781fa89eaf60850ac3d2da7af8e5242a5ea78d1a11c49bf2910bb5a73853eb5
  - kind: registry
    name: windows-strings
    version: 0.5.1
    sha: 7837d08f69c77cf6b07689544538e017c1bfcf57e34b4c0ff58e6c2cd3b37091
  - kind: registry
    name: windows-sys
    version: 0.59.0
    sha: 1e38bc4d79ed67fd075bcc251a1c39b32a1776bbe92e5bef1f0bf1f8c531853b
  - kind: registry
    name: windows-sys
    version: 0.60.2
    sha: f2f500e4d28234f72040990ec9d39e3a6b950f9f22d3dba18416c35882612bcb
  - kind: registry
    name: windows-sys
    version: 0.61.2
    sha: ae137229bcbd6cdf0f7b80a31df61766145077ddf49416a728b02cb3921ff3fc
  - kind: registry
    name: windows-targets
    version: 0.52.6
    sha: 9b724f72796e036ab90c1021d4780d4d3d648aca59e491e6b98e725b84e99973
  - kind: registry
    name: windows-targets
    version: 0.53.5
    sha: 4945f9f551b88e0d65f3db0bc25c33b8acea4d9e41163edf90dcd0b19f9069f3
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.52.6
    sha: 32a4622180e7a0ec044bb555404c800bc9fd9ec262ec147edd5989ccd0c02cd3
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.53.1
    sha: a9d8416fa8b42f5c947f8482c43e7d89e73a173cead56d044f6a56104a6d1b53
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.52.6
    sha: 09ec2a7bb152e2252b53fa7803150007879548bc709c039df7627cabbd05d469
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.53.1
    sha: b9d782e804c2f632e395708e99a94275910eb9100b2114651e04744e9b125006
  - kind: registry
    name: windows_i686_gnu
    version: 0.52.6
    sha: 8e9b5ad5ab802e97eb8e295ac6720e509ee4c243f69d781394014ebfe8bbfa0b
  - kind: registry
    name: windows_i686_gnu
    version: 0.53.1
    sha: 960e6da069d81e09becb0ca57a65220ddff016ff2d6af6a223cf372a506593a3
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.52.6
    sha: 0eee52d38c090b3caa76c563b86c3a4bd71ef1a819287c19d586d7334ae8ed66
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.53.1
    sha: fa7359d10048f68ab8b09fa71c3daccfb0e9b559aed648a8f95469c27057180c
  - kind: registry
    name: windows_i686_msvc
    version: 0.52.6
    sha: 240948bc05c5e7c6dabba28bf89d89ffce3e303022809e73deaefe4f6ec56c66
  - kind: registry
    name: windows_i686_msvc
    version: 0.53.1
    sha: 1e7ac75179f18232fe9c285163565a57ef8d3c89254a30685b57d83a38d326c2
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.52.6
    sha: 147a5c80aabfbf0c7d901cb5895d1de30ef2907eb21fbbab29ca94c5b08b1a78
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.53.1
    sha: 9c3842cdd74a865a8066ab39c8a7a473c0778a3f29370b5fd6b4b9aa7df4a499
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.52.6
    sha: 24d5b23dc417412679681396f2b49f3de8c1473deb516bd34410872eff51ed0d
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.53.1
    sha: 0ffa179e2d07eee8ad8f57493436566c7cc30ac536a3379fdf008f47f6bb7ae1
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.52.6
    sha: 589f6da84c646204747d1270a2a5661ea66ed1cced2631d546fdfb155959f9ec
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.53.1
    sha: d6bbff5f0aada427a1e5a6da5f1f98158182f26556f345ac9e04d36d0ebed650
  - kind: registry
    name: winnow
    version: 0.7.13
    sha: 21a0236b59786fed61e2a80582dd500fe61f18b5dca67a4a067d0bc9039339cf
  - kind: registry
    name: winsafe
    version: 0.0.19
    sha: d135d17ab770252ad95e9a872d365cf3090e3be864a34ab46f48555993efc904
  - kind: registry
    name: winx
    version: 0.36.4
    sha: 3f3fd376f71958b862e7afb20cfe5a22830e1963462f3a17f49d82a6c1d1f42d
  - kind: registry
    name: wit-bindgen
    version: 0.46.0
    sha: f17a85883d4e6d00e8a97c586de764dabcc06133f7f1d55dce5cdc070ad7fe59
  - kind: registry
    name: xattr
    version: 1.6.1
    sha: 32e45ad4206f6d2479085147f02bc2ef834ac85886624a23575ae137c8aa8156
  - kind: registry
    name: xshell
    version: 0.2.7
    sha: 9e7290c623014758632efe00737145b6867b66292c42167f2ec381eb566a373d
  - kind: registry
    name: xshell-macros
    version: 0.2.7
    sha: 32ac00cd3f8ec9c1d33fb3e7958a82df6989c42d747bd326c822b1d625283547
  - kind: registry
    name: xxhash-rust
    version: 0.8.15
    sha: fdd20c5420375476fbd4394763288da7eb0cc0b8c11deed431a91562af7335d3
  - kind: registry
    name: zerocopy
    version: 0.8.27
    sha: 0894878a5fa3edfd6da3f88c4805f4c8558e2b996227a3d864f47fe11e38282c
  - kind: registry
    name: zerocopy-derive
    version: 0.8.27
    sha: 88d2b8d9c68ad2b9e4340d7832716a4d21a22a1154777ad56ea55c51a9cf3831
  - kind: registry
    name: zeroize
    version: 1.8.2
    sha: b97154e67e32c85465826e8bcc1c59429aaaf107c1e4a9e53c8d8ccd5eff88d0
  - kind: registry
    name: zstd
    version: 0.13.3
    sha: e91ee311a569c327171651566e07972200e76fcfe2242a4fa446149a3881c08a
  - kind: registry
    name: zstd-safe
    version: 7.2.4
    sha: 8f49c4d5f0abb602a93fb8736af2a4f4dd9512e36f7f570d66e65ff867ed3b9d
  - kind: registry
    name: zstd-sys
    version: 2.0.16+zstd.1.5.7
    sha: 91e19ebc2adc8f83e43039e79776e3fda8ca919132d68a1fed6a5faca2683748
build-depends:
- freedesktop-sdk.bst:components/go-md2man.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:components/composefs.bst
- freedesktop-sdk.bst:components/ostree.bst
- freedesktop-sdk.bst:components/podman.bst
- freedesktop-sdk.bst:components/skopeo.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-install-args: >-
    PREFIX="%{prefix}" LIBDIR="%{lib}" DESTDIR="%{install-root}" install-all
