kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-tour.git
  track: master
  ref: 43.0-4-gea8bdc07c05468aebfc24d21f2f3f4d1ac41258a
- kind: cargo
  ref:
  - name: aho-corasick
    version: 0.7.19
    sha: b4f55bd91a0978cbfd91c457a164bab8b4001c833b7f323132c0a4e1922dd44e
  - name: anyhow
    version: 1.0.65
    sha: 98161a4e3e2184da77bb14f02184cdd111e83bbbcc9979dfee3c44b9a85f5602
  - name: atty
    version: 0.2.14
    sha: d9b39be18770d11421cdb1b9947a45dd3f37e93092cbf377614828a319d5fee8
  - name: autocfg
    version: 1.1.0
    sha: d468802bab17cbc0cc575e9b053f41e72aa36bfa6b7f55e3529ffa43161b97fa
  - name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - name: cairo-rs
    version: 0.16.0
    sha: bd6d010ad1f8103b579afac7713f061e3fc99d101f23928a432e2d42e9bdf249
  - name: cairo-sys-rs
    version: 0.16.0
    sha: 5119ea655ec777b523f0b57279e70f8a4542f61b0e98a48f892b4ef043fd4c5d
  - name: cc
    version: 1.0.73
    sha: 2fff2a6927b3bb87f9595d67196a70493f627687a71d87a0d692242c33f58c11
  - name: cfg-expr
    version: 0.11.0
    sha: b0357a6402b295ca3a86bc148e84df46c02e41f41fef186bda662557ef6328aa
  - name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - name: env_logger
    version: 0.7.1
    sha: 44533bbbb3bb3c1fa17d9f2e4e38bbbaf8396ba82193c4cb1b6445d711445d36
  - name: field-offset
    version: 0.3.4
    sha: 1e1c54951450cbd39f3dbcf1005ac413b49487dabf18a720ad2383eccfeffb92
  - name: futures-channel
    version: 0.3.24
    sha: 30bdd20c28fadd505d0fd6712cdfcb0d4b5648baf45faef7f852afb2399bb050
  - name: futures-core
    version: 0.3.24
    sha: 4e5aa3de05362c3fb88de6531e6296e85cde7739cccad4b9dfeeb7f6ebce56bf
  - name: futures-executor
    version: 0.3.24
    sha: 9ff63c23854bee61b6e9cd331d523909f238fc7636290b96826e9cfa5faa00ab
  - name: futures-io
    version: 0.3.24
    sha: bbf4d2a7a308fd4578637c0b17c7e1c7ba127b8f6ba00b29f717e9655d85eb68
  - name: futures-macro
    version: 0.3.24
    sha: 42cd15d1c7456c04dbdf7e88bcd69760d74f3a798d6444e16974b505b0e62f17
  - name: futures-task
    version: 0.3.24
    sha: a6508c467c73851293f390476d4491cf4d227dbabcd4170f3bb6044959b294f1
  - name: futures-util
    version: 0.3.24
    sha: 44fb6cb1be61cc1d2e43b262516aafcf63b241cffdb1d3fa115f91d9c7b09c90
  - name: gdk-pixbuf
    version: 0.16.0
    sha: c0fb526c8c3a075eda15f961820edf3e15fe18576ac4fbabbb324e4cc6c421e6
  - name: gdk-pixbuf-sys
    version: 0.16.0
    sha: 7df12d15c10c3c5a84d9fb4ba0e27659f6a2bdee4f27f8b17126da15d5ddd3f2
  - name: gdk4
    version: 0.5.0
    sha: 66fe07f362c977c4684d1136a29f097208b3ccb2013ab6f441a3c60a046fd358
  - name: gdk4-sys
    version: 0.5.0
    sha: ddcf9e3ab5f237bb641e7f2fccc4b26d5b86f111f0d62e27d452dc24964541c2
  - name: gettext-rs
    version: 0.7.0
    sha: e49ea8a8fad198aaa1f9655a2524b64b70eb06b2f3ff37da407566c93054f364
  - name: gettext-sys
    version: 0.21.3
    sha: c63ce2e00f56a206778276704bbe38564c8695249fdc8f354b4ef71c57c3839d
  - name: gio
    version: 0.16.0
    sha: 3025f17aab38ebbb40d785806cf36c292c4dd6755b05584fc52d34fb87533263
  - name: gio-sys
    version: 0.16.0
    sha: 6da1bba9d3f2ab13a6e9932c40f240dc99ebc9f0bdc35cfb130d1a3df36f374c
  - name: glib
    version: 0.16.0
    sha: 9d9d01334b55e33e9189fa956dde9885e5439dfa6c448f4d724e222addbf06f2
  - name: glib-macros
    version: 0.16.0
    sha: e195c1311fa6b04d7b896ea39385f6bd60ef5d25bf74a7c11c8c3f94f6c1a572
  - name: glib-sys
    version: 0.16.0
    sha: b33357bb421a77bd849f6a0bfcaf3b4b256a2577802971bb5dd522d530f27021
  - name: gobject-sys
    version: 0.16.0
    sha: 63ca11a57400f3d4fda594e002844be47900c9fb8b29e2155c6e37a1f24e51b3
  - name: graphene-rs
    version: 0.16.0
    sha: 95a8de4506a64776d90fedf9c28fdca5a7127f8cc9c78976e8184ac6f42685d8
  - name: graphene-sys
    version: 0.16.0
    sha: f2c952f764f02f8546fcc5d014bc78aa704c6d453c828c8b429121f704349163
  - name: gsk4
    version: 0.5.0
    sha: d4fc2b86c751a7fe9aad0fdba85937a6aace3a8453e0e2a08d2a31ce4bb8ae55
  - name: gsk4-sys
    version: 0.5.0
    sha: 2cb53e25cbbe3fa8e3e9db7c06d65085086fadbec4cd0aa567b2e2a4917db83d
  - name: gtk4
    version: 0.5.0
    sha: 954e5a318221d69301c80f71cc2d2c15d0d4e259b1b253cad762e93f251bf6d6
  - name: gtk4-macros
    version: 0.5.0
    sha: ce5eb86364b216ee8c497b1121831168fb25130d3378495a135f8e5c1972db7b
  - name: gtk4-sys
    version: 0.5.0
    sha: 0f04bd0b63d999a36ae53a916ee4b20ea64a3ef4732ca8a98b1fde4a22c1476c
  - name: heck
    version: 0.4.0
    sha: 2540771e65fc8cb83cd6e8a237f70c319bd5c29f78ed1084ba5d50eeac86f7f9
  - name: hermit-abi
    version: 0.1.19
    sha: 62b467343b94ba476dcb2500d242dadbb39557df889310ac77c5d99100aaac33
  - name: humantime
    version: 1.3.0
    sha: df004cfca50ef23c36850aaaa59ad52cc70d0e90243c3c7737a4dd32dc7a3c4f
  - name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - name: libadwaita
    version: 0.2.0
    sha: ed92f031cf7f3d501b84f41e4d05aed6ebfd8eed59a8fc0cccbf51359e92c8e3
  - name: libadwaita-sys
    version: 0.2.0
    sha: 9ec4243e86fb53d06df2461d543529a640c9a0fba2d4cc850b70e11a85f9d952
  - name: libc
    version: 0.2.135
    sha: 68783febc7782c6c5cb401fbda4de5a9898be1762314da0bb2c10ced61f18b0c
  - name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - name: log
    version: 0.4.17
    sha: abb12e687cfb44aa40f41fc3978ef76448f9b6038cad6aef4259d3c095a2382e
  - name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - name: memchr
    version: 2.5.0
    sha: 2dffe52ecf27772e601905b7522cb4ef790d2cc203488bbd0e2fe85fcb74566d
  - name: memoffset
    version: 0.6.5
    sha: 5aa361d4faea93603064a027415f07bd8e1d5c88c9fbf68bf56a285428fd79ce
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
    version: 1.15.0
    sha: e82dad04139b71a90c080c8463fe0dc7902db5192d939bd0950f074d014339e1
  - name: pango
    version: 0.16.0
    sha: 7208c60f224cf6e44c551df5ee2ef38f9da0fd29d7c5a0402000b8ab0520e798
  - name: pango-sys
    version: 0.16.0
    sha: 922441c228366ed98d3534b87bc7c987c50564094c3abbc3513717786419252d
  - name: pest
    version: 2.4.0
    sha: dbc7bc69c062e492337d74d59b120c274fd3d261b6bf6d3207d499b4b379c41a
  - name: pin-project-lite
    version: 0.2.9
    sha: e0a7ae3ac2f1173085d398531c705756c94a4c56843785df85a60c1a0afac116
  - name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - name: pkg-config
    version: 0.3.25
    sha: 1df8c4ec4b0627e53bdf214615ad287367e482558cf84b109250b37464dc03ae
  - name: pretty_env_logger
    version: 0.4.0
    sha: 926d36b9553851b8b0005f1275891b392ee4d2d833852c417ed025477350fb9d
  - name: proc-macro-crate
    version: 1.2.1
    sha: eda0fc3b0fb7c975631757e14d9049da17374063edb6ebbcbc54d880d4fe94e9
  - name: proc-macro-error
    version: 1.0.4
    sha: da25490ff9892aab3fcf7c36f08cfb902dd3e71ca0f9f9517bea02a73a5ce38c
  - name: proc-macro-error-attr
    version: 1.0.4
    sha: a1be40180e52ecc98ad80b184934baf3d0d29f979574e439af5a55274b35f869
  - name: proc-macro2
    version: 1.0.47
    sha: 5ea3d908b0e36316caf9e9e2c4625cdde190a7e6f440d794667ed17a1855e725
  - name: quick-error
    version: 1.2.3
    sha: a1d01941d82fa2ab50be1e79e6714289dd7cde78eba4c074bc5a4374f650dfe0
  - name: quote
    version: 1.0.21
    sha: bbe448f377a7d6961e30f5955f9b8d106c3f5e449d493ee1b125c1d43c2b5179
  - name: regex
    version: 1.6.0
    sha: 4c4eb3267174b8c6c2f654116623910a0fef09c4753f8dd83db29c48a0df988b
  - name: regex-syntax
    version: 0.6.27
    sha: a3f87b73ce11b1619a3c6332f45341e0047173771e8b8b73f87bfeefb7b56244
  - name: rustc_version
    version: 0.3.3
    sha: f0dfe2087c51c460008730de8b57e6a320782fbfb312e1f4d520e6c6fae155ee
  - name: semver
    version: 0.11.0
    sha: f301af10236f6df4160f7c3f04eec6dbc70ace82d23326abad5edee88801c6b6
  - name: semver-parser
    version: 0.10.2
    sha: 00b0bef5b7f9e0df16536d3961cfb6e84331c065b4066afb39768d0e319411f7
  - name: serde
    version: 1.0.145
    sha: 728eb6351430bccb993660dfffc5a72f91ccc1295abaa8ce19b27ebe4f75568b
  - name: slab
    version: 0.4.7
    sha: 4614a76b2a8be0058caa9dbbaf66d988527d86d003c11a94fbd335d7661edcef
  - name: smallvec
    version: 1.10.0
    sha: a507befe795404456341dfab10cef66ead4c041f62b8b11bbb92bffe5d0953e0
  - name: syn
    version: 1.0.102
    sha: 3fcd952facd492f9be3ef0d0b7032a6e442ee9b361d4acc2b1d0c4aaa5f613a1
  - name: system-deps
    version: 6.0.3
    sha: 2955b1fe31e1fa2fbd1976b71cc69a606d7d4da16f6de3333d0c92d51419aeff
  - name: temp-dir
    version: 0.1.11
    sha: af547b166dd1ea4b472165569fc456cfb6818116f854690b0ff205e636523dab
  - name: termcolor
    version: 1.1.3
    sha: bab24d30b911b2376f3a13cc2cd443142f0c81dda04c118693e35b3835757755
  - name: thiserror
    version: 1.0.37
    sha: 10deb33631e3c9018b9baf9dcbbc4f737320d2b576bac10f6aefa048fa407e3e
  - name: thiserror-impl
    version: 1.0.37
    sha: 982d17546b47146b28f7c22e3d08465f6b8903d0ea13c1660d9d84a6e7adcdbb
  - name: toml
    version: 0.5.9
    sha: 8d82e1a7758622a465f8cee077614c73484dac5b836c02ff6a40d5d1010324d7
  - name: ucd-trie
    version: 0.1.5
    sha: 9e79c4d996edb816c91e4308506774452e55e95c3c9de07b6729e17e15a5ef81
  - name: unicode-ident
    version: 1.0.5
    sha: 6ceab39d59e4c9499d4e5a8ee0e2735b891bb7308ac83dfb4e80cad195c9f6f3
  - name: version-compare
    version: 0.1.0
    sha: fe88247b92c1df6b6de80ddc290f3976dbdf2f5f5d3fd049a9fb598c6dd5ca73
  - name: version_check
    version: 0.9.4
    sha: 49874b5167b65d7193b8aba1567f5c7d93d001cafc34600cee003eda787e483f
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
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
