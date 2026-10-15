kind: cargo

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/cargo-c.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
- kind: git_repo
  url: github:casey/just.git
  track: '*.*.*'
  ref: 1.59.0-0-g2638e9c0941edb1f409da7426fa7842887656973
- kind: cargo2
  ref:
  - kind: registry
    name: aho-corasick
    version: 1.1.5
    sha: c982642fa9e8606056828ee9a8505737230110bb1099153c79efe865c59d12ba
  - kind: registry
    name: android_system_properties
    version: 0.1.6
    sha: ae221649c9976a6f6c56ae1facf410f3ddb33cc661c4b7b61020a912d4237fbc
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
    name: arrayvec
    version: 0.7.8
    sha: d3fb67a6e08acf24fdeccbac2cb6ac4305825bd1f117462e0e6f2f193345ad56
  - kind: registry
    name: autocfg
    version: 1.5.1
    sha: f2032f911046de80f0a198e0901378627c33f59ea0ac00e363d481118bd70a53
  - kind: registry
    name: bitflags
    version: 2.13.2
    sha: 3ded4057c258ba199e2d26386d3af3780957ecaee6c4ef4041c6b4b8b97c0b06
  - kind: registry
    name: blake3
    version: 1.8.7
    sha: 6d9e454fc11f76977dc803893aff6304ed33d6a26efae8696573bea74baa27ae
  - kind: registry
    name: block-buffer
    version: 0.12.1
    sha: d2f6c7dbe95a6ed67ad9f18e57daf93a2f034c524b99fd2b76d18fdfeb6660aa
  - kind: registry
    name: block2
    version: 0.6.2
    sha: cdeb9d870516001442e364c5220d3574d2da8dc765554b4a617230d33fa58ef5
  - kind: registry
    name: bstr
    version: 1.13.1
    sha: 6bb31b46c14244e20ee9984b11bf5c992b91fb6939fea616e3512c8baecdbe5f
  - kind: registry
    name: bumpalo
    version: 3.20.3
    sha: 72f5acc6cb2ba439de613abc23857ec3d78374d8ed5ac84e9d11336e87da8649
  - kind: registry
    name: bytecount
    version: 0.6.9
    sha: 175812e0be2bccb6abe50bb8d566126198344f707e304f45c648fd8f2cc0365e
  - kind: registry
    name: camino
    version: 1.2.6
    sha: bbbad30e4b4c14a39e3cc8aed085a12a327257c316619c93581e017bc52be591
  - kind: registry
    name: cc
    version: 1.8.0
    sha: 6651c9ed80effdc7db0ff72512157f901af5e3549e341e24b1dd4887d836d838
  - kind: registry
    name: cfg-if
    version: 1.0.5
    sha: 4e7648175b45a9a48536d676f68d918270699102aa8dab5496df06904c914600
  - kind: registry
    name: cfg_aliases
    version: 0.2.2
    sha: f079e83a288787bcd14a6aea84cee5c87a67c5a3e660c30f557a3d24761b3527
  - kind: registry
    name: chacha20
    version: 0.10.2
    sha: 65c35e4b699c7e15ccbe7ee35c005e4fc0a278d22238a2857e6ce2dadeda1b06
  - kind: registry
    name: chrono
    version: 0.4.45
    sha: 1aa79e62e7697b8e29b513a68abacf485adcd1fe8284a4316c5ae868e6633327
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
    name: clap_mangen
    version: 0.3.3
    sha: 211d617eaa4b735c96c9e0228fcbdb5120ef623f2b8cb67ffb84c3e02dbc28a4
  - kind: registry
    name: colorchoice
    version: 1.0.5
    sha: 1d07550c9036bf2ae0c684c4297d503f838287c83c53686d05370d0e139ae570
  - kind: registry
    name: const-oid
    version: 0.10.2
    sha: a6ef517f0926dd24a1582492c791b6a4818a4d94e789a334894aa15b0d12f55c
  - kind: registry
    name: constant_time_eq
    version: 0.4.2
    sha: 3d52eff69cd5e647efe296129160853a42795992097e8af39800e1060caeea9b
  - kind: registry
    name: core-foundation-sys
    version: 0.8.7
    sha: 773648b94d0e5d620f64f280777445740e61fe701025087ec8b57f45c791888b
  - kind: registry
    name: cpufeatures
    version: 0.3.1
    sha: 5ca28b0ae3115b884660db4118d803791fd6756b6e88f39c0f3f7859060d7566
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
    name: crypto-common
    version: 0.2.2
    sha: ce6e4c961d6cd6c9a86db418387425e8bdeaf05b3c8bc1411e6dca4c252f1453
  - kind: registry
    name: ctrlc
    version: 3.5.2
    sha: e0b1fab2ae45819af2d0731d60f2afe17227ebb1a1538a236da84c93e9a60162
  - kind: registry
    name: diff
    version: 0.1.13
    sha: 56254986775e3233ffa9c4d7d3faaf6d36a2c09d30b20687e9f88bc8bafc16c8
  - kind: registry
    name: digest
    version: 0.11.3
    sha: f1dd6dbb5841937940781866fa1281a1ff7bd3bf827091440879f9994983d5c2
  - kind: registry
    name: digest-io
    version: 0.1.0
    sha: 2de63d600bc7fab91180bc17385f29b342468dc8ef2af09dceba450a293de3da
  - kind: registry
    name: dirs
    version: 6.0.0
    sha: c3e8aa94d75141228480295a7d0e7feb620b1a5ad9f12bc40be62411e38cce4e
  - kind: registry
    name: dirs
    version: 7.0.0
    sha: 8d57d423b3c82e89b9a24ca3091fee61f456a26edbd28d26c65906f4bc1dcd8f
  - kind: registry
    name: dirs-sys
    version: 0.5.0
    sha: e01a3366d27ee9890022452ee61b2b63a67e6f13f58900b651ff5665f0bb1fab
  - kind: registry
    name: dispatch2
    version: 0.3.1
    sha: 1e0e367e4e7da84520dedcac1901e4da967309406d1e51017ae1abfb97adbd38
  - kind: registry
    name: dotenvy
    version: 0.15.7
    sha: 1aaf95b3e5c8f23aa320147307562d361db0ae0d51242340f558153b4eb2439b
  - kind: registry
    name: equivalent
    version: 1.0.3
    sha: 00d174d5400e5e8fd687ad1049e2f578285fa914201b1af7e8b112a4546bd826
  - kind: registry
    name: errno
    version: 0.3.14
    sha: 39cab71617ae0d63f51a36d69f866391735b51691dbda63cf6f96d042b63efeb
  - kind: registry
    name: fastrand
    version: 2.5.0
    sha: da7c62ceae207dd37ea5b845da6a0696c799f85e97da1ab5b7910be3c1c80223
  - kind: registry
    name: find-msvc-tools
    version: 0.1.14
    sha: aedcfb3409746eddb02b9e19ebda1c3394f759a152e48ee875a0844d1b955484
  - kind: registry
    name: fnv
    version: 1.0.7
    sha: 3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1
  - kind: registry
    name: futures-core
    version: 0.3.34
    sha: 92d699e522242e69e3003b94ecc1f960f3a5e015aa7c5d7486e65ad01dd94f5e
  - kind: registry
    name: futures-task
    version: 0.3.34
    sha: cd417de3d1d015fc3bfd2b1ea46dfc7bab72ef86f1cc7cc9c78e728b34a6d1fd
  - kind: registry
    name: futures-util
    version: 0.3.34
    sha: 0d50a92467f8ba5dd6e3ee5d4bd04d73ab2e4e1c44474a0674821dfce14b79bc
  - kind: registry
    name: getopts
    version: 0.2.24
    sha: cfe4fbac503b8d1f88e6676011885f34b7174f46e59956bba534ba83abded4df
  - kind: registry
    name: getrandom
    version: 0.4.3
    sha: 300e883d756b2e4ec94e02791f39b04b522276138852cfc41d9fb7e904106099
  - kind: registry
    name: hashbrown
    version: 0.17.1
    sha: ed5909b6e89a2db4456e54cd5f673791d7eca6732202bbf2a9cc504fe2f9b84a
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: hermit-abi
    version: 0.5.3
    sha: e17592d60ebacc7d5e169f4663c5f84f9161cc90328abcfe8456f41e4dfcb284
  - kind: registry
    name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
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
    name: indexmap
    version: 2.14.2
    sha: cc4e190f5d26ca7051642629da2c52fc03bde85a03197c99408dcd291734c855
  - kind: registry
    name: is_executable
    version: 1.0.6
    sha: 82cb6a9f675da968c63b6208c641b9dca58fc0133ae53375736b1767b0cab8bd
  - kind: registry
    name: is_terminal_polyfill
    version: 1.70.2
    sha: a6cb138bb79a146c1bd460005623e142ef0181e3d0219cb493e02f7d08a35695
  - kind: registry
    name: itoa
    version: 1.0.18
    sha: 8f42a60cbdf9a97f5d2305f08a87dc4e09308d1276d28c869c684d7777685682
  - kind: registry
    name: js-sys
    version: 0.3.106
    sha: 7883d941dae510fb2d978fc3fe018c71c9e2892fd38854de3e8b92c2e5ad9cc5
  - kind: registry
    name: libc
    version: 0.2.190
    sha: ce5d3ddc6d3fa000eb1536d85e147bfe31aacaba692ed6a876f95cb7c855be78
  - kind: registry
    name: libredox
    version: 0.1.25
    sha: 61ff90caf6077a803a240f62fdbe88645a890bbca49ef8174c3cb0404362171d
  - kind: registry
    name: linux-raw-sys
    version: 0.12.1
    sha: 32a66949e030da00e8c7d4434b251670a91556f4144941d37452769c25d58a53
  - kind: registry
    name: log
    version: 0.4.34
    sha: f9f8bd3e56ce4dfc153cf470fffbfa98c7620958b312ca5c3a4b8d5181fd13c6
  - kind: registry
    name: memchr
    version: 2.8.3
    sha: cf8baf1c55e62ffcace7a9f06f4bd9cd3f0c4beb022d3b367256b91b87513d98
  - kind: registry
    name: memmap2
    version: 0.9.11
    sha: d1219ed1b7f229ee7104d281dd01d6802fe28bb6e95d292942c4daacdeb798c0
  - kind: registry
    name: nix
    version: 0.31.3
    sha: cf20d2fde8ff38632c426f1165ed7436270b44f199fc55284c38276f9db47c3d
  - kind: registry
    name: nu-ansi-term
    version: 0.50.3
    sha: 7957b9740744892f114936ab4a57b3f487491bbeafaf8083688b16841a4240e5
  - kind: registry
    name: num-traits
    version: 0.2.19
    sha: 071dfc062690e90b734c0b2273ce72ad0ffa95f0c74596bc250dcfd960262841
  - kind: registry
    name: num_cpus
    version: 1.17.0
    sha: 91df4bbde75afed763b708b7eee1e8e7651e02d97f6d5dd763e89367e957b23b
  - kind: registry
    name: objc2
    version: 0.6.5
    sha: 08849bbd4767dfae9457696856ae1c84fe4e0281bbe4a7abff2d0e06fb7981f8
  - kind: registry
    name: objc2-encode
    version: 4.1.0
    sha: ef25abbcd74fb2609453eb695bd2f860d389e457f67dc17cafc8b8cbc89d0c33
  - kind: registry
    name: once_cell
    version: 1.21.4
    sha: 9f7c3e4beb33f85d45ae3e3a1792185706c8e16d043238c593331cc7cd313b50
  - kind: registry
    name: once_cell_polyfill
    version: 1.70.2
    sha: 384b8ab6d37215f3c5301a95a4accb5d64aa607f1fcb26a11b5303878451b4fe
  - kind: registry
    name: option-ext
    version: 0.2.0
    sha: 04744f49eae99ab78e0d5c0b603ab218f515ea8cfe5a456d7629ad883a3b6e7d
  - kind: registry
    name: papergrid
    version: 0.18.0
    sha: d0984e668274d34691bc2b262ef0d115de5fa9973bcdee7ae32213f93099153e
  - kind: registry
    name: percent-encoding
    version: 2.3.2
    sha: 9b4f627cb1b25917193a259e49bdad08f671f8d9708acfd5fe0a8c1455d87220
  - kind: registry
    name: pin-project-lite
    version: 0.2.17
    sha: a89322df9ebe1c1578d689c92318e070967d1042b512afbe49518723f4e6d5cd
  - kind: registry
    name: pretty_assertions
    version: 1.4.1
    sha: 3ae130e2f271fbc2ac3a40fb1d07180839cdbbe443c7a27e1e3c13c5cac0116d
  - kind: registry
    name: proc-macro2
    version: 1.0.107
    sha: 985e7ec9bb745e6ce6535b544d84d6cd6f7ad8bd711c398938ae983b91a766d9
  - kind: registry
    name: pulldown-cmark
    version: 0.13.4
    sha: e9f068eba8e7071c5f9511831b44f32c740d5adf574e990f946ddb53db2f314e
  - kind: registry
    name: pulldown-cmark
    version: 0.9.6
    sha: 57206b407293d2bcd3af849ce869d52068623f19e1b5ff8e8778e3309439682b
  - kind: registry
    name: pulldown-cmark-to-cmark
    version: 10.0.4
    sha: 0194e6e1966c23cc5fd988714f85b18d548d773e81965413555d96569931833d
  - kind: registry
    name: quote
    version: 1.0.47
    sha: 1fbf4db142a473a8d80c26bbf18454ed458bf8d26c8219c331daecfdbd079001
  - kind: registry
    name: r-efi
    version: 6.0.0
    sha: f8dcc9c7d52a811697d2151c701e0d08956f92b0e24136cf4cf27b57a6a0d9bf
  - kind: registry
    name: rand
    version: 0.10.3
    sha: 65c9fb96cbc91e3478eaae79a69fcd3f1ae4ad052e471fe6732fff548984b4af
  - kind: registry
    name: rand_core
    version: 0.10.1
    sha: 63b8176103e19a2643978565ca18b50549f6101881c443590420e4dc998a3c69
  - kind: registry
    name: rayon-core
    version: 1.13.0
    sha: 22e18b0f0062d30d4230b2e85ff77fdfe4326feb054b9783a3460d8435c8ab91
  - kind: registry
    name: redox_users
    version: 0.5.3
    sha: 60dc65c0ff1a7ae1294b0c67b9f14baf70b644404010370171787bfac1038fc0
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
    name: roff
    version: 1.1.1
    sha: 323c417e1d9665a65b263ec744ba09030cfb277e9daa0b018a4ab62e57bc8189
  - kind: registry
    name: rustix
    version: 1.1.5
    sha: 891efababe418670775f199f0d233d84843c227a0949a883ce15b37c78d6629d
  - kind: registry
    name: rustversion
    version: 1.0.23
    sha: cf54715a573b99ac80df0bc206da022bcd442c974952c7b9720069370852e21f
  - kind: registry
    name: ryu
    version: 1.0.23
    sha: 9774ba4a74de5f7b1c1451ed6cd5285a32eddb5cccb8cc655a4e50009e06477f
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
    version: 1.0.154
    sha: e7e9cc8b1b85264074fbcc02a88680c4096b1e47df8f739dceb03bf482f04bd6
  - kind: registry
    name: serde_yaml
    version: 0.9.34+deprecated
    sha: 6a8b1a1a2ebf674015cc02edccce75287f1a0130d394307b36743c2f5d504b47
  - kind: registry
    name: sha2
    version: 0.11.1
    sha: 47d7069beb7d6ac7b9acd1039986e73443f24234f41074da099d6f994ac9ad19
  - kind: registry
    name: shellexpand
    version: 3.1.2
    sha: 32824fab5e16e6c4d86dc1ba84489390419a39f97699852b66480bb87d297ed8
  - kind: registry
    name: shlex
    version: 2.0.1
    sha: f8fadd59c855ef2080decdef8ff161eb6661b86933c9d82e5ba29dc602a55aba
  - kind: registry
    name: similar
    version: 3.2.0
    sha: 4f66ca1f7aca2474dc10c942eb22feffc897735f54cd1db90138c2fddb490987
  - kind: registry
    name: slab
    version: 0.4.12
    sha: 0c790de23124f9ab44544d7ac05d60440adc586479ce501c1d6d7da3cd8c9cf5
  - kind: registry
    name: snafu
    version: 0.9.2
    sha: e45cb604038abb7b926b679887b3226d8d0f23874b66623625a0454be425a4b7
  - kind: registry
    name: snafu-derive
    version: 0.9.2
    sha: 287f59010008f0d7cf5e3b03196d666c1acc46c8d3e9cf34c28a1a7157601e72
  - kind: registry
    name: strsim
    version: 0.11.1
    sha: 7da8b5736845d9f2fcb837ea5d9e2628564b3b043a70948a3f0b778838c5fb4f
  - kind: registry
    name: strum
    version: 0.28.0
    sha: 9628de9b8791db39ceda2b119bbe13134770b56c138ec1d3af810d045c04f9bd
  - kind: registry
    name: strum_macros
    version: 0.28.0
    sha: ab85eea0270ee17587ed4156089e10b9e6880ee688791d45a905f5b1ca36f664
  - kind: registry
    name: syn
    version: 2.0.119
    sha: 872831b642d1a07999a962a351ed35b955ea2cfc8f3862091e2a240a84f17297
  - kind: registry
    name: syn
    version: 3.0.9
    sha: d78c8dee4c7bf0e14673097256fed6142ce9d3b85a408189d07482442145823b
  - kind: registry
    name: tabled
    version: 0.22.0
    sha: 2d2596a104db1900b943f97d793a6c99addca918c4525c999f751a0f17d472eb
  - kind: registry
    name: tabled_derive
    version: 0.12.0
    sha: 7dca1937322a1e892b1a65f6a6736183bb0a29d3b4234d1d53bc436dff9beb76
  - kind: registry
    name: tempfile
    version: 3.27.0
    sha: 32497e9a4c7b38532efcdebeef879707aa9f794296a4f0244f6f69e9bc8574bd
  - kind: registry
    name: terminal_size
    version: 0.4.4
    sha: 230a1b821ccbd75b185820a1f1ff7b14d21da1e442e22c0863ea5f08771a8874
  - kind: registry
    name: testing_table
    version: 0.3.0
    sha: 0f8daae29995a24f65619e19d8d31dea5b389f3d853d8bf297bbf607cd0014cc
  - kind: registry
    name: thiserror
    version: 2.0.21
    sha: 09e52cb86a36cede5cb101bf8908837b3e4c6e5e59fe7fd85c23fb56200d189e
  - kind: registry
    name: thiserror-impl
    version: 2.0.21
    sha: fe5197923287db20a58125f0bc85c062f7f2c892de97b18c356f9efb14b28524
  - kind: registry
    name: typed-arena
    version: 2.0.2
    sha: 6af6ae20167a9ece4bcb41af5b80f8a1f1df981f6391189ce00fd257af04126a
  - kind: registry
    name: typenum
    version: 1.20.1
    sha: b6f5e870be6c3b371b77fe0ee0bafb859fa4964b4404c27de1d380043c4dda20
  - kind: registry
    name: unicase
    version: 2.10.0
    sha: 357cc3acc6a036009fd6c973ed009037c732d60d0b4f6c673e9041497482a28f
  - kind: registry
    name: unicode-ident
    version: 1.0.27
    sha: a2c754d6c33795a1c324727428e5a7dedb5b06195f9890bdbcba760d3e246563
  - kind: registry
    name: unicode-segmentation
    version: 1.13.3
    sha: c6f5d3c3b1bf09027a88a6bc961fc00497d651009560b5463668dc81b0fa87a8
  - kind: registry
    name: unicode-width
    version: 0.2.2
    sha: b4ac048d71ede7ee76d585517add45da530660ef4390e49b098733c6e897f254
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
    version: 1.28.0
    sha: 7cc1186384beb7dd8eedea376413fd654937285ea6c9cfbb928dc3043ea4b606
  - kind: registry
    name: wasm-bindgen
    version: 0.2.129
    sha: 9bb54f33acc68fd454578d9820b0bde1a1a3d17aa17bb7b6595806d02886d409
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.129
    sha: 2e29d0c35b16e224a7eeb5cd2d25e3e1968fbd65604117b44d3b789d00ee8535
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.129
    sha: 6f501a8bc3719dba86ef8ae4728879c08001bea749eb1333ac5b91e040e2a6b7
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.129
    sha: 23f0c9c52aa7cd7d77769a4cfe2a9adb1b331f489a41d912ce14513d5ab995c6
  - kind: registry
    name: which
    version: 8.0.6
    sha: bae2f2b2b816647a1cab1acc91f5bd20812d53cb344382635ec2181940c8034f
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
    name: yansi
    version: 1.0.1
    sha: cfe53a6657fd280eaa890a3bc59152892ffa3e30101319d168b781ed6529b049
  - kind: registry
    name: zmij
    version: 1.0.23
    sha: 29666d0abbfad1e3dc4dcf6144730dd3a3ab225bbbdac83319345b1b44ccfc1b
