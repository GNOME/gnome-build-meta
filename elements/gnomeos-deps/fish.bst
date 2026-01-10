kind: cmake

sources:
- kind: git_repo
  url: github:fish-shell/fish-shell.git
  track: '*.*'
  ref: 4.3.3-0-gc98fd886fd726806c1c5c42cf1b67b458ffa1cb9
- kind: cargo2
  ref:
  - kind: registry
    name: aho-corasick
    version: 1.1.4
    sha: ddd31a130427c27518df266943a5308ed92d4b226cc639f5a8f1002816174301
  - kind: registry
    name: allocator-api2
    version: 0.2.21
    sha: 683d7910e743518b0e34f1186f92494becacb047c7b6bf616c96772180fef923
  - kind: registry
    name: autocfg
    version: 1.5.0
    sha: c08606f8c3cbf4ce6ec8e28fb0014a2c086708fe954eaa885384a6165172e7e8
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
    name: cc
    version: 1.2.51
    sha: 7a0aeaff4ff1a90589618835a598e545176939b97874f7abc7851caa0618f203
  - kind: registry
    name: cfg-if
    version: 1.0.4
    sha: 9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801
  - kind: registry
    name: cfg_aliases
    version: 0.2.1
    sha: 613afe47fcd5fac7ccf1db93babcb082c5994d996f20b8b159f2ad1658eb5724
  - kind: registry
    name: cpufeatures
    version: 0.2.17
    sha: 59ed5838eebb26a2bb2e58f6d5b5316989ae9d08bab10e0e6d103e656d1b0280
  - kind: registry
    name: crypto-common
    version: 0.1.7
    sha: 78c8292055d1c1df0cce5d180393dc8cce0abec0a7102adb6c7b1eef6016d60a
  - kind: registry
    name: digest
    version: 0.10.7
    sha: 9ed9a281f7bc9b7576e61468ba615a66a5c8cfdff42420a70aa82701a3b1e292
  - kind: registry
    name: dirs
    version: 6.0.0
    sha: c3e8aa94d75141228480295a7d0e7feb620b1a5ad9f12bc40be62411e38cce4e
  - kind: registry
    name: dirs-sys
    version: 0.5.0
    sha: e01a3366d27ee9890022452ee61b2b63a67e6f13f58900b651ff5665f0bb1fab
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
    version: 2.3.0
    sha: 37909eebbb50d72f9059c3b6d82c0463f2ff062c9e95845c43a6c9c0355411be
  - kind: registry
    name: find-msvc-tools
    version: 0.1.6
    sha: 645cbb3a84e60b7531617d5ae4e57f7e27308f6445f5abf653209ea76dec8dff
  - kind: registry
    name: fnv
    version: 1.0.7
    sha: 3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1
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
    version: 0.2.16
    sha: 335ff9f135e4384c8150d6f27c6daed433577f86b4750418338c01a1a2528592
  - kind: registry
    name: getrandom
    version: 0.3.4
    sha: 899def5c37c4fd7b2664648c28120ecec138e4d395b459e5ca34f9cce2dd77fd
  - kind: registry
    name: globset
    version: 0.4.18
    sha: 52dfc19153a48bde0cbd630453615c8151bce3a5adfac7a0aebfbf0a1e1f57e3
  - kind: registry
    name: hashbrown
    version: 0.16.1
    sha: 841d1cc9bed7f9236f321df977030373f4a4163ae1a7dbfe1a51a2c1a51d9100
  - kind: registry
    name: jobserver
    version: 0.1.34
    sha: 9afb3de4395d6b3e67a780b6de64b51c978ecf11cb9a462c66be7d4ca9039d33
  - kind: registry
    name: libc
    version: 0.2.178
    sha: 37c93d8daa9d8a012fd8ab92f088405fb202ea0b6ab73ee2482ae66af4f42091
  - kind: registry
    name: libredox
    version: 0.1.11
    sha: df15f6eac291ed1cf25865b1ee60399f57e7c227e7f51bdbd4c5270396a9ed50
  - kind: registry
    name: lock_api
    version: 0.4.14
    sha: 224399e74b87b5f3557511d98dff8b14089b3dadafcab6bb93eab67d3aace965
  - kind: registry
    name: log
    version: 0.4.29
    sha: 5e5032e24019045c762d3c0f28f5b6b8bbf38563a65908389bf7978758920897
  - kind: registry
    name: lru
    version: 0.16.2
    sha: 96051b46fc183dc9cd4a223960ef37b9af631b55191852a8274bfef064cda20f
  - kind: registry
    name: macro_rules_attribute
    version: 0.2.2
    sha: 65049d7923698040cd0b1ddcced9b0eb14dd22c5f86ae59c3740eab64a676520
  - kind: registry
    name: macro_rules_attribute-proc_macro
    version: 0.2.2
    sha: 670fdfda89751bc4a84ac13eaa63e205cf0fd22b4c9a5fbfa085b63c1f1d3a30
  - kind: registry
    name: memchr
    version: 2.7.6
    sha: f52b00d39961fc5b2736ea853c9cc86238e165017a493d1d5c8eac6bdc4cc273
  - kind: registry
    name: minimal-lexical
    version: 0.2.1
    sha: 68354c5c6bd36d73ff3feceb05efa59b6acb7626617f4962be322a825e61f79a
  - kind: registry
    name: nix
    version: 0.30.1
    sha: 74523f3a35e05aba87a1d978330aef40f67b0304ac79c1c00b294c9830543db6
  - kind: registry
    name: nom
    version: 7.1.3
    sha: d273983c5a657a70a3e8f2a01329822f3b8c8172b73826411a55751e404a0a4a
  - kind: registry
    name: num-traits
    version: 0.2.19
    sha: 071dfc062690e90b734c0b2273ce72ad0ffa95f0c74596bc250dcfd960262841
  - kind: registry
    name: once_cell
    version: 1.21.3
    sha: 42f5e15c9953c5e4ccceeb2e7382a716482c34515315f7b03532b8b4e8393d2d
  - kind: registry
    name: option-ext
    version: 0.2.0
    sha: 04744f49eae99ab78e0d5c0b603ab218f515ea8cfe5a456d7629ad883a3b6e7d
  - kind: registry
    name: parking_lot
    version: 0.12.5
    sha: 93857453250e3077bd71ff98b6a65ea6621a19bb0f559a85248955ac12c45a1a
  - kind: registry
    name: parking_lot_core
    version: 0.9.12
    sha: 2621685985a2ebf1c516881c026032ac7deafcda1a2c9b7850dc81e3dfcb64c1
  - kind: registry
    name: paste
    version: 1.0.15
    sha: 57c0d7b74b563b49d38dae00a0c37d4d6de9b432382b2892f0574ddcae73fd0a
  - kind: git
    commit: 85b7afba1a9d9bd445779800e5bcafeb732e4421
    repo: github:fish-shell/rust-pcre2
    query:
      tag: 0.2.9-utf32
    name: pcre2
    version: 0.2.9
  - kind: git
    commit: 85b7afba1a9d9bd445779800e5bcafeb732e4421
    repo: github:fish-shell/rust-pcre2
    query:
      tag: 0.2.9-utf32
    name: pcre2-sys
    version: 0.2.9
  - kind: registry
    name: phf
    version: 0.11.3
    sha: 1fd6780a80ae0c52cc120a26a1a42c1ae51b247a253e4e06113d23d2c2edd078
  - kind: registry
    name: phf
    version: 0.13.1
    sha: c1562dc717473dbaa4c1f85a36410e03c047b2e7df7f45ee938fbef64ae7fadf
  - kind: registry
    name: phf_codegen
    version: 0.11.3
    sha: aef8048c789fa5e851558d709946d6d79a8ff88c0440c587967f8e94bfb1216a
  - kind: registry
    name: phf_codegen
    version: 0.13.1
    sha: 49aa7f9d80421bca176ca8dbfebe668cc7a2684708594ec9f3c0db0805d5d6e1
  - kind: registry
    name: phf_generator
    version: 0.11.3
    sha: 3c80231409c20246a13fddb31776fb942c38553c51e871f8cbd687a4cfb5843d
  - kind: registry
    name: phf_generator
    version: 0.13.1
    sha: 135ace3a761e564ec88c03a77317a7c6b80bb7f7135ef2544dbe054243b89737
  - kind: registry
    name: phf_shared
    version: 0.11.3
    sha: 67eabc2ef2a60eb7faa00097bd1ffdb5bd28e62bf39990626a582201b7a754e5
  - kind: registry
    name: phf_shared
    version: 0.13.1
    sha: e57fef6bc5981e38c2ce2d63bfa546861309f875b8a75f092d1d54ae2d64f266
  - kind: registry
    name: pkg-config
    version: 0.3.32
    sha: 7edddbd0b52d732b21ad9a5fab5c704c14cd949e5e9a1ec5929a24fded1b904c
  - kind: registry
    name: portable-atomic
    version: 1.12.0
    sha: f59e70c4aef1e55797c2e8fd94a4f2a973fc972cfde0e0b05f683667b0cd39dd
  - kind: registry
    name: ppv-lite86
    version: 0.2.21
    sha: 85eae3c4ed2f50dcfe72643da4befc30deadb458a9b590d720cde2f2b1e97da9
  - kind: registry
    name: proc-macro2
    version: 1.0.103
    sha: 5ee95bc4ef87b8d5ba32e8b7714ccc834865276eab0aed5c9958d00ec45f49e8
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
    name: redox_users
    version: 0.5.2
    sha: a4e608c6638b9c18977b00b475ac1f28d14e84b27d8d42f70e0bf1e3dec127ac
  - kind: registry
    name: regex-automata
    version: 0.4.13
    sha: 5276caf25ac86c8d810222b3dbb938e512c55c6831a10f3e6ed1c93b84041f1c
  - kind: registry
    name: regex-syntax
    version: 0.8.8
    sha: 7a2d987857b319362043e95f5353c0535c1f58eec5336fdfcf626430af7def58
  - kind: registry
    name: rsconf
    version: 0.3.0
    sha: 06cbd984e96cc891aa018958ac3d09986c0ea7635eedfff670b99a90970f159f
  - kind: registry
    name: rust-embed
    version: 8.9.0
    sha: 947d7f3fad52b283d261c4c99a084937e2fe492248cb9a68a8435a861b8798ca
  - kind: registry
    name: rust-embed-impl
    version: 8.9.0
    sha: 5fa2c8c9e8711e10f9c4fd2d64317ef13feaab820a4c51541f1a8c8e2e851ab2
  - kind: registry
    name: rust-embed-utils
    version: 8.9.0
    sha: 60b161f275cb337fe0a44d924a5f4df0ed69c2c39519858f931ce61c779d3475
  - kind: registry
    name: same-file
    version: 1.0.6
    sha: 93fc1dc3aaa9bfed95e02e6eadabb4baf7e3078b0bd1b4d7b6b0b68378900502
  - kind: registry
    name: scc
    version: 2.4.0
    sha: 46e6f046b7fef48e2660c57ed794263155d713de679057f2d0c169bfc6e756cc
  - kind: registry
    name: scopeguard
    version: 1.2.0
    sha: 94143f37725109f92c262ed2cf5e59bce7498c01bcc1502d7b9afe439a4e9f49
  - kind: registry
    name: sdd
    version: 3.0.10
    sha: 490dcfcbfef26be6800d11870ff2df8774fa6e86d047e3e8c8a76b25655e41ca
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
    name: serial_test
    version: 3.2.0
    sha: 1b258109f244e1d6891bf1053a55d63a5cd4f8f4c30cf9a1280989f80e7a1fa9
  - kind: registry
    name: serial_test_derive
    version: 3.2.0
    sha: 5d69265a08751de7844521fd15003ae0a888e035773ba05695c5c759a6f89eef
  - kind: registry
    name: sha2
    version: 0.10.9
    sha: a7507d819769d01a365ab707794a4084392c824f54a7a6a7862f8c3d0892b283
  - kind: registry
    name: shellexpand
    version: 3.1.1
    sha: 8b1fdf65dd6331831494dd616b30351c38e96e45921a27745cf98490458b90bb
  - kind: registry
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
  - kind: registry
    name: siphasher
    version: 1.0.1
    sha: 56199f7ddabf13fe5074ce809e7d3f42b42ae711800501b5b16ea82ad029c39d
  - kind: registry
    name: smallvec
    version: 1.15.1
    sha: 67b1b7a3b5fe4f1376887184045fcf45c69e92af734b7aaddc05fb777b6fbd03
  - kind: registry
    name: syn
    version: 2.0.111
    sha: 390cc9a294ab71bdb1aa2e99d13be9c753cd2d7bd6560c77118597410c4d2e87
  - kind: registry
    name: terminfo
    version: 0.9.0
    sha: d4ea810f0692f9f51b382fff5893887bb4580f5fa246fde546e0b13e7fcee662
  - kind: registry
    name: thiserror
    version: 2.0.17
    sha: f63587ca0f12b72a0600bcba1d40081f830876000bb46dd2337a3051618f4fc8
  - kind: registry
    name: thiserror-impl
    version: 2.0.17
    sha: 3ff15c8ecd7de3849db632e14d18d2571fa09dfc5ed93479bc4485c7a517c913
  - kind: registry
    name: typenum
    version: 1.19.0
    sha: 562d481066bde0658276a35467c4af00bdc6ee726305698a55b86e61d7ad82bb
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
    name: unix_path
    version: 1.0.1
    sha: af8e291873ae77c4c8d9c9b34d0bee68a35b048fb39c263a5155e0e353783eaf
  - kind: registry
    name: unix_str
    version: 1.0.0
    sha: 2ace0b4755d0a2959962769239d56267f8a024fef2d9b32666b3dcd0946b0906
  - kind: registry
    name: version_check
    version: 0.9.5
    sha: 0b928f33d975fc6ad9f86c8f283853ad26bdd5b10b7f1542aa2fa15e2289105a
  - kind: registry
    name: walkdir
    version: 2.5.0
    sha: 29790946404f91d9c5d06f9874efddea1dc06c5efe94541a7d6863108e3a5e4b
  - kind: registry
    name: wasi
    version: 0.11.1+wasi-snapshot-preview1
    sha: ccf3ec651a847eb01de73ccad15eb7d99f80485de043efb2f370cd654f4ea44b
  - kind: registry
    name: wasip2
    version: 1.0.1+wasi-0.2.4
    sha: 0562428422c63773dad2c345a1882263bbf4d65cf3f42e90921f787ef5ad58e7
  - kind: registry
    name: widestring
    version: 1.2.1
    sha: 72069c3113ab32ab29e5584db3c6ec55d416895e60715417b5b883a357c3e471
  - kind: registry
    name: winapi-util
    version: 0.1.11
    sha: c2a7b1c03c876122aa43f3020e6c3c3ee5c05081c9a00739faf7503aeba10d22
  - kind: registry
    name: windows-link
    version: 0.2.1
    sha: f0805222e57f7521d6a62e36fa9163bc891acd422f971defe97d64e70d0a4fe5
  - kind: registry
    name: windows-sys
    version: 0.61.2
    sha: ae137229bcbd6cdf0f7b80a31df61766145077ddf49416a728b02cb3921ff3fc
  - kind: registry
    name: wit-bindgen
    version: 0.46.0
    sha: f17a85883d4e6d00e8a97c586de764dabcc06133f7f1d55dce5cdc070ad7fe59
  - kind: registry
    name: xterm-color
    version: 1.0.1
    sha: 4de5f056fb9dc8b7908754867544e26145767187aaac5a98495e88ad7cb8a80f
  - kind: registry
    name: zerocopy
    version: 0.8.31
    sha: fd74ec98b9250adb3ca554bdde269adf631549f51d8a8f8f0a10b50f1cb298c3
  - kind: registry
    name: zerocopy-derive
    version: 0.8.31
    sha: d8a8d209fdf45cf5138cbb5a506f6b52522a25afccc534d1475dad8e31105c6a
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/sed.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

runtime-depends:
- freedesktop-sdk.bst:components/gawk.bst

variables:
  cmake-local: >-
    -DCMAKE_INSTALL_SYSCONFDIR=%{sysconfdir}
    -DCURSES_NEED_NCURSES=TRUE
    -DWITH_MESSAGE_LOCALIZATION=ON

config:
  install-commands:
    (>):
    # Replace hardlinks with symlinks
    - |
      rm %{install-root}%{bindir}/fish_indent
      ln --symbolic fish %{install-root}%{bindir}/fish_indent

    - |
      rm %{install-root}%{bindir}/fish_key_reader
      ln --symbolic fish %{install-root}%{bindir}/fish_key_reader

public:
  bst:
    integration-commands:
    - echo %{bindir}/fish >> /etc/shells

