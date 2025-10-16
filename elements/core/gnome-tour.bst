kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-tour.git
  track: main
  ref: 49.0-3-ge491f41babd49655f7e5c1ec0df39b8788a05fa0
- kind: cargo2
  ref:
  - kind: registry
    name: aho-corasick
    version: 1.1.3
    sha: 8e60d3430d3a69478ad0993f19238d2df97c507009a52b3c10addcd7f6bcb916
  - kind: registry
    name: anstream
    version: 0.6.20
    sha: 3ae563653d1938f79b1ab1b5e668c87c76a9930414574a6583a7b7e11a8e6192
  - kind: registry
    name: anstyle
    version: 1.0.11
    sha: 862ed96ca487e809f1c8e5a8447f6ee2cf102f846893800b20cebdf541fc6bbd
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
    name: autocfg
    version: 1.5.0
    sha: c08606f8c3cbf4ce6ec8e28fb0014a2c086708fe954eaa885384a6165172e7e8
  - kind: registry
    name: bitflags
    version: 2.9.3
    sha: 34efbcccd345379ca2868b2b2c9d3782e9cc58ba87bc7d79d5b53d9c9ae6f25d
  - kind: registry
    name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - kind: registry
    name: cairo-rs
    version: 0.21.1
    sha: 1158f326d7b755a9ae2b36c5b5391400e3431f3b77418cedb6d7130126628f10
  - kind: registry
    name: cairo-sys-rs
    version: 0.21.1
    sha: b963177900ec8e783927e5ed99e16c0ec1b723f1f125dff8992db28ef35c62c3
  - kind: registry
    name: cc
    version: 1.2.34
    sha: 42bc4aea80032b7bf409b0bc7ccad88853858911b7713a8062fdc0623867bedc
  - kind: registry
    name: cfg-expr
    version: 0.20.2
    sha: c8d458d63f0f0f482c8da9b7c8b76c21bd885a02056cc94c6404d861ca2b8206
  - kind: registry
    name: colorchoice
    version: 1.0.4
    sha: b05b61dc5112cbb17e4b6cd61790d9845d13888356391624cbe7e41efeac1e75
  - kind: registry
    name: env_filter
    version: 0.1.3
    sha: 186e05a59d4c50738528153b83b0b0194d3a29507dfec16eccd4b342903397d0
  - kind: registry
    name: env_logger
    version: 0.11.8
    sha: 13c863f0904021b108aa8b2f55046443e6b1ebde8fd4a15c399893aae4fa069f
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
  - kind: registry
    name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
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
    name: futures-task
    version: 0.3.31
    sha: f90f7dce0722e95104fcb095585910c0977252f286e354b5e3bd38902cd99988
  - kind: registry
    name: futures-util
    version: 0.3.31
    sha: 9fa08315bb612088cc391249efdc3bc77536f16c91f6cf495e6fbe85b20a4a81
  - kind: registry
    name: gdk-pixbuf
    version: 0.21.1
    sha: 3c7330cdbbc653df431331ae3d9d59e985a0fecaf33d74c7c1c5d13ab0245f6c
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.21.1
    sha: e25899cc931dc28cba912ebec793b730f53d2d419f90a562fcb29b53bd10aa82
  - kind: registry
    name: gdk4
    version: 0.10.0
    sha: 0a67b064d2f35e649232455c7724f56f977555d2608c43300eabc530eaa4e359
  - kind: registry
    name: gdk4-sys
    version: 0.10.0
    sha: 2edbda0d879eb85317bdb49a3da591ed70a804a10776e358ef416be38c6db2c5
  - kind: registry
    name: gettext-rs
    version: 0.7.2
    sha: a44e92f7dc08430aca7ed55de161253a22276dfd69c5526e5c5e95d1f7cf338a
  - kind: registry
    name: gettext-sys
    version: 0.22.5
    sha: bb45773f5b8945f12aecd04558f545964f943dacda1b1155b3d738f5469ef661
  - kind: registry
    name: gio
    version: 0.21.1
    sha: 52b5e3f390d01b79e30da451dd00e27cd1ac2de81658e3abf6c1fc3229b24c5f
  - kind: registry
    name: gio-sys
    version: 0.21.1
    sha: a03f2234671e5a588cfe1f59c2b22c103f5772ea351be9cc824a9ce0d06d99fd
  - kind: registry
    name: glib
    version: 0.21.1
    sha: 60bdc26493257b5794ba9301f7cbaf7ab0d69a570bfbefa4d7d360e781cb5205
  - kind: registry
    name: glib-macros
    version: 0.21.0
    sha: e772291ebea14c28eb11bb75741f62f4a4894f25e60ce80100797b6b010ef0f9
  - kind: registry
    name: glib-sys
    version: 0.21.1
    sha: dc7c43cff6a7dc43821e45ebf172399437acd6716fa2186b6852d2b397bf622d
  - kind: registry
    name: gobject-sys
    version: 0.21.1
    sha: 3e9a190eef2bce144a6aa8434e306974c6062c398e0a33a146d60238f9062d5c
  - kind: registry
    name: graphene-rs
    version: 0.21.1
    sha: d96914394464c04df8279c23976293afd53b2588e03c9d8d9662ef6528654a85
  - kind: registry
    name: graphene-sys
    version: 0.21.1
    sha: cf8205bb19b7a041cf059be3c94d6b23b3f2c6c96362c44311dcf184e4a9422a
  - kind: registry
    name: gsk4
    version: 0.10.0
    sha: d5dbe33ceed6fc20def67c03d36e532f5a4a569ae437ae015a7146094f31e10c
  - kind: registry
    name: gsk4-sys
    version: 0.10.0
    sha: 8d76011d55dd19fde16ffdedee08877ae6ec942818cfa7bc08a91259bc0b9fc9
  - kind: registry
    name: gtk4
    version: 0.10.0
    sha: 938d68ad43080ad5ee710c30d467c1bc022ee5947856f593855691d726305b3e
  - kind: registry
    name: gtk4-macros
    version: 0.10.0
    sha: 0912d2068695633002b92c5966edc108b2e4f54b58c509d1eeddd4cbceb7315c
  - kind: registry
    name: gtk4-sys
    version: 0.10.0
    sha: a923bdcf00e46723801162de24432cbce38a6810e0178a2d0b6dd4ecc26a1c74
  - kind: registry
    name: hashbrown
    version: 0.15.5
    sha: 9229cfe53dfd69f0609a49f65461bd93001ea1ef889cd5529dd176593f5338a1
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: indexmap
    version: 2.11.0
    sha: f2481980430f9f78649238835720ddccc57e52df14ffce1c6f37391d61b563e9
  - kind: registry
    name: is_terminal_polyfill
    version: 1.70.1
    sha: 7943c866cc5cd64cbc25b2e01621d07fa8eb2a1a23160ee81ce38704e97b8ecf
  - kind: registry
    name: jiff
    version: 0.2.15
    sha: be1f93b8b1eb69c77f24bbb0afdf66f54b632ee39af40ca21c4365a1d7347e49
  - kind: registry
    name: jiff-static
    version: 0.2.15
    sha: 03343451ff899767262ec32146f6d559dd759fdadf42ff0e227c7c48f72594b4
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: libadwaita
    version: 0.8.0
    sha: 4df6715d1257bd8c093295b77a276ed129d73543b10304fec5829ced5d5b7c41
  - kind: registry
    name: libadwaita-sys
    version: 0.8.0
    sha: fdf8950090cc180250cdb1ff859a39748feeda7a53a9f28ead3a17a14cc37ae2
  - kind: registry
    name: libc
    version: 0.2.175
    sha: 6a82ae493e598baaea5209805c49bbf2ea7de956d50d7da0da1164f9c6d28543
  - kind: registry
    name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - kind: registry
    name: log
    version: 0.4.27
    sha: 13dc2df351e3202783a1fe0d44375f7295ffb4049267b0f3018346dc122a1d94
  - kind: registry
    name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - kind: registry
    name: memchr
    version: 2.7.5
    sha: 32a282da65faaf38286cf3be983213fcf1d2e2a58700e808f83f4ea9a4804bc0
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
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
    name: once_cell_polyfill
    version: 1.70.1
    sha: a4895175b425cb1f87721b59f0f286c2092bd4af812243672510e1ac53e2e0ad
  - kind: registry
    name: pango
    version: 0.21.1
    sha: ab47feb3403aa564edaeb68620c5b9159f8814733a7dd45f0b1a27d19de362fe
  - kind: registry
    name: pango-sys
    version: 0.21.1
    sha: 1f855bccb447644e149fae79086e1f81514c30fe5e9b8bd257d9d3c941116c86
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
    name: portable-atomic-util
    version: 0.2.4
    sha: d8a2f0d8d040d7848a709caf78912debcc3f33ee4b3cac47d73d1e1069e83507
  - kind: registry
    name: proc-macro-crate
    version: 3.3.0
    sha: edce586971a4dfaa28950c6f18ed55e0406c1ab88bbce2c6f6293a7aaba73d35
  - kind: registry
    name: proc-macro2
    version: 1.0.101
    sha: 89ae43fd86e4158d6db51ad8e2b80f313af9cc74f5c0e03ccb87de09998732de
  - kind: registry
    name: quote
    version: 1.0.40
    sha: 1885c039570dc00dcb4ff087a89e185fd56bae234ddc7f056a945bf36467248d
  - kind: registry
    name: regex
    version: 1.11.1
    sha: b544ef1b4eac5dc2db33ea63606ae9ffcfac26c1416a2806ae0bf5f56b201191
  - kind: registry
    name: regex-automata
    version: 0.4.9
    sha: 809e8dc61f6de73b46c85f4c96486310fe304c434cfa43669d7b40f711150908
  - kind: registry
    name: regex-syntax
    version: 0.8.5
    sha: 2b15c43186be67a4fd63bee50d0303afffcef381492ebe2c5d87f324e1b8815c
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: semver
    version: 1.0.26
    sha: 56e6fa9c48d24d85fb3de5ad847117517440f6beceb7798af16b4a87d616b8d0
  - kind: registry
    name: serde
    version: 1.0.219
    sha: 5f0e2c6ed6606019b4e29e69dbaba95b11854410e5347d525002456dbbb786b6
  - kind: registry
    name: serde_derive
    version: 1.0.219
    sha: 5b0276cf7f2c73365f7157c8123c21cd9a50fbbd844757af28ca1f5925fc2a00
  - kind: registry
    name: serde_spanned
    version: 0.6.9
    sha: bf41e0cfaf7226dca15e8197172c295a782857fcb97fad1808a166870dee75a3
  - kind: registry
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
  - kind: registry
    name: slab
    version: 0.4.11
    sha: 7a2ae44ef20feb57a68b23d846850f861394c2e02dc425a50098ae8c90267589
  - kind: registry
    name: smallvec
    version: 1.15.1
    sha: 67b1b7a3b5fe4f1376887184045fcf45c69e92af734b7aaddc05fb777b6fbd03
  - kind: registry
    name: syn
    version: 2.0.106
    sha: ede7c438028d4436d71104916910f5bb611972c5cfd7f89b8300a8186e6fada6
  - kind: registry
    name: system-deps
    version: 7.0.5
    sha: e4be53aa0cba896d2dc615bd42bbc130acdcffa239e0a2d965ea5b3b2a86ffdb
  - kind: registry
    name: target-lexicon
    version: 0.13.2
    sha: e502f78cdbb8ba4718f566c418c52bc729126ffd16baee5baa718cf25dd5a69a
  - kind: registry
    name: temp-dir
    version: 0.1.16
    sha: 83176759e9416cf81ee66cb6508dbfe9c96f20b8b56265a39917551c23c70964
  - kind: registry
    name: toml
    version: 0.8.23
    sha: dc1beb996b9d83529a9e75c17a1686767d148d70663143c7854d8b4a09ced362
  - kind: registry
    name: toml_datetime
    version: 0.6.11
    sha: 22cddaf88f4fbc13c51aebbf5f8eceb5c7c5a9da2ac40a13519eb5b0a0e8f11c
  - kind: registry
    name: toml_edit
    version: 0.22.27
    sha: 41fe8c660ae4257887cf66394862d21dbca4a6ddd26f04a3560410406a2f819a
  - kind: registry
    name: unicode-ident
    version: 1.0.18
    sha: 5a5f39404a5da50712a4c1eecf25e90dd62b613502b7e925fd4e4d19b5c96512
  - kind: registry
    name: utf8parse
    version: 0.2.2
    sha: 06abde3611657adf66d383f00b093d7faecc7fa57071cce2578660c9f1010821
  - kind: registry
    name: version-compare
    version: 0.2.0
    sha: 852e951cb7832cb45cb1169900d19760cfa39b82bc0ea9c0e5a14ae88411c98b
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
    name: windows-link
    version: 0.1.3
    sha: 5e6ad25900d524eaabdbbb96d20b4311e1e7ae1699af4fb28c17ae66c80d798a
  - kind: registry
    name: windows-sys
    version: 0.60.2
    sha: f2f500e4d28234f72040990ec9d39e3a6b950f9f22d3dba18416c35882612bcb
  - kind: registry
    name: windows-targets
    version: 0.53.3
    sha: d5fe6031c4041849d7c496a8ded650796e7b6ecc19df1a431c1a363342e5dc91
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.53.0
    sha: 86b8d5f90ddd19cb4a147a5fa63ca848db3df085e25fee3cc10b39b6eebae764
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.53.0
    sha: c7651a1f62a11b8cbd5e0d42526e55f2c99886c77e007179efff86c2b137e66c
  - kind: registry
    name: windows_i686_gnu
    version: 0.53.0
    sha: c1dc67659d35f387f5f6c479dc4e28f1d4bb90ddd1a5d3da2e5d97b42d6272c3
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.53.0
    sha: 9ce6ccbdedbf6d6354471319e781c0dfef054c81fbc7cf83f338a4296c0cae11
  - kind: registry
    name: windows_i686_msvc
    version: 0.53.0
    sha: 581fee95406bb13382d2f65cd4a908ca7b1e4c2f1917f143ba16efe98a589b5d
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.53.0
    sha: 2e55b5ac9ea33f2fc1716d1742db15574fd6fc8dadc51caab1c16a3d3b4190ba
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.53.0
    sha: 0a6e035dd0599267ce1ee132e51c27dd29437f63325753051e71dd9e42406c57
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.53.0
    sha: 271414315aff87387382ec3d271b52d7ae78726f5d44ac98b4f4030c91880486
  - kind: registry
    name: winnow
    version: 0.7.13
    sha: 21a0236b59786fed61e2a80582dd500fe61f18b5dca67a4a067d0bc9039339cf
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
