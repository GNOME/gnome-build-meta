kind: cargo

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/make.bst
- freedesktop-sdk.bst:components/cargo-c.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
- kind: git_repo
  url: github:casey/just.git
  track: '*.*.*'
  ref: 1.58.0-0-g7f4ef81bd6a93faa2b28430912c8e9ab0e3dd29a
- kind: cargo2
  ref:
  - kind: registry
    name: aho-corasick
    version: 1.1.5
    sha: c982642fa9e8606056828ee9a8505737230110bb1099153c79efe865c59d12ba
  - kind: registry
    name: android_system_properties
    version: 0.1.5
    sha: 819e7219dbd41043ac279b19830f2efc897156490d7fd6ea916720117ee66311
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
    name: arrayref
    version: 0.3.9
    sha: 76a2e8124351fda1ef8aaaa3bbd7ebbcb486bbcd4225aca0aa0d84bb2db8fecb
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
    version: 2.13.1
    sha: b588b76d00fde79687d7646a9b5bdf3cc0f655e0bbd080335a95d7e96f3587da
  - kind: registry
    name: blake3
    version: 1.8.5
    sha: 0aa83c34e62843d924f905e0f5c866eb1dd6545fc4d719e803d9ba6030371fce
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
    version: 1.13.0
    sha: 1f7dc094d718f2e1c1559ad110e27eeaae14a5465d3d56dd6dbd793079fbd530
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
    version: 1.2.5
    sha: bb1307f12aa967b5a58416e87b3653360e0fd614a016b6e970db08fecbb1b80d
  - kind: registry
    name: cc
    version: 1.4.0
    sha: 5add81bb678e6cb321aff7fa0dc7689ad82b112dbc032cea19f91d6b8e3582b9
  - kind: registry
    name: cfg-if
    version: 1.0.4
    sha: 9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801
  - kind: registry
    name: cfg_aliases
    version: 0.2.2
    sha: f079e83a288787bcd14a6aea84cee5c87a67c5a3e660c30f557a3d24761b3527
  - kind: registry
    name: chacha20
    version: 0.10.1
    sha: d524456ba66e72eb8b115ff89e01e497f8e6d11d78b70b1aa13c0fbd97540a81
  - kind: registry
    name: chrono
    version: 0.4.45
    sha: 1aa79e62e7697b8e29b513a68abacf485adcd1fe8284a4316c5ae868e6633327
  - kind: registry
    name: clap
    version: 4.6.5
    sha: 301b56658598e48f3648647ac6fc887be7e7108eddfa4e9b63fcf3ec58c0cadf
  - kind: registry
    name: clap_builder
    version: 4.6.5
    sha: 94a65403d1a1bd28f7dc68eb8506e8874808ee5eecb59298de588e2e1407a078
  - kind: registry
    name: clap_complete
    version: 4.6.8
    sha: b1f84a88507dbd05c695f2cb5e8558e747179134005e9893882dec964190ed89
  - kind: registry
    name: clap_derive
    version: 4.6.4
    sha: d012d2b9d65aca7f18f4d9878a045bc17899bba951561ba5ec3c2ba1eed9a061
  - kind: registry
    name: clap_lex
    version: 1.1.0
    sha: c8d4a3bb8b1e0c1050499d1815f5ab16d04f0959b233085fb31653fbfc9d98f9
  - kind: registry
    name: clap_mangen
    version: 0.3.0
    sha: d82842b45bf9f6a3be090dd860095ac30728042c08e0d6261ca7259b5d850f07
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
    version: 0.3.0
    sha: 8b2a41393f66f16b0823bb79094d54ac5fbd34ab292ddafb9a0456ac9f87d201
  - kind: registry
    name: crossbeam-deque
    version: 0.8.7
    sha: 5181e0de7b61eb03a81e347d6dd8797bae9da5146707b51077e2d71a54ec0ceb
  - kind: registry
    name: crossbeam-epoch
    version: 0.9.20
    sha: 2d6914041f254d6e9176c01941b21115dcfb7089e55135a35411081bd106ef3f
  - kind: registry
    name: crossbeam-utils
    version: 0.8.22
    sha: 61803da095bee82a81bb1a452ecc25d3b2f1416d1897eb86430c6159ef717c17
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
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
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
    version: 0.1.9
    sha: 5baebc0774151f905a1a2cc41989300b1e6fbb29aff0ceffa1064fdd3088d582
  - kind: registry
    name: fnv
    version: 1.0.7
    sha: 3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1
  - kind: registry
    name: futures-core
    version: 0.3.33
    sha: 2cd50c473c80f6d7c3670a752354b8e569b1a7cbfdc0419ec88e5edad85e0dc7
  - kind: registry
    name: futures-task
    version: 0.3.33
    sha: b231ed28831efb4a61a08580c4bc233ec56bc009f4cd8f52da2c3cb97df0c109
  - kind: registry
    name: futures-util
    version: 0.3.33
    sha: a77a90a256fce34da66415271e30f94ee91c57b04b8a2c042d9cf3220179deaa
  - kind: registry
    name: getopts
    version: 0.2.24
    sha: cfe4fbac503b8d1f88e6676011885f34b7174f46e59956bba534ba83abded4df
  - kind: registry
    name: getrandom
    version: 0.2.17
    sha: ff2abc00be7fca6ebc474524697ae276ad847ad0a6b3faa4bcb027e9a4614ad0
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
    version: 0.5.2
    sha: fc0fef456e4baa96da950455cd02c081ca953b141298e41db3fc7e36b1da849c
  - kind: registry
    name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - kind: registry
    name: hybrid-array
    version: 0.4.14
    sha: 707114b52a152fa7bdb290cd7cd5912d9467273b6d74e21b8d81aca1f8533f6b
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
    version: 2.14.0
    sha: d466e9454f08e4a911e14806c24e16fba1b4c121d1ea474396f396069cf949d9
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
    version: 0.3.103
    sha: 53b44bfcdb3f8d5837a46dae1ca9660a837176eee74a28b229bc626816589102
  - kind: registry
    name: libc
    version: 0.2.189
    sha: 3eaf3ede3fee6db1a4c2ee091bf8a8b4dccdc6d17f656fb07896ee72867612f2
  - kind: registry
    name: libredox
    version: 0.1.19
    sha: 2026a5056764a10b2bf5d56488cba40da507f5493a6a429340e2004d9ed085fa
  - kind: registry
    name: linux-raw-sys
    version: 0.12.1
    sha: 32a66949e030da00e8c7d4434b251670a91556f4144941d37452769c25d58a53
  - kind: registry
    name: log
    version: 0.4.33
    sha: 0ceec5bc11778974d1bcb055b18002eba7f4b3518b6a0081b3af5f21666da9ad
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
    version: 0.6.4
    sha: 3a12a8ed07aefc768292f076dc3ac8c48f3781c8f2d5851dd3d98950e8c5a89f
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
    version: 0.14.0
    sha: b915f831b85d984193fdc3d3611505871dc139b2534530fa01c1a6a6707b6723
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
    name: proc-macro-error-attr2
    version: 2.0.0
    sha: 96de42df36bb9bba5542fe9f1a054b8cc87e172759a1868aa05c1f3acc89dfc5
  - kind: registry
    name: proc-macro-error2
    version: 2.0.1
    sha: 11ec05c52be0a07b08061f7dd003e7d7092e0472bc731b4af7bb1ef876109802
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
    version: 0.10.2
    sha: c7f5fa3a058cd35567ef9bfa5e75732bee0f9e4c55fa90477bef2dfcdbc4be80
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
    version: 0.5.2
    sha: a4e608c6638b9c18977b00b475ac1f28d14e84b27d8d42f70e0bf1e3dec127ac
  - kind: registry
    name: regex
    version: 1.13.1
    sha: f020237b6c8eed93db2e2cb53c00c60a8e1bc73da7d073199a1180401450218d
  - kind: registry
    name: regex-automata
    version: 0.4.16
    sha: 8fcfdb36bda0c880c5931cdc7a2bcdc8ba4556847b9d912bca70bc94708711ad
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
    version: 1.1.4
    sha: b6fe4565b9518b83ef4f91bb47ce29620ca828bd32cb7e408f0062e9930ba190
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
    version: 1.0.151
    sha: c841b55ecdae098c80dcae9cf767f6f8a0c2cdb3416bbef72181df4d0fe73f14
  - kind: registry
    name: serde_yaml
    version: 0.9.34+deprecated
    sha: 6a8b1a1a2ebf674015cc02edccce75287f1a0130d394307b36743c2f5d504b47
  - kind: registry
    name: sha2
    version: 0.11.0
    sha: 446ba717509524cb3f22f17ecc096f10f4822d76ab5c0b9822c5f9c284e825f4
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
    version: 3.1.1
    sha: e6505efef05804732ed8a3f2d4f279429eb485bd69d5b0cc6b19cc02005cda16
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
    version: 3.0.3
    sha: 53e9bae58849f64dfa4f5d5ae372c8341f7305f82a3868709269343628b659a3
  - kind: registry
    name: tabled
    version: 0.18.0
    sha: 121d8171ee5687a4978d1b244f7d99c43e7385a272185a2f1e1fa4dc0979d444
  - kind: registry
    name: tabled_derive
    version: 0.10.0
    sha: 52d9946811baad81710ec921809e2af67ad77719418673b2a3794932d57b7538
  - kind: registry
    name: tempfile
    version: 3.27.0
    sha: 32497e9a4c7b38532efcdebeef879707aa9f794296a4f0244f6f69e9bc8574bd
  - kind: registry
    name: terminal_size
    version: 0.4.4
    sha: 230a1b821ccbd75b185820a1f1ff7b14d21da1e442e22c0863ea5f08771a8874
  - kind: registry
    name: thiserror
    version: 2.0.19
    sha: 09a43598840e33d5b0331f38c5e30d13bb11c11210a4b58f0d9b18a5a5eefcd9
  - kind: registry
    name: thiserror-impl
    version: 2.0.19
    sha: 43cbfe0cf76104d42a574802844187e84a305e531ed54455f11fbde0f10541cd
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
    version: 2.9.0
    sha: dbc4bc3a9f746d862c45cb89d705aa10f187bb96c76001afab07a0d35ce60142
  - kind: registry
    name: unicode-ident
    version: 1.0.24
    sha: e6e4313cd5fcd3dad5cafa179702e2b244f760991f45397d14d4ebf38247da75
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
    version: 1.24.0
    sha: bf3923a6f5c4c6382e0b653c4117f48d631ea17f38ed86e2a828e6f7412f5239
  - kind: registry
    name: wasi
    version: 0.11.1+wasi-snapshot-preview1
    sha: ccf3ec651a847eb01de73ccad15eb7d99f80485de043efb2f370cd654f4ea44b
  - kind: registry
    name: wasm-bindgen
    version: 0.2.126
    sha: 4b067c0c11094aef6b7a801c1e34a26affafdf3d051dba08456b868789aaf9a4
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.126
    sha: 167ce5e579f6bcf889c4f7175a8a5a585de84e8ff93976ce393efa5f2837aab1
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.126
    sha: f3997c7839262f4ef12cf90b818d6340c18e80f263f1a94bf157d0ec4420380e
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.126
    sha: dc1b4cb0cc549fcf58d7dfc081778139b3d283a081644e833e84682ad71cea24
  - kind: registry
    name: which
    version: 8.0.5
    sha: 8f3ef584124b911bcc3875c2f1472e80f24361ceb789bd1c62b3e9a3df9ff43c
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
