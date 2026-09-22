kind: meson

sources:
- kind: git_repo
  url: gnome:librsvg.git
  track: main
  ref: 2.63.2-4-g7612431eb02dc009319094f8513d63c1faaecfb4
- kind: cargo2
  ref:
  - kind: registry
    name: adler2
    version: 2.0.1
    sha: 320119579fcad9c21884f5c4861d16174d0e06250625266f50fe6898340abefa
  - kind: registry
    name: aes
    version: 0.9.3
    sha: 35f0f96ce78e38c3dc6d8948aa8163d06385be74000f3c7a95bf1eef35d3ea32
  - kind: registry
    name: ahash
    version: 0.8.12
    sha: 5a15f179cd60c4584b8a8c596927aadc462e27f2ca70c04e0071964a73ba7a75
  - kind: registry
    name: aho-corasick
    version: 1.1.5
    sha: c982642fa9e8606056828ee9a8505737230110bb1099153c79efe865c59d12ba
  - kind: registry
    name: alloca
    version: 0.4.0
    sha: e5a7d05ea6aea7e9e64d25b9156ba2fee3fdd659e34e41063cd2fc7cd020d7f4
  - kind: registry
    name: android_system_properties
    version: 0.1.6
    sha: ae221649c9976a6f6c56ae1facf410f3ddb33cc661c4b7b61020a912d4237fbc
  - kind: registry
    name: anes
    version: 0.1.6
    sha: 4b46cbb362ab8752921c97e041f5e366ee6297bd428a31275b9fcf1e380f7299
  - kind: registry
    name: anstream
    version: 1.0.0
    sha: 824a212faf96e9acacdbd09febd34438f8f711fb84e09a8916013cd7815ca28d
  - kind: registry
    name: anstyle
    version: 1.0.14
    sha: 940b3a0ca603d1eade50a4846a2afffd5ef57a9feac2c0e2ec2e14f9ead76000
  - kind: registry
    name: anstyle-parse
    version: 1.0.0
    sha: 52ce7f38b242319f7cabaa6813055467063ecdc9d355bbb4ce0c68908cd8130e
  - kind: registry
    name: anstyle-query
    version: 1.1.5
    sha: 40c48f72fd53cd289104fc64099abca73db4166ad86ea0b4341abe65af83dadc
  - kind: registry
    name: anstyle-wincon
    version: 3.0.11
    sha: 291e6a250ff86cd4a820112fb8898808a366d8f9f58ce16d1f538353ad55747d
  - kind: registry
    name: approx
    version: 0.5.1
    sha: cab112f0a86d568ea0e627cc1d6be74a1e9cd55214684db5561995f6dad897c6
  - kind: registry
    name: arbitrary
    version: 1.4.2
    sha: c3d036a3c4ab069c7b410a2ce876bd74808d2d0888a82667669f8e783a898bf1
  - kind: registry
    name: assert_cmd
    version: 2.2.2
    sha: 2aa3a22042e45de04255c7bf3626e239f450200fd0493c1e382263544b20aea6
  - kind: registry
    name: autocfg
    version: 1.5.1
    sha: f2032f911046de80f0a198e0901378627c33f59ea0ac00e363d481118bd70a53
  - kind: registry
    name: av-data
    version: 0.4.4
    sha: fca67ba5d317924c02180c576157afd54babe48a76ebc66ce6d34bb8ba08308e
  - kind: registry
    name: bit-set
    version: 0.8.0
    sha: 08807e080ed7f9d5433fa9b275196cfc35414f66a0c79d864dc51a0d825231a3
  - kind: registry
    name: bit-vec
    version: 0.8.0
    sha: 5e764a1d40d510daf35e07be9eb06e75770908c27d411ee6c92109c9840eaaf7
  - kind: registry
    name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - kind: registry
    name: bitflags
    version: 2.13.2
    sha: 3ded4057c258ba199e2d26386d3af3780957ecaee6c4ef4041c6b4b8b97c0b06
  - kind: registry
    name: bitreader
    version: 0.3.11
    sha: 886559b1e163d56c765bc3a985febb4eee8009f625244511d8ee3c432e08c066
  - kind: registry
    name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - kind: registry
    name: block-buffer
    version: 0.12.1
    sha: d2f6c7dbe95a6ed67ad9f18e57daf93a2f034c524b99fd2b76d18fdfeb6660aa
  - kind: registry
    name: block-padding
    version: 0.4.2
    sha: 710f1dd022ef4e93f8a438b4ba958de7f64308434fa6a87104481645cc30068b
  - kind: registry
    name: bstr
    version: 1.13.1
    sha: 6bb31b46c14244e20ee9984b11bf5c992b91fb6939fea616e3512c8baecdbe5f
  - kind: registry
    name: bumpalo
    version: 3.20.3
    sha: 72f5acc6cb2ba439de613abc23857ec3d78374d8ed5ac84e9d11336e87da8649
  - kind: registry
    name: byte-slice-cast
    version: 1.2.3
    sha: 7575182f7272186991736b70173b0ea045398f984bf5ebbb3804736ce1330c9d
  - kind: registry
    name: bytemuck
    version: 1.25.2
    sha: 95832e849adfb21180ccb6826a99da14e5d266ae5c2e668e1602cf234f153797
  - kind: registry
    name: byteorder
    version: 1.5.0
    sha: 1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b
  - kind: registry
    name: byteorder-lite
    version: 0.1.0
    sha: 8f1fe948ff07f4bd06c30984e69f5b4899c516a3ef74f34df92a2df2ab535495
  - kind: registry
    name: bytes
    version: 1.12.1
    sha: fc652a48c352aef3ea3aed32080501cf3ef6ed5da78602a020c991775b0aff04
  - kind: registry
    name: cairo-rs
    version: 0.22.9
    sha: df683f1d30b457964673a5541a4603208ef95ab6873d2a55871895cf310f3b56
  - kind: registry
    name: cairo-sys-rs
    version: 0.22.9
    sha: ee548131103ad8f698c6725669647b9c757b3b66992dd6a026037596417bee21
  - kind: registry
    name: cast
    version: 0.3.0
    sha: 37b2a672a2cb129a2e41c10b1224bb368f9f37a2b16b612598138befd7b37eb5
  - kind: registry
    name: cbc
    version: 0.2.1
    sha: ce2dc9ee5f88d11e0beb842c88b33c8a5cf0d1329c4b19494af42b07dbfe8896
  - kind: registry
    name: cc
    version: 1.4.7
    sha: 54413ede23c2daf518f35156dfde027feb2374004d63bd497f983c8db9c0e313
  - kind: registry
    name: cfg-expr
    version: 0.20.9
    sha: fe4ece8474b5f766c63426647e7b4b316b67431ade1036a8313cee24a03ae917
  - kind: registry
    name: cfg-if
    version: 1.0.5
    sha: 4e7648175b45a9a48536d676f68d918270699102aa8dab5496df06904c914600
  - kind: registry
    name: chacha20
    version: 0.10.2
    sha: 65c35e4b699c7e15ccbe7ee35c005e4fc0a278d22238a2857e6ce2dadeda1b06
  - kind: registry
    name: chrono
    version: 0.4.45
    sha: 1aa79e62e7697b8e29b513a68abacf485adcd1fe8284a4316c5ae868e6633327
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
    name: cipher
    version: 0.5.2
    sha: e8cf2a2c93cd704877c0858356ed03480ff301ee950b43f1cbe4573b088bfa6c
  - kind: registry
    name: clap
    version: 4.6.7
    sha: aa8876b300ab35ba921adea3dfd70157a46249b33f95c9084ae5709785478946
  - kind: registry
    name: clap_builder
    version: 4.6.7
    sha: ec0797fb7aeb1406c84efac526901f7ec3ead2124f946b494e72879d4b54704d
  - kind: registry
    name: clap_complete
    version: 4.6.11
    sha: 037e2a1a92236d0aff7e845093f64661d6df4c02c9fcc61a60e9e1d736fa392f
  - kind: registry
    name: clap_derive
    version: 4.6.7
    sha: f9c751b79415d4e559e3d1fcf128e09e720eb673a06d26cf6f392d37d75b66e0
  - kind: registry
    name: clap_lex
    version: 1.1.1
    sha: 1c133bc6a41be0d194c306b5506d15e6feeea7b1d6604bd3f8310dfb2ca96486
  - kind: registry
    name: color_quant
    version: 1.1.0
    sha: 3d7b894f5411737b7867f4827955924d7c254fc9f4d91a6aad6b097804b1018b
  - kind: registry
    name: colorchoice
    version: 1.0.5
    sha: 1d07550c9036bf2ae0c684c4297d503f838287c83c53686d05370d0e139ae570
  - kind: registry
    name: const-oid
    version: 0.10.2
    sha: a6ef517f0926dd24a1582492c791b6a4818a4d94e789a334894aa15b0d12f55c
  - kind: registry
    name: core-foundation-sys
    version: 0.8.7
    sha: 773648b94d0e5d620f64f280777445740e61fe701025087ec8b57f45c791888b
  - kind: registry
    name: core_detect
    version: 1.0.0
    sha: 7f8f80099a98041a3d1622845c271458a2d73e688351bf3cb999266764b81d48
  - kind: registry
    name: cpubits
    version: 0.1.1
    sha: 15b85f9c39137c3a891689859392b1bd49812121d0d61c9caf00d46ed5ce06ae
  - kind: registry
    name: cpufeatures
    version: 0.3.1
    sha: 5ca28b0ae3115b884660db4118d803791fd6756b6e88f39c0f3f7859060d7566
  - kind: registry
    name: crc32fast
    version: 1.5.2
    sha: 01a7799fd6b852db0e61728dde9a204c423b44d689dbd432522543614b490e78
  - kind: registry
    name: criterion
    version: 0.8.2
    sha: 950046b2aa2492f9a536f5f4f9a3de7b9e2476e575e05bd6c333371add4d98f3
  - kind: registry
    name: criterion-plot
    version: 0.8.2
    sha: d8d80a2f4f5b554395e47b5d8305bc3d27813bacb73493eb1001e8f76dae29ea
  - kind: registry
    name: crossbeam-deque
    version: 0.8.8
    sha: 622f3fc73690be383c7214310406f28a90e6edeadc3cea882f9d71e495b9711a
  - kind: registry
    name: crossbeam-epoch
    version: 0.9.21
    sha: dc74980687109a3b14c72fd458107bf0baa1da1a1a805e178d15501ba9b86d9d
  - kind: registry
    name: crossbeam-utils
    version: 0.8.23
    sha: a31eee39dddec8330830986fcd7625edb5a24ec90ea038215273bbc3adb08ac6
  - kind: registry
    name: crunchy
    version: 0.2.4
    sha: 460fbee9c2c2f33933d720630a6a0bac33ba7053db5344fac858d4b8952d77d5
  - kind: registry
    name: crypto-common
    version: 0.2.2
    sha: ce6e4c961d6cd6c9a86db418387425e8bdeaf05b3c8bc1411e6dca4c252f1453
  - kind: registry
    name: cssparser
    version: 0.37.0
    sha: 8c9cdaae01d5ed7882b04d795e7f752f46ff52d2fa3b50a20d28c464510bba98
  - kind: registry
    name: cssparser-color
    version: 0.5.0
    sha: bbaa233e1dcd9c13a5d3e3a8a2c0f5a727bac380398345dbcb31db4597edc86b
  - kind: registry
    name: cssparser-macros
    version: 0.7.1
    sha: d045de693cb712d0b22c6a64be5b953f67b3ce00ab5ad3dd5d8b441886ab8e1a
  - kind: registry
    name: data-url
    version: 0.3.2
    sha: be1e0bca6c3637f992fc1cc7cbc52a78c1ef6db076dbf1059c4323d6a2048376
  - kind: registry
    name: dav1d
    version: 0.11.1
    sha: 3ee89cb860616069c67520dcd66cacdb900b57c799f634a0eb6d91f6e2a82b61
  - kind: registry
    name: dav1d-sys
    version: 0.8.3
    sha: c3c91aea6668645415331133ed6f8ddf0e7f40160cd97a12d59e68716a58704b
  - kind: registry
    name: defmt
    version: 1.1.1
    sha: e2953bfe4f93bbd20cc71198842756f77d161884c99ebbabc41d80231ded88d1
  - kind: registry
    name: defmt-macros
    version: 1.1.1
    sha: bad9c72e7ca2137e0dc3813245a0d282fd6daad32fd800af018306a9169b5fe8
  - kind: registry
    name: defmt-parser
    version: 1.0.0
    sha: 10d60334b3b2e7c9d91ef8150abfb6fa4c1c39ebbcf4a81c2e346aad939fee3e
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
    name: diff
    version: 0.1.13
    sha: 56254986775e3233ffa9c4d7d3faaf6d36a2c09d30b20687e9f88bc8bafc16c8
  - kind: registry
    name: difflib
    version: 0.4.0
    sha: 6184e33543162437515c2e2b48714794e37845ec9851711914eec9d308f6ebe8
  - kind: registry
    name: digest
    version: 0.11.3
    sha: f1dd6dbb5841937940781866fa1281a1ff7bd3bf827091440879f9994983d5c2
  - kind: registry
    name: displaydoc
    version: 0.2.7
    sha: c6232dd377dcc64799954cbd3a9bb882e9cdc1308ccd87b1c098f1fb2eaf82a8
  - kind: registry
    name: dlib
    version: 0.5.3
    sha: ab8ecd87370524b461f8557c119c405552c396ed91fc0a8eec68679eab26f94a
  - kind: registry
    name: dtoa
    version: 1.0.11
    sha: 4c3cf4824e2d5f025c7b531afcb2325364084a16806f6d47fbc1f5fbd9960590
  - kind: registry
    name: dtoa-short
    version: 0.3.5
    sha: cd1511a7b6a56299bd043a9c167a6d2bfb37bf84a6dfceaba651168adfb43c87
  - kind: registry
    name: ecb
    version: 0.2.1
    sha: 26f2a8b3e564eba0877223dc343703ad0385794e882e6d13f3a4dd5c6b1f41ac
  - kind: registry
    name: either
    version: 1.18.0
    sha: 252afb9ae5eaa683babdc6a068b3f5726eb19e05070c731f9b2a23a7c3e8ed34
  - kind: registry
    name: encoding_rs
    version: 0.8.41
    sha: 7b5ef0006ac9ab233c38522f5ae99cae3625151de8f706cacee1cba4b8e2832a
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
  - kind: registry
    name: errno
    version: 0.3.14
    sha: 39cab71617ae0d63f51a36d69f866391735b51691dbda63cf6f96d042b63efeb
  - kind: registry
    name: fallible_collections
    version: 0.4.9
    sha: a88c69768c0a15262df21899142bc6df9b9b823546d4b4b9a7bc2d6c448ec6fd
  - kind: registry
    name: fastrand
    version: 2.5.0
    sha: da7c62ceae207dd37ea5b845da6a0696c799f85e97da1ab5b7910be3c1c80223
  - kind: registry
    name: fdeflate
    version: 0.3.7
    sha: 1e6853b52649d4ac5c0bd02320cddc5ba956bdb407c4b75a2c6b75bf51500f8c
  - kind: registry
    name: find-msvc-tools
    version: 0.1.13
    sha: ef25905e51abafe4dcea6c15fec58c57b601cdbd0ee53d22ea1d3016c587d39b
  - kind: registry
    name: flate2
    version: 1.1.10
    sha: 6e634e2e0ebac1ee034020da1ca582e17ffe4e0f5e985823721e168928136dcb
  - kind: registry
    name: float-cmp
    version: 0.10.0
    sha: b09cf3155332e944990140d967ff5eceb70df778b34f77d8075db46e4704e6d8
  - kind: registry
    name: fnv
    version: 1.0.7
    sha: 3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1
  - kind: registry
    name: form_urlencoded
    version: 1.2.2
    sha: cb4cb245038516f5f85277875cdaa4f7d2c9a0fa0468de06ed190163b1581fcf
  - kind: registry
    name: futures-channel
    version: 0.3.34
    sha: b1f9e3d69d39e4862ffed03ed071a76f9a13ba1d9109d355b0f0aa6b15e393c4
  - kind: registry
    name: futures-core
    version: 0.3.34
    sha: 92d699e522242e69e3003b94ecc1f960f3a5e015aa7c5d7486e65ad01dd94f5e
  - kind: registry
    name: futures-executor
    version: 0.3.34
    sha: 031b47cf1a3c6cc8bc2fc76cd437f521619387907d469316e7c0bc278f1f5432
  - kind: registry
    name: futures-io
    version: 0.3.34
    sha: 53c0fa8157de1303bfffdaa1cc2a673bfffb60102f76b0ef4441659124373fed
  - kind: registry
    name: futures-macro
    version: 0.3.34
    sha: 9fb9654ba8355388abeb8dcb4fc62f511300867002afc858860463bdd9fe0c44
  - kind: registry
    name: futures-task
    version: 0.3.34
    sha: cd417de3d1d015fc3bfd2b1ea46dfc7bab72ef86f1cc7cc9c78e728b34a6d1fd
  - kind: registry
    name: futures-util
    version: 0.3.34
    sha: 0d50a92467f8ba5dd6e3ee5d4bd04d73ab2e4e1c44474a0674821dfce14b79bc
  - kind: registry
    name: gdk-pixbuf
    version: 0.22.0
    sha: 25f420376dbee041b2db374ce4573892a36222bb3f6c0c43e24f0d67eae9b646
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.22.9
    sha: 9d5209294ba3775f9b650bf78bfadeba4332089f2329b3e2f6ce0a4957a45bff
  - kind: registry
    name: getrandom
    version: 0.3.4
    sha: 899def5c37c4fd7b2664648c28120ecec138e4d395b459e5ca34f9cce2dd77fd
  - kind: registry
    name: getrandom
    version: 0.4.3
    sha: 300e883d756b2e4ec94e02791f39b04b522276138852cfc41d9fb7e904106099
  - kind: registry
    name: gif
    version: 0.14.2
    sha: ee8cfcc411d9adbbaba82fb72661cc1bcca13e8bba98b364e62b2dba8f960159
  - kind: registry
    name: gio
    version: 0.22.9
    sha: b399f4650bb52c051f3fdf49a234e8a27ab5725c8cd774556c55eee64b2c0350
  - kind: registry
    name: gio-sys
    version: 0.22.9
    sha: 6c28739f914c15b87a9856000bed9cbd5b3a8afbca5e982d9a299e1601422cb5
  - kind: registry
    name: gio-unix
    version: 0.22.8
    sha: ce8d768735e229742c135afa3d3326604088d2df0679901cdb05e791fe2fbe0a
  - kind: registry
    name: gio-unix-sys
    version: 0.22.9
    sha: 7c01dbb58f92f67548d85e2209e073acc7ee04e107c7e04ee69b49e38b4933b4
  - kind: registry
    name: gio-win32
    version: 0.22.8
    sha: 9daa423bc3dc24305275d0551882c4c0469c1cf842ab14897cf5ffbb63d95cd4
  - kind: registry
    name: gio-win32-sys
    version: 0.22.9
    sha: 81b96f21f242e3ee9076561f3ff04e8ac1fed20a56da23acfa69890c9d922170
  - kind: registry
    name: glam
    version: 0.30.10
    sha: 19fc433e8437a212d1b6f1e68c7824af3aed907da60afa994e7f542d18d12aa9
  - kind: registry
    name: glam
    version: 0.31.1
    sha: 556f6b2ea90b8d15a74e0e7bb41671c9bdf38cd9f78c284d750b9ce58a2b5be7
  - kind: registry
    name: glam
    version: 0.32.1
    sha: f70749695b063ecbf6b62949ccccde2e733ec3ecbbd71d467dca4e5c6c97cca0
  - kind: registry
    name: glam
    version: 0.33.7
    sha: e762b9b188634fc508d4ec54b62ea3d352c43fd431d18d05d46f559f217f4725
  - kind: registry
    name: glib
    version: 0.22.9
    sha: 18b9b8d350db41f690ec1b87109f202782748bbd8ab2f2ede17cb40d29e2838c
  - kind: registry
    name: glib-macros
    version: 0.22.9
    sha: c9597c68fa7bdf4154a3079642cd21c4dccac0b0bdd2897d82861523bf91e7b9
  - kind: registry
    name: glib-sys
    version: 0.22.9
    sha: 99b38907e67e40dec9b60f858bcada952598719cb512a13eb13d6cdcd16f8295
  - kind: registry
    name: gobject-sys
    version: 0.22.9
    sha: 07595c9ba696bd9819cb6a8df39f08078f3dd679508fe052dd558492c2053834
  - kind: registry
    name: half
    version: 2.7.1
    sha: 6ea2d84b969582b4b1864a92dc5d27cd2b77b622a8d79306834f1be5ba20d84b
  - kind: registry
    name: hashbrown
    version: 0.13.2
    sha: 43a3c133739dddd0d2990f9a4bdf8eb4b21ef50e4851ca85ab661199821d510e
  - kind: registry
    name: hashbrown
    version: 0.17.1
    sha: ed5909b6e89a2db4456e54cd5f673791d7eca6732202bbf2a9cc504fe2f9b84a
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: hybrid-array
    version: 0.4.15
    sha: 27f864f10dfb56725ce5ce5472bc52252c8f93a4ab86327122cebf62c5f59a17
  - kind: registry
    name: iana-time-zone
    version: 0.1.65
    sha: e31bc9ad994ba00e440a8aa5c9ef0ec67d5cb5e5cb0cc7f8b744a35b389cc470
  - kind: registry
    name: iana-time-zone-haiku
    version: 0.1.2
    sha: f31827a206f56af32e590ba56d5d2d085f558508192593743f16b2306495269f
  - kind: registry
    name: icu_collections
    version: 2.3.0
    sha: fa68d21081c4a05d5a901a1c62add574c77048b6a1c67be3b50ce0b60d4ca513
  - kind: registry
    name: icu_locale_core
    version: 2.3.0
    sha: d56e28588da92eee5c3201a6eff33fabdd49b62269c8938d4ff050ce4d900deb
  - kind: registry
    name: icu_normalizer
    version: 2.3.0
    sha: 12f9cf5f235641ed274641dd81c3f28d870e276763d0797aeeab72317b1c646f
  - kind: registry
    name: icu_normalizer_data
    version: 2.3.0
    sha: 1563da1ed3e0b3bf3d74c9b85917ac9c56464d2f57242270c09c9e752f8021a0
  - kind: registry
    name: icu_properties
    version: 2.3.0
    sha: 7e7ca276ad3145661a65914e6daf131ca5120cd3dcee8f8f3214b8875184a148
  - kind: registry
    name: icu_properties_data
    version: 2.3.0
    sha: e590f038c1464a96894fd6d10127e90a8be4509f56ff7ecef851b15cee0b7caa
  - kind: registry
    name: icu_provider
    version: 2.3.1
    sha: d27bbb9d3abbefac45d55f647c9de1d44aafcd1186eb91879afef17c396c3e73
  - kind: registry
    name: idna
    version: 1.1.0
    sha: 3b0875f23caa03898994f6ddc501886a45c7d3d62d04d2d90788d47be1b1e4de
  - kind: registry
    name: idna_adapter
    version: 1.2.2
    sha: cb68373c0d6620ef8105e855e7745e18b0d00d3bdb07fb532e434244cdb9a714
  - kind: registry
    name: image
    version: 0.25.10
    sha: 85ab80394333c02fe689eaf900ab500fbd0c2213da414687ebf995a65d5a6104
  - kind: registry
    name: image-webp
    version: 0.2.4
    sha: 525e9ff3e1a4be2fbea1fdf0e98686a6d98b4d8f937e1bf7402245af1909e8c3
  - kind: registry
    name: indexmap
    version: 2.14.2
    sha: cc4e190f5d26ca7051642629da2c52fc03bde85a03197c99408dcd291734c855
  - kind: registry
    name: inout
    version: 0.2.2
    sha: 4250ce6452e92010fdf7268ccc5d14faa80bb12fc741938534c58f16804e03c7
  - kind: registry
    name: is_terminal_polyfill
    version: 1.70.2
    sha: a6cb138bb79a146c1bd460005623e142ef0181e3d0219cb493e02f7d08a35695
  - kind: registry
    name: itertools
    version: 0.13.0
    sha: 413ee7dfc52ee1a4949ceeb7dbc8a33f2d6c088194d9f922fb8318faf1f01186
  - kind: registry
    name: itertools
    version: 0.15.0
    sha: 8b4baf93f58d4425749ca49a51c50ebab072c5df6994d08fed93541c331481dc
  - kind: registry
    name: itoa
    version: 1.0.18
    sha: 8f42a60cbdf9a97f5d2305f08a87dc4e09308d1276d28c869c684d7777685682
  - kind: registry
    name: jiff
    version: 0.2.37
    sha: 0ab1baf72f08796de0260609515130699b890ac25f30e610ad894bc5856cafdb
  - kind: registry
    name: jiff-core
    version: 0.1.1
    sha: 5e52fe76043ccecc9005d2305ebaadf7d7fc0cc89ca6baa10a94d6bc68c7128c
  - kind: registry
    name: jiff-static
    version: 0.2.37
    sha: 378268a1116ad67ae6228701118ac9f491d78fda38a40a1f1a9e1348de6f7212
  - kind: registry
    name: jiff-tzdb
    version: 0.1.8
    sha: 142bd39932ad231f10513df9ab62661fead8719872150b7ad02a2df79f4e141e
  - kind: registry
    name: jiff-tzdb-platform
    version: 0.1.3
    sha: 875a5a69ac2bab1a891711cf5eccbec1ce0341ea805560dcd90b7a2e925132e8
  - kind: registry
    name: jobserver
    version: 0.1.35
    sha: 1c00acbd29eabad4a2392fa0e921c874934dbbf4194312ad20f04a0ed67a3cb3
  - kind: registry
    name: js-sys
    version: 0.3.105
    sha: ce57d20d1ea864ce2ac172ab472d409214f4fd359f0b2a2775abdf522e2af99e
  - kind: registry
    name: language-tags
    version: 0.3.2
    sha: d4345964bb142484797b161f473a503a434de77149dd8c7427788c6e13379388
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: libc
    version: 0.2.189
    sha: 3eaf3ede3fee6db1a4c2ee091bf8a8b4dccdc6d17f656fb07896ee72867612f2
  - kind: registry
    name: libfuzzer-sys
    version: 0.4.13
    sha: a9fd2f41a1cba099f79a0b6b6c35656cf7c03351a7bae8ff0f28f25270f929d2
  - kind: registry
    name: libloading
    version: 0.8.9
    sha: d7c4b02199fee7c5d21a5ae7d8cfa79a6ef5bb2fc834d6e9058e89c825efdc55
  - kind: registry
    name: linux-raw-sys
    version: 0.12.1
    sha: 32a66949e030da00e8c7d4434b251670a91556f4144941d37452769c25d58a53
  - kind: registry
    name: litemap
    version: 0.8.3
    sha: 47d9d19d1d6efa0109d2f65ff4c85cddd50bd572e5a00127ab10987290bcefae
  - kind: registry
    name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - kind: registry
    name: lock_api
    version: 0.4.14
    sha: 224399e74b87b5f3557511d98dff8b14089b3dadafcab6bb93eab67d3aace965
  - kind: registry
    name: log
    version: 0.4.34
    sha: f9f8bd3e56ce4dfc153cf470fffbfa98c7620958b312ca5c3a4b8d5181fd13c6
  - kind: registry
    name: lopdf
    version: 0.44.0
    sha: 5e2ec995d822e05cabc3f06d196ee43650af3fe4fe38012cacb35e0c3d113b68
  - kind: registry
    name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - kind: registry
    name: markup5ever
    version: 0.39.0
    sha: 7122d987ec5f704ee56f6e5b41a7d93722e9aae27ae07cafa4036c4d3f9757de
  - kind: registry
    name: matches
    version: 0.1.10
    sha: 2532096657941c2fea9c289d370a250971c689d4f143798ff67113ec042024a5
  - kind: registry
    name: matrixmultiply
    version: 0.3.11
    sha: 3f607c237553f086e7043417a51df26b2eb899d3caff94e6a67592ff992fedc7
  - kind: registry
    name: md-5
    version: 0.11.0
    sha: 69b6441f590336821bb897fb28fc622898ccceb1d6cea3fde5ea86b090c4de98
  - kind: registry
    name: memchr
    version: 2.8.3
    sha: cf8baf1c55e62ffcace7a9f06f4bd9cd3f0c4beb022d3b367256b91b87513d98
  - kind: registry
    name: miniz_oxide
    version: 0.8.9
    sha: 1fa76a2c86f704bdb222d66965fb3d63269ce38518b83cb0575fca855ebb6316
  - kind: registry
    name: miniz_oxide
    version: 0.9.1
    sha: b63fbc4a50860e98e7b2aa7804ded1db5cbc3aff9193adaff57a6931bf7c4b4c
  - kind: registry
    name: moxcms
    version: 0.8.1
    sha: bb85c154ba489f01b25c0d36ae69a87e4a1c73a72631fc6c0eb6dde34a73e44b
  - kind: registry
    name: mp4parse
    version: 0.17.0
    sha: 63a35203d3c6ce92d5251c77520acb2e57108c88728695aa883f70023624c570
  - kind: registry
    name: multiversion
    version: 0.9.0
    sha: b4ca4bea16ffc3f443cf7d866912118196bfef4c6a1556ca00f9f9b00bb43f7c
  - kind: registry
    name: multiversion-macros
    version: 0.9.0
    sha: 0d416831a7317ef4b08bee00b69cbbb9c8763da7959a7026244d6266869f9c83
  - kind: registry
    name: multiversion_no_op
    version: 1.0.0
    sha: 743fb55ba31b18fb1ecef6bdc9aa2743314978ac084044301a7eee33fb99a20d
  - kind: registry
    name: mutants
    version: 0.0.4
    sha: add0ac067452ff1aca8c5002111bd6b1c895baee6e45fcbc44e0193aea17be56
  - kind: registry
    name: nalgebra
    version: 0.35.0
    sha: adc43a60c217b0c6ff46e47f26911015ad8d2e5a8be1af668c67e370d99a4346
  - kind: registry
    name: nalgebra-macros
    version: 0.3.0
    sha: 973e7178a678cfd059ccec50887658d482ce16b0aa9da3888ddeab5cd5eb4889
  - kind: registry
    name: new_debug_unreachable
    version: 1.0.6
    sha: 650eef8c711430f1a879fdd01d4745a7deea475becfb90269c06775983bbf086
  - kind: registry
    name: nom
    version: 8.0.0
    sha: df9761775871bdef83bee530e60050f7e54b1105350d6884eb0fb4f46c2f9405
  - kind: registry
    name: normalize-line-endings
    version: 0.3.0
    sha: 61807f77802ff30975e01f4f071c8ba10c022052f98b3294119f3e615d13e5be
  - kind: registry
    name: num-bigint
    version: 0.4.8
    sha: c89e69e7e0f03bea5ef08013795c25018e101932225a656383bd384495ecc367
  - kind: registry
    name: num-complex
    version: 0.4.6
    sha: 73f88a1307638156682bada9d7604135552957b7818057dcef22705b4d509495
  - kind: registry
    name: num-conv
    version: 0.2.2
    sha: 521739c6d2bac4aa25192232afe6841231376b2b26d4d9fae5ecf8ca5772e441
  - kind: registry
    name: num-derive
    version: 0.4.2
    sha: ed3955f1a9c7c0c15e092f9c887db08b1fc683305fdf6eb6684f22555355e202
  - kind: registry
    name: num-integer
    version: 0.1.47
    sha: 7ce2d95d4b3734dc35aa2f45e1aa22cd416814592a4f9d9205e11affd5b8e10b
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
    version: 1.21.4
    sha: 9f7c3e4beb33f85d45ae3e3a1792185706c8e16d043238c593331cc7cd313b50
  - kind: registry
    name: once_cell_polyfill
    version: 1.70.2
    sha: 384b8ab6d37215f3c5301a95a4accb5d64aa607f1fcb26a11b5303878451b4fe
  - kind: registry
    name: oorandom
    version: 11.1.5
    sha: d6790f58c7ff633d8771f42965289203411a5e5c68388703c06e14f24770b41e
  - kind: registry
    name: page_size
    version: 0.6.0
    sha: 30d5b2194ed13191c1999ae0704b7839fb18384fa22e49b57eeaa97d79ce40da
  - kind: registry
    name: pango
    version: 0.22.9
    sha: 0b2022dbbd82e1c42bd950a6f1df9b98c796e725dce5ec275e03cbf9772e4efa
  - kind: registry
    name: pango-sys
    version: 0.22.9
    sha: ca02d64761b74d56cdd4b437db6d73dc95e6c0d40f27e1c707952c0f09052948
  - kind: registry
    name: pangocairo
    version: 0.22.9
    sha: bd199a0fef965b3ebda91a929a1ab5e7729538882c68e8de38e1904d2e094757
  - kind: registry
    name: pangocairo-sys
    version: 0.22.9
    sha: a649a616d67ae68539bc85f00fb45d36fba742ed20fc20e6712a15d8ee52bd3f
  - kind: registry
    name: parking_lot
    version: 0.12.5
    sha: 93857453250e3077bd71ff98b6a65ea6621a19bb0f559a85248955ac12c45a1a
  - kind: registry
    name: parking_lot_core
    version: 0.9.12
    sha: 2621685985a2ebf1c516881c026032ac7deafcda1a2c9b7850dc81e3dfcb64c1
  - kind: registry
    name: percent-encoding
    version: 2.3.2
    sha: 9b4f627cb1b25917193a259e49bdad08f671f8d9708acfd5fe0a8c1455d87220
  - kind: registry
    name: phf
    version: 0.13.1
    sha: c1562dc717473dbaa4c1f85a36410e03c047b2e7df7f45ee938fbef64ae7fadf
  - kind: registry
    name: phf_codegen
    version: 0.13.1
    sha: 49aa7f9d80421bca176ca8dbfebe668cc7a2684708594ec9f3c0db0805d5d6e1
  - kind: registry
    name: phf_generator
    version: 0.13.1
    sha: 135ace3a761e564ec88c03a77317a7c6b80bb7f7135ef2544dbe054243b89737
  - kind: registry
    name: phf_macros
    version: 0.13.1
    sha: 812f032b54b1e759ccd5f8b6677695d5268c588701effba24601f6932f8269ef
  - kind: registry
    name: phf_shared
    version: 0.13.1
    sha: e57fef6bc5981e38c2ce2d63bfa546861309f875b8a75f092d1d54ae2d64f266
  - kind: registry
    name: phf_shared
    version: 0.14.0
    sha: c6fd9027e2d9319be6349febd1db4e8d02aa544921200c9b777720ac34a3aa89
  - kind: registry
    name: pin-project-lite
    version: 0.2.17
    sha: a89322df9ebe1c1578d689c92318e070967d1042b512afbe49518723f4e6d5cd
  - kind: registry
    name: pkg-config
    version: 0.3.34
    sha: f6b464fbc74e149a392436b17d523f769e057cb6877f6a5c4618bc6f11800548
  - kind: registry
    name: plotters
    version: 0.3.7
    sha: 5aeb6f403d7a4911efb1e33402027fc44f29b5bf6def3effcc22d7bb75f2b747
  - kind: registry
    name: plotters-backend
    version: 0.3.7
    sha: df42e13c12958a16b3f7f4386b9ab1f3e7933914ecea48da7139435263a4172a
  - kind: registry
    name: plotters-svg
    version: 0.3.7
    sha: 51bae2ac328883f7acdfea3d66a7c35751187f870bc81f94563733a154d7a670
  - kind: registry
    name: png
    version: 0.18.1
    sha: 60769b8b31b2a9f263dae2776c37b1b28ae246943cf719eb6946a1db05128a61
  - kind: registry
    name: portable-atomic
    version: 1.15.0
    sha: 05c8b63e8d9609db387f0324918f81d68fe27748f084ef092fb35954d0539a85
  - kind: registry
    name: portable-atomic-util
    version: 0.2.8
    sha: 10ab3eb7f3becc3a1cbc4f2c6f20267996cfc1a6467a873763411b136a122715
  - kind: registry
    name: potential_utf
    version: 0.1.6
    sha: d83eb9bc6d8e5cf568e7a1101d60ee05e81ed50ea106026f3d18deeb046d7661
  - kind: registry
    name: powerfmt
    version: 0.2.0
    sha: 439ee305def115ba05938db6eb1644ff94165c5ab5e9420d1c1bcedbba909391
  - kind: registry
    name: ppv-lite86
    version: 0.2.21
    sha: 85eae3c4ed2f50dcfe72643da4befc30deadb458a9b590d720cde2f2b1e97da9
  - kind: registry
    name: precomputed-hash
    version: 0.1.1
    sha: 925383efa346730478fb4838dbe9137d2a47675ad789c546d150a6e1dd4ab31c
  - kind: registry
    name: predicates
    version: 3.1.4
    sha: ada8f2932f28a27ee7b70dd6c1c39ea0675c55a36879ab92f3a715eaa1e63cfe
  - kind: registry
    name: predicates-core
    version: 1.0.10
    sha: cad38746f3166b4031b1a0d39ad9f954dd291e7854fcc0eed52ee41a0b50d144
  - kind: registry
    name: predicates-tree
    version: 1.0.13
    sha: d0de1b847b39c8131db0467e9df1ff60e6d0562ab8e9a16e568ad0fdb372e2f2
  - kind: registry
    name: pretty_assertions
    version: 1.4.1
    sha: 3ae130e2f271fbc2ac3a40fb1d07180839cdbbe443c7a27e1e3c13c5cac0116d
  - kind: registry
    name: proc-macro2
    version: 1.0.107
    sha: 985e7ec9bb745e6ce6535b544d84d6cd6f7ad8bd711c398938ae983b91a766d9
  - kind: registry
    name: proptest
    version: 1.11.0
    sha: 4b45fcc2344c680f5025fe57779faef368840d0bd1f42f216291f0dc4ace4744
  - kind: registry
    name: pxfm
    version: 0.1.30
    sha: d55d956fa96f5ec02be2e13af0e20391a5aa83d6a074e3ad368959d0fab299ea
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
    version: 1.0.47
    sha: 1fbf4db142a473a8d80c26bbf18454ed458bf8d26c8219c331daecfdbd079001
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
    version: 0.10.2
    sha: c7f5fa3a058cd35567ef9bfa5e75732bee0f9e4c55fa90477bef2dfcdbc4be80
  - kind: registry
    name: rand
    version: 0.9.5
    sha: b9ef1d0d795eb7d84685bca4f72f3649f064e6641543d3a8c415898726a57b41
  - kind: registry
    name: rand_chacha
    version: 0.9.0
    sha: d3022b5f1df60f26e1ffddd6c66e8aa15de382ae63b3a0c1bfc0e4d3e3f325cb
  - kind: registry
    name: rand_core
    version: 0.10.1
    sha: 63b8176103e19a2643978565ca18b50549f6101881c443590420e4dc998a3c69
  - kind: registry
    name: rand_core
    version: 0.9.5
    sha: 76afc826de14238e6e8c374ddcc1fa19e374fd8dd986b0d2af0d02377261d83c
  - kind: registry
    name: rand_xorshift
    version: 0.4.0
    sha: 513962919efc330f829edb2535844d1b912b0fbe2ca165d613e4e8788bb05a5a
  - kind: registry
    name: rangemap
    version: 1.8.0
    sha: a611d15b50743feb4c76b7d03edcb0e64f399c26961e4efe6975bc398be6aa3d
  - kind: registry
    name: rawpointer
    version: 0.2.1
    sha: 60a357793950651c4ed0f3f52338f53b2f809f32d83a07f72909fa13e4c6c1e3
  - kind: registry
    name: rayon
    version: 1.12.0
    sha: fb39b166781f92d482534ef4b4b1b2568f42613b53e5b6c160e24cfbfa30926d
  - kind: registry
    name: rayon-core
    version: 1.13.0
    sha: 22e18b0f0062d30d4230b2e85ff77fdfe4326feb054b9783a3460d8435c8ab91
  - kind: registry
    name: rctree
    version: 0.6.0
    sha: e03e7866abec1101869ffa8e2c8355c4c2419d0214ece0cc3e428e5b94dea6e9
  - kind: registry
    name: redox_syscall
    version: 0.5.18
    sha: ed2bf2547551a7053d6fdfafda3f938979645c44812fbfcda098faae3f1a362d
  - kind: registry
    name: regex
    version: 1.13.1
    sha: f020237b6c8eed93db2e2cb53c00c60a8e1bc73da7d073199a1180401450218d
  - kind: registry
    name: regex-automata
    version: 0.4.18
    sha: ad8553b9b26413251cbf30e620595c7a41b3887f03da04579c0e6b0d6a06b4b2
  - kind: registry
    name: regex-syntax
    version: 0.8.11
    sha: d6f6ff9a378485b298a5286656da665ba74413d36db0979633275d2e708145d4
  - kind: registry
    name: rgb
    version: 0.8.53
    sha: 47b34b781b31e5d73e9fbc8689c70551fd1ade9a19e3e28cfec8580a79290cc4
  - kind: registry
    name: rustc-hash
    version: 2.1.3
    sha: 6b1e7f9a428571be2dc5bc0505c13fb6bf936822b894ec87abf8a08a4e51742d
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: rustix
    version: 1.1.5
    sha: 891efababe418670775f199f0d233d84843c227a0949a883ce15b37c78d6629d
  - kind: registry
    name: rustversion
    version: 1.0.23
    sha: cf54715a573b99ac80df0bc206da022bcd442c974952c7b9720069370852e21f
  - kind: registry
    name: rusty-fork
    version: 0.3.1
    sha: cc6bf79ff24e648f6da1f8d1f011e9cac26491b619e6b9280f2b47f1774e6ee2
  - kind: registry
    name: safe_arch
    version: 1.2.0
    sha: 42c6efa15875e6ecb39ca61fb0b0c1a40b84fac5a5ffe71eef7d1000c8eb3f5f
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
    version: 0.40.0
    sha: eeee001a77567bb05e71652718d3ff76d8697c151ac523e68e9513194eb2b75a
  - kind: registry
    name: semver
    version: 1.0.28
    sha: 8a7852d02fc848982e0c167ef163aaff9cd91dc640ba85e263cb1ce46fae51cd
  - kind: registry
    name: serde
    version: 1.0.229
    sha: 4148590afebada386688f18773da617792bf2ef03ffc1e4cbd2b1d45b023e0ba
  - kind: registry
    name: serde_core
    version: 1.0.229
    sha: 67dca2c9c51e58a4791a4b1ed58308b39c64224d349a935ab5039aa360942a48
  - kind: registry
    name: serde_derive
    version: 1.0.229
    sha: e7a5d71263a5a7d47b41f6b3f06ba276f10cc18b0931f1799f710578e2309348
  - kind: registry
    name: serde_json
    version: 1.0.151
    sha: c841b55ecdae098c80dcae9cf767f6f8a0c2cdb3416bbef72181df4d0fe73f14
  - kind: registry
    name: serde_spanned
    version: 1.1.1
    sha: 6662b5879511e06e8999a8a235d848113e942c9124f211511b16466ee2995f26
  - kind: registry
    name: servo_arc
    version: 0.4.3
    sha: 170fb83ab34de17dc69aa7c67482b22218ddb85da56546f9bd6b929e32a05930
  - kind: registry
    name: sha2
    version: 0.11.0
    sha: 446ba717509524cb3f22f17ecc096f10f4822d76ab5c0b9822c5f9c284e825f4
  - kind: registry
    name: shell-words
    version: 1.1.1
    sha: dc6fe69c597f9c37bfeeeeeb33da3530379845f10be461a66d16d03eca2ded77
  - kind: registry
    name: shlex
    version: 2.0.1
    sha: f8fadd59c855ef2080decdef8ff161eb6661b86933c9d82e5ba29dc602a55aba
  - kind: registry
    name: simba
    version: 0.10.2
    sha: f1a7200d82ff1c7b4235efd12f11e2537a402c91cf83a5cb97ce80eef787fde7
  - kind: registry
    name: simd-adler32
    version: 0.3.10
    sha: 3a219298ac11a56ea9a6d2120044824d6f01aeb034955e7af7bc16858527deea
  - kind: registry
    name: simdutf8
    version: 0.1.5
    sha: e3a9fe34e3e7a50316060351f37187a3f546bce95496156754b601a5fa71b76e
  - kind: registry
    name: siphasher
    version: 1.0.3
    sha: 8ee5873ec9cce0195efcb7a4e9507a04cd49aec9c83d0389df45b1ef7ba2e649
  - kind: registry
    name: slab
    version: 0.4.12
    sha: 0c790de23124f9ab44544d7ac05d60440adc586479ce501c1d6d7da3cd8c9cf5
  - kind: registry
    name: smallvec
    version: 1.16.1
    sha: ba467056f1b547ed52077911161fc86985becbc60e8e1857c8a144dab0def891
  - kind: registry
    name: stable_deref_trait
    version: 1.2.1
    sha: 6ce2be8dc25455e1f91df71bfa12ad37d7af1092ae736f3a6cd0e37bc7810596
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - kind: registry
    name: string_cache
    version: 0.10.0
    sha: daf8762eb74d0e3b53126a15f88db5de3c8ee98cd3b5e3b58c1a9e21c6438873
  - kind: registry
    name: string_cache
    version: 0.9.0
    sha: a18596f8c785a729f2819c0f6a7eae6ebeebdfffbfe4214ae6b087f690e31901
  - kind: registry
    name: string_cache_codegen
    version: 0.6.1
    sha: 585635e46db231059f76c5849798146164652513eb9e8ab2685939dd90f29b69
  - kind: registry
    name: stringprep
    version: 0.1.5
    sha: 7b4df3d392d81bd458a8a621b8bffbd2302a12ffe288a9d931670948749463b1
  - kind: registry
    name: strsim
    version: 0.11.1
    sha: 7da8b5736845d9f2fcb837ea5d9e2628564b3b043a70948a3f0b778838c5fb4f
  - kind: registry
    name: syn
    version: 2.0.119
    sha: 872831b642d1a07999a962a351ed35b955ea2cfc8f3862091e2a240a84f17297
  - kind: registry
    name: syn
    version: 3.0.6
    sha: 8593e8e72159ed2257d083c7a454a85cbf854f37a0966d8d483aff8c8a3ebcee
  - kind: registry
    name: synstructure
    version: 0.14.0
    sha: 901704edd0dfe137f1987838ee4f259e4e063c31371bdb423f7ae38ec6f77f02
  - kind: registry
    name: system-deps
    version: 7.0.8
    sha: 396a35feb67335377e0251fcbc1092fc85c484bd4e3a7a54319399da127796e7
  - kind: registry
    name: system-deps
    version: 9.0.0
    sha: 8a0dae2cbca1f0ff93795713cfe0a4c02f760e3c0b8ae2ab4ec4045808ff429f
  - kind: registry
    name: target-lexicon
    version: 0.13.5
    sha: adb6935a6f5c20170eeceb1a3835a49e12e19d792f6dd344ccc76a985ca5a6ca
  - kind: registry
    name: tempfile
    version: 3.27.0
    sha: 32497e9a4c7b38532efcdebeef879707aa9f794296a4f0244f6f69e9bc8574bd
  - kind: registry
    name: tendril
    version: 0.5.1
    sha: 5fed54709c5b3a53d09bb1c113ea4f5ceafd1e772ddcb0030a82e1d56c087b08
  - kind: registry
    name: termtree
    version: 0.5.1
    sha: 8f50febec83f5ee1df3015341d8bd429f2d1cc62bcba7ea2076759d315084683
  - kind: registry
    name: thiserror
    version: 2.0.20
    sha: ec86235f5fcc2a73650310756d2ac5b138a5780bbbdfae3eeccec992c435ba4f
  - kind: registry
    name: thiserror-impl
    version: 2.0.20
    sha: bc04cd3e1236dd4a98afca4569f2deb3f120e5422a4023be2cb683f8486292af
  - kind: registry
    name: time
    version: 0.3.55
    sha: cdb87b95ec50ddfa440816d227a17b2ccbdda963a316a727fda0fc4334f7d134
  - kind: registry
    name: time-core
    version: 0.1.9
    sha: 9e1c906769ad99c88eaa54e728060edef082f8e358ff32030cb7c7d315e81109
  - kind: registry
    name: time-macros
    version: 0.2.32
    sha: 7e689342a48d2ea927c87ea50cabf8594854bf940e9310208848d680d668ed85
  - kind: registry
    name: tinystr
    version: 0.8.4
    sha: b1e27c91459209c2986af3dcf603a5a74a4368754ce37414f59acc971167f643
  - kind: registry
    name: tinytemplate
    version: 1.2.1
    sha: be4d6b5f19ff7664e8c98d03e2139cb510db9b0a60b55f8e8709b689d939b6bc
  - kind: registry
    name: tinyvec
    version: 1.13.3
    sha: fd3ca314f692efd6c868f8408f53fe444634a845f96c028b97d35f6a1f79f0ee
  - kind: registry
    name: toml
    version: 1.1.6+spec-1.1.0
    sha: 920602543f0911ab71da12c50d59701da54c196d1a2bf5cb4b75667f137a406a
  - kind: registry
    name: toml_datetime
    version: 1.1.1+spec-1.1.0
    sha: 3165f65f62e28e0115a00b2ebdd37eb6f3b641855f9d636d3cd4103767159ad7
  - kind: registry
    name: toml_parser
    version: 1.1.3+spec-1.1.0
    sha: 1d38ac1cf9b95face32296c0a3ede1fdc270627c9d9c02a7274dd6d960dc4d56
  - kind: registry
    name: toml_writer
    version: 1.1.2+spec-1.1.0
    sha: 7d56353a2a665ad0f41a421187180aab746c8c325620617ad883a99a1cbe66d2
  - kind: registry
    name: typenum
    version: 1.20.1
    sha: b6f5e870be6c3b371b77fe0ee0bafb859fa4964b4404c27de1d380043c4dda20
  - kind: registry
    name: unarray
    version: 0.1.4
    sha: eaea85b334db583fe3274d12b4cd1880032beab409c0d774be044d4480ab9a94
  - kind: registry
    name: unicode-bidi
    version: 0.3.18
    sha: 5c1cb5db39152898a79168971543b1cb5020dff7fe43c8dc468b0885f5e29df5
  - kind: registry
    name: unicode-ident
    version: 1.0.26
    sha: d245f478577f809a851594d02313b640fb437e0bb33866753cff937863096954
  - kind: registry
    name: unicode-normalization
    version: 0.1.25
    sha: 5fd4f6878c9cb28d874b009da9e8d183b5abc80117c40bbd187a1fde336be6e8
  - kind: registry
    name: unicode-properties
    version: 0.1.4
    sha: 7df058c713841ad818f1dc5d3fd88063241cc61f49f5fbea4b951e8cf5a8d71d
  - kind: registry
    name: url
    version: 2.5.8
    sha: ff67a8a4397373c3ef660812acab3268222035010ab8680ec4215f38ba3d0eed
  - kind: registry
    name: utf8_iter
    version: 1.0.4
    sha: b6c140620e7ffbb22c2dee59cafe6084a59b5ffc27a8859a5f0d494b5d52b6be
  - kind: registry
    name: utf8parse
    version: 0.2.2
    sha: 06abde3611657adf66d383f00b093d7faecc7fa57071cce2578660c9f1010821
  - kind: registry
    name: version-compare
    version: 0.2.1
    sha: 03c2856837ef78f57382f06b2b8563a2f512f7185d732608fd9176cb3b8edf0e
  - kind: registry
    name: version_check
    version: 0.9.5
    sha: 0b928f33d975fc6ad9f86c8f283853ad26bdd5b10b7f1542aa2fa15e2289105a
  - kind: registry
    name: wait-timeout
    version: 0.2.1
    sha: 09ac3b126d3914f9849036f826e054cbabdc8519970b8998ddaf3b5bd3c65f11
  - kind: registry
    name: walkdir
    version: 2.5.0
    sha: 29790946404f91d9c5d06f9874efddea1dc06c5efe94541a7d6863108e3a5e4b
  - kind: registry
    name: wasip2
    version: 1.0.4+wasi-0.2.12
    sha: b67efb37e106e55ce722a510d6b5f9c17f083e5fc79afc2badeb12cc313d9487
  - kind: registry
    name: wasm-bindgen
    version: 0.2.128
    sha: aecb87a33d3b0c5e3b7aa46336eaf486cffafbd281b195e4c8b80d50df2351bf
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.128
    sha: a690d511e3c1a8b3a55e33511e3c2c00c78415cd23650f32b808627f5696b9ed
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.128
    sha: 411e4887f0071ef2d2164a9d5fdf2d20efbef78fccd3a78b0c10a1dc5295e48a
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.128
    sha: 81941cd78d0c92026c33e5e01312845a4cb1e9af3407f9134b100dd03144103e
  - kind: registry
    name: web-sys
    version: 0.3.105
    sha: 9fbddc4a036f00ec4f18c83445bd3115cb306a91da554919a099d9222fe4a7f8
  - kind: registry
    name: web_atoms
    version: 0.2.6
    sha: ba8b815c1b593dc0baf78dd0f4fc8fdb2de53198fb1163738093e9a311c33fb3
  - kind: registry
    name: weezl
    version: 0.1.12
    sha: a28ac98ddc8b9274cb41bb4d9d4d5c425b6020c50c46f25559911905610b4a88
  - kind: registry
    name: weezl
    version: 0.2.1
    sha: d4ca08e5ef825b65b056d9efbd95c8750683f0a6d0466d02e96dc2e4e360f3d2
  - kind: registry
    name: wide
    version: 1.7.1
    sha: d920ac99c3c8edce110cb8d07dbb324d6d026011dce85b1e9355b70f0adacc4f
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
    version: 0.1.11
    sha: c2a7b1c03c876122aa43f3020e6c3c3ee5c05081c9a00739faf7503aeba10d22
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
    version: 0.61.2
    sha: ae137229bcbd6cdf0f7b80a31df61766145077ddf49416a728b02cb3921ff3fc
  - kind: registry
    name: winnow
    version: 1.0.4
    sha: 23b97319f7b8343df12cc98938e5c3eb436064524c8d2b4e30a1d3a36eecdf81
  - kind: registry
    name: wit-bindgen
    version: 0.57.1
    sha: 1ebf944e87a7c253233ad6766e082e3cd714b5d03812acc24c318f549614536e
  - kind: registry
    name: writeable
    version: 0.6.4
    sha: 3ad82d2a33cdc9674dc7465672f271e096168fcdbe0f799d9e6db8c5892679dc
  - kind: registry
    name: xml5ever
    version: 0.39.0
    sha: 5ab627f34ff61b80d756180d556f9c68801d836d271b3b8c094504ceca69d221
  - kind: registry
    name: yansi
    version: 1.0.1
    sha: cfe53a6657fd280eaa890a3bc59152892ffa3e30101319d168b781ed6529b049
  - kind: registry
    name: yeslogic-fontconfig-sys
    version: 6.0.1
    sha: 1d8b8abf912b9a29ff112e1671c97c33636903d13a69712037190e6805af4f76
  - kind: registry
    name: yoke
    version: 0.8.3
    sha: 709fe23a0424b6a435d82152b1bd3fdfb0833487d5fa90d05d42762a9891fef5
  - kind: registry
    name: yoke-derive
    version: 0.8.3
    sha: 33811428bee40dbceb6d545e95754741d17a6aef9a4849f0fd62e2ba4f412a78
  - kind: registry
    name: zerocopy
    version: 0.8.57
    sha: d35102a9f36d089ccae9e4c6802bc118be4487b80aaffc0ab4e0cf5ce92d2873
  - kind: registry
    name: zerocopy-derive
    version: 0.8.57
    sha: 146c01f5ab44258da43cf276c74a2763db2ff3969c9c652c3f2de07041d0b2bc
  - kind: registry
    name: zerofrom
    version: 0.1.8
    sha: 0ec05a11813ea801ff6d75110ad09cd0824ddba17dfe17128ea0d5f68e6c5272
  - kind: registry
    name: zerofrom-derive
    version: 0.1.8
    sha: f75b4683f6c7f45248d4d64056a24298c6281e0993356d7d1b4a1a962ef10d4a
  - kind: registry
    name: zerotrie
    version: 0.2.5
    sha: 4ea269c3bd32f0a32c321907a2ae912ba6f4649bb0fc764a15627e99a7095a3f
  - kind: registry
    name: zerovec
    version: 0.11.8
    sha: bb0464e17806c1d976d5cba29399c7f08e516e279e2ba493f63123b5fca67dd8
  - kind: registry
    name: zerovec-derive
    version: 0.11.6
    sha: 34df6fc39dbd26ddc9c10e6a2984476e13acce22e64e4487636ef494369225da
  - kind: registry
    name: zlib-rs
    version: 0.6.8
    sha: b268e58e7c693d7c271f93ffc4ba3b380412554231c85bf61ca7af91042a4112
  - kind: registry
    name: zmij
    version: 1.0.23
    sha: 29666d0abbfad1e3dc4dcf6144730dd3a3ab225bbbdac83319345b1b44ccfc1b
  - kind: registry
    name: zune-core
    version: 0.5.3
    sha: d56377fd46368984a170bc5aac5567e52ca5da874caa60bea39fcbca78fb658b
  - kind: registry
    name: zune-jpeg
    version: 0.5.15
    sha: 27bc9d5b815bc103f142aa054f561d9187d191692ec7c2d1e2b4737f8dbd7296
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- sdk/gi-docgen.bst
- freedesktop-sdk.bst:components/cargo-c.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/rust.bst

depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/dav1d.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dpkgconfig.relocatable=false
    -Dpixbuf-loader=disabled

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/librsvg-2.so'
