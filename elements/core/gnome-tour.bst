kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-tour.git
  track: master
  ref: 44.0-7-g940a3e10a825062b97a148ed36a1f2fdb963d779
- kind: cargo
  ref:
  - name: aho-corasick
    version: 1.0.2
    sha: 43f6cb1bf222025340178f382c426f13757b2960e89779dfcb319c32542a5a41
  - name: anyhow
    version: 1.0.71
    sha: 9c7d0618f0e0b7e8ff11427422b64564d5fb0be1940354bfe2e0529b18a9d9b8
  - name: autocfg
    version: 1.1.0
    sha: d468802bab17cbc0cc575e9b053f41e72aa36bfa6b7f55e3529ffa43161b97fa
  - name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - name: bitflags
    version: 2.3.3
    sha: 630be753d4e58660abd17930c71b647fe46c27ea6b63cc59e1e3851406972e42
  - name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - name: cairo-rs
    version: 0.17.10
    sha: ab3603c4028a5e368d09b51c8b624b9a46edcd7c3778284077a6125af73c9f0a
  - name: cairo-sys-rs
    version: 0.17.10
    sha: 691d0c66b1fb4881be80a760cb8fe76ea97218312f9dfe2c9cc0f496ca279cb1
  - name: cc
    version: 1.0.79
    sha: 50d30906286121d95be3d479533b458f87493b30a4b5f79a607db8f5d11aa91f
  - name: cfg-expr
    version: 0.15.3
    sha: 215c0072ecc28f92eeb0eea38ba63ddfcb65c2828c46311d646f1a3ff5f9841c
  - name: env_logger
    version: 0.10.0
    sha: 85cdab6a89accf66733ad5a1693a4dcced6aeff64602b634530dd73c1f3ee9f0
  - name: equivalent
    version: 1.0.0
    sha: 88bffebc5d80432c9b140ee17875ff173a8ab62faad5b257da912bd2f6c1c0a1
  - name: errno
    version: 0.3.1
    sha: 4bcfec3a70f97c962c307b2d2c56e358cf1d00b558d74262b5f929ee8cc7e73a
  - name: errno-dragonfly
    version: 0.1.2
    sha: aa68f1b12764fab894d2755d2518754e71b4fd80ecfb822714a1206c2aab39bf
  - name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
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
  - name: gdk-pixbuf
    version: 0.17.10
    sha: 695d6bc846438c5708b07007537b9274d883373dd30858ca881d7d71b5540717
  - name: gdk-pixbuf-sys
    version: 0.17.10
    sha: 9285ec3c113c66d7d0ab5676599176f1f42f4944ca1b581852215bf5694870cb
  - name: gdk4
    version: 0.6.3
    sha: c3abf96408a26e3eddf881a7f893a1e111767137136e347745e8ea6ed12731ff
  - name: gdk4-sys
    version: 0.6.3
    sha: 1bc92aa1608c089c49393d014c38ac0390d01e4841e1fedaa75dbcef77aaed64
  - name: gettext-rs
    version: 0.7.0
    sha: e49ea8a8fad198aaa1f9655a2524b64b70eb06b2f3ff37da407566c93054f364
  - name: gettext-sys
    version: 0.21.3
    sha: c63ce2e00f56a206778276704bbe38564c8695249fdc8f354b4ef71c57c3839d
  - name: gio
    version: 0.17.10
    sha: a6973e92937cf98689b6a054a9e56c657ed4ff76de925e36fc331a15f0c5d30a
  - name: gio-sys
    version: 0.17.10
    sha: 0ccf87c30a12c469b6d958950f6a9c09f2be20b7773f7e70d20b867fdf2628c3
  - name: glib
    version: 0.17.10
    sha: d3fad45ba8d4d2cea612b432717e834f48031cd8853c8aaf43b2c79fec8d144b
  - name: glib-macros
    version: 0.17.10
    sha: eca5c79337338391f1ab8058d6698125034ce8ef31b72a442437fa6c8580de26
  - name: glib-sys
    version: 0.17.10
    sha: d80aa6ea7bba0baac79222204aa786a6293078c210abe69ef1336911d4bdc4f0
  - name: gobject-sys
    version: 0.17.10
    sha: cd34c3317740a6358ec04572c1bcfd3ac0b5b6529275fae255b237b314bb8062
  - name: graphene-rs
    version: 0.17.10
    sha: def4bb01265b59ed548b05455040d272d989b3012c42d4c1bbd39083cb9b40d9
  - name: graphene-sys
    version: 0.17.10
    sha: 1856fc817e6a6675e36cea0bd9a3afe296f5d9709d1e2d3182803ac77f0ab21d
  - name: gsk4
    version: 0.6.3
    sha: 6f01ef44fa7cac15e2da9978529383e6bee03e570ba5bf7036b4c10a15cc3a3c
  - name: gsk4-sys
    version: 0.6.3
    sha: c07a84fb4dcf1323d29435aa85e2f5f58bef564342bef06775ec7bd0da1f01b0
  - name: gtk4
    version: 0.6.6
    sha: b28a32a04cd75cef14a0983f8b0c669e0fe152a0a7725accdeb594e2c764c88b
  - name: gtk4-macros
    version: 0.6.6
    sha: 6a4d6b61570f76d3ee542d984da443b1cd69b6105264c61afec3abed08c2500f
  - name: gtk4-sys
    version: 0.6.3
    sha: 5f8283f707b07e019e76c7f2934bdd4180c277e08aa93f4c0d8dd07b7a34e22f
  - name: hashbrown
    version: 0.14.0
    sha: 2c6201b9ff9fd90a5a3bac2e56a830d0caa509576f0e503818ee82c181b3437a
  - name: heck
    version: 0.4.1
    sha: 95505c38b4572b2d910cecb0281560f54b440a19336cbbcb27bf6ce6adc6f5a8
  - name: hermit-abi
    version: 0.3.1
    sha: fed44880c466736ef9a5c5b5facefb5ed0785676d0c02d612db14e54f0d84286
  - name: humantime
    version: 2.1.0
    sha: 9a3a5bfb195931eeb336b2a7b4d761daec841b97f947d34394601737a7bba5e4
  - name: indexmap
    version: 2.0.0
    sha: d5477fe2230a79769d8dc68e0eabf5437907c0457a5614a9e8dddb67f65eb65d
  - name: is-terminal
    version: 0.4.8
    sha: 24fddda5af7e54bf7da53067d6e802dbcc381d0a8eef629df528e3ebf68755cb
  - name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - name: libadwaita
    version: 0.4.4
    sha: 1ab9c0843f9f23ff25634df2743690c3a1faffe0a190e60c490878517eb81abf
  - name: libadwaita-sys
    version: 0.4.4
    sha: 4231cb2499a9f0c4cdfa4885414b33e39901ddcac61150bc0bb4ff8a57ede404
  - name: libc
    version: 0.2.147
    sha: b4668fb0ea861c1df094127ac5f1da3409a82116a4ba74fca2e58ef927159bb3
  - name: linux-raw-sys
    version: 0.4.3
    sha: 09fc20d2ca12cb9f044c93e3bd6d32d523e6e2ec3db4f7b2939cd99026ecd3f0
  - name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - name: log
    version: 0.4.19
    sha: b06a4cde4c0f271a446782e3eff8de789548ce57dbc8eca9292c27f4a42004b4
  - name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - name: memchr
    version: 2.5.0
    sha: 2dffe52ecf27772e601905b7522cb4ef790d2cc203488bbd0e2fe85fcb74566d
  - name: memoffset
    version: 0.9.0
    sha: 5a634b1c61a95585bd15607c6ab0c4e5b226e695ff2800ba0cdccddf208c406c
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
    version: 1.18.0
    sha: dd8b5dd2ae5ed71462c540258bedcb51965123ad7e7ccf4b9a8cafaa4a63576d
  - name: pango
    version: 0.17.10
    sha: 35be456fc620e61f62dff7ff70fbd54dcbaf0a4b920c0f16de1107c47d921d48
  - name: pango-sys
    version: 0.17.10
    sha: 3da69f9f3850b0d8990d462f8c709561975e95f689c1cdf0fecdebde78b35195
  - name: pin-project-lite
    version: 0.2.10
    sha: 4c40d25201921e5ff0c862a505c6557ea88568a4e3ace775ab55e93f2f4f9d57
  - name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - name: pkg-config
    version: 0.3.27
    sha: 26072860ba924cbfa98ea39c8c19b4dd6a4a25423dbdf219c1eca91aa0cf6964
  - name: pretty_env_logger
    version: 0.5.0
    sha: 865724d4dbe39d9f3dd3b52b88d859d66bcb2d6a0acfd5ea68a65fb66d4bdc1c
  - name: proc-macro-crate
    version: 1.3.1
    sha: 7f4c021e1093a56626774e81216a4ce732a735e5bad4868a03f3ed65ca0c3919
  - name: proc-macro-error
    version: 1.0.4
    sha: da25490ff9892aab3fcf7c36f08cfb902dd3e71ca0f9f9517bea02a73a5ce38c
  - name: proc-macro-error-attr
    version: 1.0.4
    sha: a1be40180e52ecc98ad80b184934baf3d0d29f979574e439af5a55274b35f869
  - name: proc-macro2
    version: 1.0.63
    sha: 7b368fba921b0dce7e60f5e04ec15e565b3303972b42bcfde1d0713b881959eb
  - name: quote
    version: 1.0.29
    sha: 573015e8ab27661678357f27dc26460738fd2b6c86e46f386fde94cb5d913105
  - name: regex
    version: 1.8.4
    sha: d0ab3ca65655bb1e41f2a8c8cd662eb4fb035e67c3f78da1d61dffe89d07300f
  - name: regex-syntax
    version: 0.7.2
    sha: 436b050e76ed2903236f032a59761c1eb99e1b0aead2c257922771dab1fc8c78
  - name: rustc_version
    version: 0.4.0
    sha: bfa0f585226d2e68097d4f95d113b15b83a82e819ab25717ec0590d9584ef366
  - name: rustix
    version: 0.38.2
    sha: aabcb0461ebd01d6b79945797c27f8529082226cb630a9865a71870ff63532a4
  - name: semver
    version: 1.0.17
    sha: bebd363326d05ec3e2f532ab7660680f3b02130d780c299bca73469d521bc0ed
  - name: serde
    version: 1.0.166
    sha: d01b7404f9d441d3ad40e6a636a7782c377d2abdbe4fa2440e2edcc2f4f10db8
  - name: serde_spanned
    version: 0.6.3
    sha: 96426c9936fd7a0124915f9185ea1d20aa9445cc9821142f0a73bc9207a2e186
  - name: slab
    version: 0.4.8
    sha: 6528351c9bc8ab22353f9d776db39a20288e8d6c37ef8cfe3317cf875eecfc2d
  - name: smallvec
    version: 1.10.0
    sha: a507befe795404456341dfab10cef66ead4c041f62b8b11bbb92bffe5d0953e0
  - name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - name: syn
    version: 2.0.23
    sha: 59fb7d6d8281a51045d62b8eb3a7d1ce347b76f312af50cd3dc0af39c87c1737
  - name: system-deps
    version: 6.1.1
    sha: 30c2de8a4d8f4b823d634affc9cd2a74ec98c53a756f317e529a48046cbf71f3
  - name: target-lexicon
    version: 0.12.8
    sha: 1b1c7f239eb94671427157bd93b3694320f3668d4e1eff08c7285366fd777fac
  - name: temp-dir
    version: 0.1.11
    sha: af547b166dd1ea4b472165569fc456cfb6818116f854690b0ff205e636523dab
  - name: termcolor
    version: 1.2.0
    sha: be55cf8942feac5c765c2c993422806843c9a9a45d4d5c407ad6dd2ea95eb9b6
  - name: thiserror
    version: 1.0.40
    sha: 978c9a314bd8dc99be594bc3c175faaa9794be04a5a5e153caba6915336cebac
  - name: thiserror-impl
    version: 1.0.40
    sha: f9456a42c5b0d803c8cd86e73dd7cc9edd429499f37a3550d286d5e86720569f
  - name: toml
    version: 0.7.5
    sha: 1ebafdf5ad1220cb59e7d17cf4d2c72015297b75b19a10472f99b89225089240
  - name: toml_datetime
    version: 0.6.3
    sha: 7cda73e2f1397b1262d6dfdcef8aafae14d1de7748d66822d3bfeeb6d03e5e4b
  - name: toml_edit
    version: 0.19.11
    sha: 266f016b7f039eec8a1a80dfe6156b633d208b9fccca5e4db1d6775b0c4e34a7
  - name: unicode-ident
    version: 1.0.10
    sha: 22049a19f4a68748a168c0fc439f9516686aa045927ff767eca0a85101fb6e73
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
  - name: windows-sys
    version: 0.48.0
    sha: 677d2418bec65e3338edb076e806bc1ec15693c5d0104683f2efe857f61056a9
  - name: windows-targets
    version: 0.48.1
    sha: 05d4b17490f70499f20b9e791dcf6a299785ce8af4d709018206dc5b4953e95f
  - name: windows_aarch64_gnullvm
    version: 0.48.0
    sha: 91ae572e1b79dba883e0d315474df7305d12f569b400fcf90581b06062f7e1bc
  - name: windows_aarch64_msvc
    version: 0.48.0
    sha: b2ef27e0d7bdfcfc7b868b317c1d32c641a6fe4629c171b8928c7b08d98d7cf3
  - name: windows_i686_gnu
    version: 0.48.0
    sha: 622a1962a7db830d6fd0a69683c80a18fda201879f0f447f065a3b7467daa241
  - name: windows_i686_msvc
    version: 0.48.0
    sha: 4542c6e364ce21bf45d69fdd2a8e455fa38d316158cfd43b3ac1c5b1b19f8e00
  - name: windows_x86_64_gnu
    version: 0.48.0
    sha: ca2b8a661f7628cbd23440e50b05d705db3686f894fc9580820623656af974b1
  - name: windows_x86_64_gnullvm
    version: 0.48.0
    sha: 7896dbc1f41e08872e9d5e8f8baa8fdd2677f29468c4e156210174edc7f7b953
  - name: windows_x86_64_msvc
    version: 0.48.0
    sha: 1a515f5799fe4961cb532f983ce2b23082366b898e52ffbce459c86f67c8378a
  - name: winnow
    version: 0.4.7
    sha: ca0ace3845f0d96209f0375e6d367e3eb87eb65d27d445bdc9f1843a26f39448
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
