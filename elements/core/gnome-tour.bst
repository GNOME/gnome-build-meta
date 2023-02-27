kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-tour.git
  track: master
  ref: 43.0-19-g4e39bb0705ed7150f129ade38e98c3ee7c5a342e
- kind: cargo
  ref:
  - name: aho-corasick
    version: 0.7.20
    sha: cc936419f96fa211c1b9166887b38e5e40b19958e5b895be7c1f93adec7071ac
  - name: anyhow
    version: 1.0.69
    sha: 224afbd727c3d6e4b90103ece64b8d1b67fbb1973b1046c2281eed3f3803f800
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
    version: 0.17.0
    sha: a8af54f5d48af1226928adc1f57edd22f5df1349e7da1fc96ae15cf43db0e871
  - name: cairo-sys-rs
    version: 0.17.0
    sha: f55382a01d30e5e53f185eee269124f5e21ab526595b872751278dfbb463594e
  - name: cc
    version: 1.0.79
    sha: 50d30906286121d95be3d479533b458f87493b30a4b5f79a607db8f5d11aa91f
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
    version: 0.3.26
    sha: 2e5317663a9089767a1ec00a487df42e0ca174b61b4483213ac24448e4664df5
  - name: futures-core
    version: 0.3.26
    sha: ec90ff4d0fe1f57d600049061dc6bb68ed03c7d2fbd697274c41805dcb3f8608
  - name: futures-executor
    version: 0.3.26
    sha: e8de0a35a6ab97ec8869e32a2473f4b1324459e14c29275d14b10cb1fd19b50e
  - name: futures-io
    version: 0.3.26
    sha: bfb8371b6fb2aeb2d280374607aeabfc99d95c72edfe51692e42d3d7f0d08531
  - name: futures-macro
    version: 0.3.26
    sha: 95a73af87da33b5acf53acfebdc339fe592ecf5357ac7c0a7734ab9d8c876a70
  - name: futures-task
    version: 0.3.26
    sha: dcf79a1bf610b10f42aea489289c5a2c478a786509693b80cd39c44ccd936366
  - name: futures-util
    version: 0.3.26
    sha: 9c1d6de3acfef38d2be4b1f543f553131788603495be83da675e180c8d6b7bd1
  - name: gdk-pixbuf
    version: 0.17.0
    sha: b023fbe0c6b407bd3d9805d107d9800da3829dc5a676653210f1d5f16d7f59bf
  - name: gdk-pixbuf-sys
    version: 0.17.0
    sha: 7b41bd2b44ed49d99277d3925652a163038bd5ed943ec9809338ffb2f4391e3b
  - name: gdk4
    version: 0.6.2
    sha: e5042053ee765aeef08d9d7e3f0f1e36a4d37f1659b3f93ad3d6997515dbb64a
  - name: gdk4-sys
    version: 0.6.2
    sha: 14f0fb00507af1e9299681dd09965f720e2b5ea95536d49a5681e8994ef10c7a
  - name: gettext-rs
    version: 0.7.0
    sha: e49ea8a8fad198aaa1f9655a2524b64b70eb06b2f3ff37da407566c93054f364
  - name: gettext-sys
    version: 0.21.3
    sha: c63ce2e00f56a206778276704bbe38564c8695249fdc8f354b4ef71c57c3839d
  - name: gio
    version: 0.17.2
    sha: 65acfc24267314eee46f49e0a531e08fd6c3025040d1cfb4a7cd8e41c5e06116
  - name: gio-sys
    version: 0.17.0
    sha: b5d3076ecb86c8c3a672c9843d6232b3a344fb81d304d0ba1ac64b23343efa46
  - name: glib
    version: 0.17.2
    sha: a78b6a0901e258cb03c761ca94c84d519427ede489cae12cd5ba0d7d584e69e9
  - name: glib-macros
    version: 0.17.2
    sha: 55e93d79ed130f0f0b58bc0aa29fb0e40c9dfd63997fec51f8adf780d1520bc4
  - name: glib-sys
    version: 0.17.2
    sha: 72a0985cf568e18cf63b443c9a14f4bdaa947fed7437476000dba84926a20b25
  - name: gobject-sys
    version: 0.17.0
    sha: 9a0155d388840c77d61b033b66ef4f9bc7f4133d83df83572d6b4fb234a3be7d
  - name: graphene-rs
    version: 0.17.1
    sha: 21cf11565bb0e4dfc2f99d4775b6c329f0d40a2cff9c0066214d31a0e1b46256
  - name: graphene-sys
    version: 0.17.0
    sha: cf80a4849a8d9565410a8fec6fc3678e9c617f4ac7be182ca55ab75016e07af9
  - name: gsk4
    version: 0.6.2
    sha: 2fa9cd285a72a95124b65c069a9cb1b8fb8e310be71783404c39fccf3bf7774c
  - name: gsk4-sys
    version: 0.6.2
    sha: 5a445ae1e50cbf181a1d5c61b920a7e7e8657b96e0ecdbbf8911a86fad462a32
  - name: gtk4
    version: 0.6.2
    sha: e47dca53cb1a8ae3006e869b5711ae7370180db537f6d98e3bcaf23fabfd911f
  - name: gtk4-macros
    version: 0.6.0
    sha: db4676c4f90d8b010e88cb4558f61f47d76d6f6b8e6f6b89e62640f443907f61
  - name: gtk4-sys
    version: 0.6.2
    sha: 65463dc801460e498d5e7ffa6e9ae2cfbed7d05fabd1ca5a8d024adbc89eeda6
  - name: hashbrown
    version: 0.12.3
    sha: 8a9ee70c43aaf417c914396645a0fa852624801b24ebb7ae78fe8272889ac888
  - name: heck
    version: 0.4.1
    sha: 95505c38b4572b2d910cecb0281560f54b440a19336cbbcb27bf6ce6adc6f5a8
  - name: hermit-abi
    version: 0.1.19
    sha: 62b467343b94ba476dcb2500d242dadbb39557df889310ac77c5d99100aaac33
  - name: humantime
    version: 1.3.0
    sha: df004cfca50ef23c36850aaaa59ad52cc70d0e90243c3c7737a4dd32dc7a3c4f
  - name: indexmap
    version: 1.9.2
    sha: 1885e79c1fc4b10f0e172c475f458b7f7b93061064d98c3293e98c5ba0c8b399
  - name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - name: libadwaita
    version: 0.3.1
    sha: b1c4efd2020a4fcedbad2c4a97de97bf6045e5dc49d61d5a5d0cfd753db60700
  - name: libadwaita-sys
    version: 0.3.0
    sha: 0727b85b4fe2b1bed5ac90df6343de15cbf8118bfb96d7c3cc1512681a4b34ac
  - name: libc
    version: 0.2.139
    sha: 201de327520df007757c1f0adce6e827fe8562fbc28bfd9c15571c66ca1f5f79
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
  - name: nom8
    version: 0.2.0
    sha: ae01545c9c7fc4486ab7debaf2aad7003ac19431791868fb2e8066df97fad2f8
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
  - name: pango
    version: 0.17.0
    sha: 243c048be90312220fb3bd578176eed8290568274a93c95040289d39349384bc
  - name: pango-sys
    version: 0.17.0
    sha: 4293d0f0b5525eb5c24734d30b0ed02cd02aa734f216883f376b54de49625de8
  - name: pest
    version: 2.5.5
    sha: 028accff104c4e513bad663bbcd2ad7cfd5304144404c31ed0a77ac103d00660
  - name: pin-project-lite
    version: 0.2.9
    sha: e0a7ae3ac2f1173085d398531c705756c94a4c56843785df85a60c1a0afac116
  - name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - name: pkg-config
    version: 0.3.26
    sha: 6ac9a59f73473f1b8d852421e59e64809f025994837ef743615c6d0c5b305160
  - name: pretty_env_logger
    version: 0.4.0
    sha: 926d36b9553851b8b0005f1275891b392ee4d2d833852c417ed025477350fb9d
  - name: proc-macro-crate
    version: 1.3.0
    sha: 66618389e4ec1c7afe67d51a9bf34ff9236480f8d51e7489b7d5ab0303c13f34
  - name: proc-macro-error
    version: 1.0.4
    sha: da25490ff9892aab3fcf7c36f08cfb902dd3e71ca0f9f9517bea02a73a5ce38c
  - name: proc-macro-error-attr
    version: 1.0.4
    sha: a1be40180e52ecc98ad80b184934baf3d0d29f979574e439af5a55274b35f869
  - name: proc-macro2
    version: 1.0.51
    sha: 5d727cae5b39d21da60fa540906919ad737832fe0b1c165da3a34d6548c849d6
  - name: quick-error
    version: 1.2.3
    sha: a1d01941d82fa2ab50be1e79e6714289dd7cde78eba4c074bc5a4374f650dfe0
  - name: quote
    version: 1.0.23
    sha: 8856d8364d252a14d474036ea1358d63c9e6965c8e5c1885c18f73d70bff9c7b
  - name: regex
    version: 1.7.1
    sha: 48aaa5748ba571fb95cd2c85c09f629215d3a6ece942baa100950af03a34f733
  - name: regex-syntax
    version: 0.6.28
    sha: 456c603be3e8d448b072f410900c09faf164fbce2d480456f50eea6e25f9c848
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
    version: 1.0.152
    sha: bb7d1f0d3021d347a83e556fc4683dea2ea09d87bccdf88ff5c12545d89d5efb
  - name: slab
    version: 0.4.8
    sha: 6528351c9bc8ab22353f9d776db39a20288e8d6c37ef8cfe3317cf875eecfc2d
  - name: smallvec
    version: 1.10.0
    sha: a507befe795404456341dfab10cef66ead4c041f62b8b11bbb92bffe5d0953e0
  - name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - name: system-deps
    version: 6.0.3
    sha: 2955b1fe31e1fa2fbd1976b71cc69a606d7d4da16f6de3333d0c92d51419aeff
  - name: temp-dir
    version: 0.1.11
    sha: af547b166dd1ea4b472165569fc456cfb6818116f854690b0ff205e636523dab
  - name: termcolor
    version: 1.2.0
    sha: be55cf8942feac5c765c2c993422806843c9a9a45d4d5c407ad6dd2ea95eb9b6
  - name: thiserror
    version: 1.0.38
    sha: 6a9cd18aa97d5c45c6603caea1da6628790b37f7a34b6ca89522331c5180fed0
  - name: thiserror-impl
    version: 1.0.38
    sha: 1fb327af4685e4d03fa8cbcf1716380da910eeb2bb8be417e7f9fd3fb164f36f
  - name: toml
    version: 0.5.11
    sha: f4f7f0dd8d50a853a531c426359045b1998f04219d88799810762cd4ad314234
  - name: toml_datetime
    version: 0.5.1
    sha: 4553f467ac8e3d374bc9a177a26801e5d0f9b211aa1673fb137a403afd1c9cf5
  - name: toml_edit
    version: 0.18.1
    sha: 56c59d8dd7d0dcbc6428bf7aa2f0e823e26e43b3c9aca15bbc9475d23e5fa12b
  - name: ucd-trie
    version: 0.1.5
    sha: 9e79c4d996edb816c91e4308506774452e55e95c3c9de07b6729e17e15a5ef81
  - name: unicode-ident
    version: 1.0.6
    sha: 84a22b9f218b40614adcb3f4ff08b703773ad44fa9423e4e0d346d5db86e4ebc
  - name: version-compare
    version: 0.1.1
    sha: 579a42fc0b8e0c63b76519a339be31bed574929511fa53c1a3acae26eb258f29
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
