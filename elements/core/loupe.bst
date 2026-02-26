kind: meson

sources:
- kind: git_repo
  url: gnome:loupe.git
  track: main
  ref: 50.beta-30-ga38573046360af00d37b01b5b3f124e605d4a501
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
    name: anyhow
    version: 1.0.101
    sha: 5f0e0fee31ef5ed1ba1316088939cea399010ed7731dba877ed44aeb407a75ea
  - kind: registry
    name: arc-swap
    version: 1.8.1
    sha: 9ded5f9a03ac8f24d1b8a25101ee812cd32cdc8c50a4c50237de2c4915850e73
  - kind: registry
    name: ashpd
    version: 0.13.0-alpha
    sha: ffcab78216685a013098833afaaf7fffa509e7f3b5b1931473b2288198a14d47
  - kind: registry
    name: async-broadcast
    version: 0.7.2
    sha: 435a87a52755b8f27fcf321ac4f04b2802e337c8c4872923137471ec39c37532
  - kind: registry
    name: async-channel
    version: 2.5.0
    sha: 924ed96dd52d1b75e9c1a3e6275715fd320f5f9439fb5a4a11fa51f4221158d2
  - kind: registry
    name: async-executor
    version: 1.13.3
    sha: 497c00e0fd83a72a79a39fcbd8e3e2f055d6f6c7e025f3b3d91f4f8e76527fb8
  - kind: registry
    name: async-fs
    version: 2.2.0
    sha: 8034a681df4aed8b8edbd7fbe472401ecf009251c8b40556b304567052e294c5
  - kind: registry
    name: async-global-executor
    version: 3.1.0
    sha: 13f937e26114b93193065fd44f507aa2e9169ad0cdabbb996920b1fe1ddea7ba
  - kind: registry
    name: async-io
    version: 2.6.0
    sha: 456b8a8feb6f42d237746d4b3e9a178494627745c3c56c6ea55d92ba50d026fc
  - kind: registry
    name: async-lock
    version: 3.4.2
    sha: 290f7f2596bd5b78a9fec8088ccd89180d7f9f55b94b0576823bbbdc72ee8311
  - kind: registry
    name: async-process
    version: 2.5.0
    sha: fc50921ec0055cdd8a16de48773bfeec5c972598674347252c0399676be7da75
  - kind: registry
    name: async-recursion
    version: 1.1.1
    sha: 3b43422f69d8ff38f95f1b2bb76517c91589a924d1559a0e935d7c8ce0274c11
  - kind: registry
    name: async-signal
    version: 0.2.13
    sha: 43c070bbf59cd3570b6b2dd54cd772527c7c3620fce8be898406dd3ed6adc64c
  - kind: registry
    name: async-task
    version: 4.7.1
    sha: 8b75356056920673b02621b35afd0f7dda9306d03c79a30f5c56c44cf256e3de
  - kind: registry
    name: async-trait
    version: 0.1.89
    sha: 9035ad2d096bed7955a320ee7e2230574d28fd3c3a0f186cbea1ff3c7eed5dbb
  - kind: registry
    name: atomic-waker
    version: 1.1.2
    sha: 1505bd5d3d116872e7271a6d4e16d81d0c8570876c8de68093a09ac269d8aac0
  - kind: registry
    name: autocfg
    version: 1.5.0
    sha: c08606f8c3cbf4ce6ec8e28fb0014a2c086708fe954eaa885384a6165172e7e8
  - kind: registry
    name: bitflags
    version: 2.10.0
    sha: 812e12b5285cc515a9c72a5c1d3b6d46a19dac5acfef5265968c166106e31dd3
  - kind: registry
    name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - kind: registry
    name: blocking
    version: 1.6.2
    sha: e83f8d02be6967315521be875afa792a316e28d57b5a2d401897e2a7921b7f21
  - kind: registry
    name: bumpalo
    version: 3.19.1
    sha: 5dd9dc738b7a8311c7ade152424974d8115f2cdad61e8dab8dac9f2362298510
  - kind: registry
    name: bytemuck
    version: 1.25.0
    sha: c8efb64bd706a16a1bdde310ae86b351e4d21550d98d056f22f8a7f7a2183fec
  - kind: registry
    name: cairo-rs
    version: 0.22.0-alpha.3
    sha: b1bfa0ba0f289c6b72e05b790b65316d186d2a39c7bf39709080cbd615a6c176
  - kind: registry
    name: cairo-sys-rs
    version: 0.22.0-alpha.3
    sha: 987a6c619516566caf5fe2727f28024d4cdfecdfb1d33b2e3862ef3c72a749f3
  - kind: registry
    name: cc
    version: 1.2.55
    sha: 47b26a0954ae34af09b50f0de26458fa95369a0d478d8236d3f93082b219bd29
  - kind: registry
    name: cfg-expr
    version: 0.20.6
    sha: 78cef5b5a1a6827c7322ae2a636368a573006b27cfa76c7ebd53e834daeaab6a
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
    version: 0.4.43
    sha: fac4744fb15ae8337dc853fee7fb3f4e48c0fbaa23d0afe49c447b4fab126118
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: crc32fast
    version: 1.5.0
    sha: 9481c1c90cbf2ac953f07c8d4a58aa3945c425b7185c9154d67a65e4230da511
  - kind: registry
    name: crossbeam-deque
    version: 0.8.6
    sha: 9dd111b7b7f7d55b72c0a6ae361660ee5853c9af73f70c3c2ef6858b950e2e51
  - kind: registry
    name: crossbeam-epoch
    version: 0.9.18
    sha: 5b82ac4a3c2ca9c3460964f020e1402edd5753411d7737aa39c3714ad1b5420e
  - kind: registry
    name: crossbeam-utils
    version: 0.8.21
    sha: d0a5c400df2834b80a4c3327b3aad3a4c4cd4de0629063962b03235697506a28
  - kind: registry
    name: crunchy
    version: 0.2.4
    sha: 460fbee9c2c2f33933d720630a6a0bac33ba7053db5344fac858d4b8952d77d5
  - kind: registry
    name: displaydoc
    version: 0.2.5
    sha: 97369cbbc041bc366949bc74d34658d6cda5621039731c6310521892a3a20ae0
  - kind: registry
    name: dlib
    version: 0.5.2
    sha: 330c60081dcc4c72131f8eb70510f1ac07223e5d4163db481a04a0befcffa412
  - kind: registry
    name: dunce
    version: 1.0.5
    sha: 92773504d58c093f6de2459af4af33faa518c13451eb8f2b5698ed3d36e7c813
  - kind: registry
    name: either
    version: 1.15.0
    sha: 48c757948c5ede0e46177b7add2e67155f70e33c07fea8284df6576da70b3719
  - kind: registry
    name: encoding_rs
    version: 0.8.35
    sha: 75030f3c4f45dafd7586dd6780965a8c7e8e285a5ecb86713e63a79c5b2766f3
  - kind: registry
    name: endi
    version: 1.1.1
    sha: 66b7e2430c6dff6a955451e2cfc438f09cea1965a9d6f87f7e3b90decc014099
  - kind: registry
    name: enumflags2
    version: 0.7.12
    sha: 1027f7680c853e056ebcec683615fb6fbbc07dbaa13b4d5d9442b146ded4ecef
  - kind: registry
    name: enumflags2_derive
    version: 0.7.12
    sha: 67c78a4d8fdf9953a5c9d458f9efe940fd97a0cab0941c075a813ac594733827
  - kind: registry
    name: env_filter
    version: 0.1.4
    sha: 1bf3c259d255ca70051b30e2e95b5446cdb8949ac4cd22c0d7fd634d89f568e2
  - kind: registry
    name: env_logger
    version: 0.11.8
    sha: 13c863f0904021b108aa8b2f55046443e6b1ebde8fd4a15c399893aae4fa069f
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
  - kind: registry
    name: errno
    version: 0.3.14
    sha: 39cab71617ae0d63f51a36d69f866391735b51691dbda63cf6f96d042b63efeb
  - kind: registry
    name: event-listener
    version: 5.4.1
    sha: e13b66accf52311f30a0db42147dadea9850cb48cd070028831ae5f5d4b856ab
  - kind: registry
    name: event-listener-strategy
    version: 0.5.4
    sha: 8be9f3dfaaffdae2972880079a491a1a8bb7cbed0b8dd7a347f668b4150a3b93
  - kind: registry
    name: fastrand
    version: 2.3.0
    sha: 37909eebbb50d72f9059c3b6d82c0463f2ff062c9e95845c43a6c9c0355411be
  - kind: registry
    name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - kind: registry
    name: find-msvc-tools
    version: 0.1.9
    sha: 5baebc0774151f905a1a2cc41989300b1e6fbb29aff0ceffa1064fdd3088d582
  - kind: registry
    name: flate2
    version: 1.1.9
    sha: 843fba2746e448b37e26a819579957415c8cef339bf08564fe8b7ddbd959573c
  - kind: registry
    name: foreign-types
    version: 0.5.0
    sha: d737d9aa519fb7b749cbc3b962edcf310a8dd1f4b67c91c4f83975dbdd17d965
  - kind: registry
    name: foreign-types-macros
    version: 0.2.3
    sha: 1a5c6c585bc94aaf2c7b51dd4c2ba22680844aba4c687be581871a6f518c5742
  - kind: registry
    name: foreign-types-shared
    version: 0.3.1
    sha: aa9a19cbb55df58761df49b23516a86d432839add4af60fc256da840f66ed35b
  - kind: registry
    name: form_urlencoded
    version: 1.2.2
    sha: cb4cb245038516f5f85277875cdaa4f7d2c9a0fa0468de06ed190163b1581fcf
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
    name: futures-lite
    version: 2.6.1
    sha: f78e10609fe0e0b3f4157ffab1876319b5b0db102a2c60dc4626306dc46b44ad
  - kind: registry
    name: futures-macro
    version: 0.3.31
    sha: 162ee34ebcb7c64a8abebc059ce0fee27c2262618d7b60ed8faf72fef13c3650
  - kind: registry
    name: futures-task
    version: 0.3.31
    sha: f90f7dce0722e95104fcb095585910c0977252f286e354b5e3bd38902cd99988
  - kind: registry
    name: futures-timer
    version: 3.0.3
    sha: f288b0a4f20f9a56b5d1da57e2227c661b7b16168e2f72365f57b63326e29b24
  - kind: registry
    name: futures-util
    version: 0.3.31
    sha: 9fa08315bb612088cc391249efdc3bc77536f16c91f6cf495e6fbe85b20a4a81
  - kind: registry
    name: gdk-pixbuf
    version: 0.22.0-alpha.3
    sha: 48490c42fe0e3bdc0d2a351ef18d22cafd77fa3194c25e25e8b2c65e5d61a667
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.22.0-alpha.3
    sha: 0ff2a0f8085658fc3c6a59dfb7716e53cd3895053b924229ca3881c40cea1ee8
  - kind: registry
    name: gdk4
    version: 0.11.0-alpha.3
    sha: b54e5928b29e90239e9bafe455cefdd364c765a525e1f8afb423b768e77700e4
  - kind: registry
    name: gdk4-sys
    version: 0.11.0-alpha.3
    sha: 597d16ef9f4169e595e8576036b4a0db340834d9c9eb0e7f79123b5f9725851b
  - kind: registry
    name: gdk4-wayland
    version: 0.11.0-alpha.3
    sha: 445aedbdeff509af5c5322781413aa698f846460287c43795dd6812b1e91ec3c
  - kind: registry
    name: gdk4-wayland-sys
    version: 0.11.0-alpha.3
    sha: 682ad0516b69abed30a15527cea8e5cafc5344bf9eca215e49f354eda04c2547
  - kind: registry
    name: gdk4-x11
    version: 0.11.0-alpha.3
    sha: 9d4afad8cf8f7d51fcc36d559b39b86c0289fbcbd56a9949b04af21bc28f6c81
  - kind: registry
    name: gdk4-x11-sys
    version: 0.11.0-alpha.3
    sha: 17d2397de1d6cede90d47844f81a8b7e1ca359a31c3f1aa235eb8c6e72dcd53d
  - kind: registry
    name: getrandom
    version: 0.3.4
    sha: 899def5c37c4fd7b2664648c28120ecec138e4d395b459e5ca34f9cce2dd77fd
  - kind: registry
    name: gettext-rs
    version: 0.7.7
    sha: 5d5857dc1b7f0fee86961de833f434e29494d72af102ce5355738c0664222bdf
  - kind: registry
    name: gettext-sys
    version: 0.26.0
    sha: 4ea859ab0dd7e70ff823032b3e077d03d39c965d68c6c10775add60e999d8ee9
  - kind: registry
    name: gio
    version: 0.22.0-alpha.3
    sha: 03fa804f55f67d88f4e8fcc43a045c2243032ab814e9f024ca9af877578de589
  - kind: registry
    name: gio-sys
    version: 0.22.0-alpha.3
    sha: 799a85fb15a5cb1f3b4d6844fee59d053c18aa829457a974e49bf96fd1395084
  - kind: registry
    name: glib
    version: 0.22.0-alpha.3
    sha: 2a4e4165cbca97dcd123147b11f556acee77187020340e8fb5a919e44181dd99
  - kind: registry
    name: glib-macros
    version: 0.22.0-alpha.3
    sha: 7aeed559294a89b070b8fc9d0c9bb579288287284c7d8bcdfb977d09f7f933cd
  - kind: registry
    name: glib-sys
    version: 0.22.0-alpha.3
    sha: af295296f85e11714b259ff35ad224088035120ef2f183c82fe077a5a019e350
  - kind: registry
    name: glycin
    version: 3.1.0-beta
    sha: 43ac30bedcb44f72335069d4cb9c0de0d4cb5a24db7166ac05c622127a8232bc
  - kind: registry
    name: glycin-common
    version: 1.0.4-beta
    sha: 6c364fbf4d882217f2840c5146af46bcbfee49b016bebd43fb52fcdafc007017
  - kind: registry
    name: glycin-utils
    version: 4.1.0-beta
    sha: 6d17d5b5398fc5f3eac5f31e24947fd9b6a7a99b0f31cea836d941112e775320
  - kind: registry
    name: gobject-sys
    version: 0.22.0-alpha.3
    sha: 328c4630834dfcc5863ccee812e51a4b98464d9c5f8729be00795b858ed120bc
  - kind: registry
    name: graphene-rs
    version: 0.22.0-alpha.3
    sha: 8c1cda278bf45e78f114d113fb8d6c35520282dc68f2431b63dfcd7b7b756f52
  - kind: registry
    name: graphene-sys
    version: 0.22.0-alpha.3
    sha: 8c53d3d99028825340268cb5aff501c28f8892945753f09e7aa4bfc82e504f0b
  - kind: registry
    name: gsk4
    version: 0.11.0-alpha.3
    sha: 8fa8b404073dd71e616a50d8545c9ae4e7e821f42321c39f1d06a84cf6c487e6
  - kind: registry
    name: gsk4-sys
    version: 0.11.0-alpha.3
    sha: f3a5d7437bd04a7b3f22333eb2509893eb1fcff0c0abf92d6c7f0b187de5266d
  - kind: registry
    name: gtk4
    version: 0.11.0-alpha.3
    sha: cb5270bc4be0a32b204e5f434b82baa9e22579d85b64189b08fd72e16d1c2b4d
  - kind: registry
    name: gtk4-macros
    version: 0.11.0-alpha.3
    sha: 6477828ae1fae21ade559c4f6f3300f7e38ebe08e0ddcb924ded9f27185182d2
  - kind: registry
    name: gtk4-sys
    version: 0.11.0-alpha.3
    sha: a7a1d155c3c49ac790cccbd73e593308d46c2e9ab22d44ab219c906c94330ed9
  - kind: registry
    name: gufo
    version: 0.4.0-alpha
    sha: ade0696d48fa3000f01aa0e98b440afa0354c0e06245140f654fa02dc83596a5
  - kind: registry
    name: gufo-common
    version: 1.1.0-alpha
    sha: 4847cdf6a7b3ad3e4a21e050241c473ea3693558fbcedc8895343305da4b2c6d
  - kind: registry
    name: gufo-exif
    version: 0.4.0-alpha
    sha: a113e6d0bc82a44f0e0b4418ddc06f380d6d83eadb76bac576718a184c3c5b92
  - kind: registry
    name: gufo-jpeg
    version: 0.4.0-alpha
    sha: 0e1620f6ed5ebde5926e048ec443b0d1ccc1d954d15e82a8916cfcbea0870655
  - kind: registry
    name: gufo-png
    version: 0.4.0-alpha
    sha: dba967c68312a33730687e9eb1bdc0af8a47ac80c86356d701bffebb9e474e48
  - kind: registry
    name: gufo-tiff
    version: 0.4.0-alpha
    sha: 8b2999088226ae3753b96ec4f39aa5fc19d630845e59b7de9b1fcfdf1bb2b120
  - kind: registry
    name: gufo-webp
    version: 0.4.0-alpha
    sha: 787b26a70aed0fcb714f1cd9b82e9f50cbfb44d5f1258963a69e2786a51e8de1
  - kind: registry
    name: gufo-xmp
    version: 0.4.0-alpha
    sha: b124aaf67973d53ecc4078adae281300c90d26a4519db46ce747f234e3fac64b
  - kind: registry
    name: gvdb
    version: 0.9.0
    sha: b9d94c8a63f94bbc35cf63e105791c5992bd60d4516d41fe5bf3db8d10b30b43
  - kind: registry
    name: gvdb-macros
    version: 0.1.15
    sha: e9ead18b3ca995ee40dc08121c75ffc2d8695fbd1a1ced48c3632c7c1ce00b2c
  - kind: registry
    name: gweather-sys
    version: 4.8.0-alpha.0
    sha: 636e135bd85cbe5e9e5b0b0a8e8f103e377e68d2056589b61e13bf1230b0d32a
  - kind: registry
    name: half
    version: 2.7.1
    sha: 6ea2d84b969582b4b1864a92dc5d27cd2b77b622a8d79306834f1be5ba20d84b
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
    version: 0.5.2
    sha: fc0fef456e4baa96da950455cd02c081ca953b141298e41db3fc7e36b1da849c
  - kind: registry
    name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - kind: registry
    name: icu_collections
    version: 2.1.1
    sha: 4c6b649701667bbe825c3b7e6388cb521c23d88644678e83c0c4d0a621a34b43
  - kind: registry
    name: icu_locale_core
    version: 2.1.1
    sha: edba7861004dd3714265b4db54a3c390e880ab658fec5f7db895fae2046b5bb6
  - kind: registry
    name: icu_normalizer
    version: 2.1.1
    sha: 5f6c8828b67bf8908d82127b2054ea1b4427ff0230ee9141c54251934ab1b599
  - kind: registry
    name: icu_normalizer_data
    version: 2.1.1
    sha: 7aedcccd01fc5fe81e6b489c15b247b8b0690feb23304303a9e560f37efc560a
  - kind: registry
    name: icu_properties
    version: 2.1.2
    sha: 020bfc02fe870ec3a66d93e677ccca0562506e5872c650f893269e08615d74ec
  - kind: registry
    name: icu_properties_data
    version: 2.1.2
    sha: 616c294cf8d725c6afcd8f55abc17c56464ef6211f9ed59cccffe534129c77af
  - kind: registry
    name: icu_provider
    version: 2.1.1
    sha: 85962cf0ce02e1e0a629cc34e7ca3e373ce20dda4c4d7294bbd0bf1fdb59e614
  - kind: registry
    name: idna
    version: 1.1.0
    sha: 3b0875f23caa03898994f6ddc501886a45c7d3d62d04d2d90788d47be1b1e4de
  - kind: registry
    name: idna_adapter
    version: 1.2.1
    sha: 3acae9609540aa318d1bc588455225fb2085b9ed0c4f6bd0d9d5bcd86f1a0344
  - kind: registry
    name: indexmap
    version: 2.13.0
    sha: 7714e70437a7dc3ac8eb7e6f8df75fd8eb422675fc7678aff7364301092b1017
  - kind: registry
    name: itoa
    version: 1.0.17
    sha: 92ecc6618181def0457392ccd0ee51198e065e016d1d527a7ac1b6dc7c1f09d2
  - kind: registry
    name: jiff
    version: 0.2.19
    sha: d89a5b5e10d5a9ad6e5d1f4bd58225f655d6fe9767575a5e8ac5a6fe64e04495
  - kind: registry
    name: jiff-static
    version: 0.2.19
    sha: ff7a39c8862fc1369215ccf0a8f12dd4598c7f6484704359f0351bd617034dbf
  - kind: registry
    name: jobserver
    version: 0.1.34
    sha: 9afb3de4395d6b3e67a780b6de64b51c978ecf11cb9a462c66be7d4ca9039d33
  - kind: registry
    name: js-sys
    version: 0.3.85
    sha: 8c942ebf8e95485ca0d52d97da7c5a2c387d0e7f0ba4c35e93bfcaee045955b3
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: lcms2
    version: 6.1.1
    sha: b75877b724685dd49310bdbadbf973fc69b1d01992a6d4a861b928fc3943f87b
  - kind: registry
    name: lcms2-sys
    version: 4.0.6
    sha: 1c2604b23848ca80b2add60f0fb2270fd980e622c25029b6597fa01cfd5f8d5f
  - kind: registry
    name: libadwaita
    version: 0.9.0-alpha.0
    sha: 7c6135f2866461657af98ce055b9e0b6be155be236a80325254887f3a12f164f
  - kind: registry
    name: libadwaita-sys
    version: 0.9.0-alpha.0
    sha: 0569721fe24657ab919827563441541763e2d98adc577575007039bbbaf7b498
  - kind: registry
    name: libc
    version: 0.2.180
    sha: bcc35a38544a891a5f7c865aca548a982ccb3b8650a5b06d0fd33a10283c56fc
  - kind: registry
    name: libgweather
    version: 4.8.0-alpha.0
    sha: 67f833cd31eaec72f6c8a6ba226a0ff9297a0b265aae77ebf63d362bed2411f3
  - kind: registry
    name: libloading
    version: 0.8.9
    sha: d7c4b02199fee7c5d21a5ae7d8cfa79a6ef5bb2fc834d6e9058e89c825efdc55
  - kind: registry
    name: libseccomp
    version: 0.4.0
    sha: 0e5310a2c5b6ffbc094b5f70a2ca7b79ed36ad90e6f90994b166489a1bce3fcc
  - kind: registry
    name: libseccomp-sys
    version: 0.3.0
    sha: 60276e2d41bbb68b323e566047a1bfbf952050b157d8b5cdc74c07c1bf4ca3b6
  - kind: registry
    name: linux-raw-sys
    version: 0.11.0
    sha: df1d3c3b53da64cf5760482273a98e575c651a67eec7f77df96b5b642de8f039
  - kind: registry
    name: litemap
    version: 0.8.1
    sha: 6373607a59f0be73a39b6fe456b8192fcc3585f602af20751600e974dd455e77
  - kind: registry
    name: litrs
    version: 0.5.1
    sha: 1e4cf394bcd88ba72eb3b2862e21ef6458b0e1586654e213b0176e667bb9d19e
  - kind: registry
    name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - kind: registry
    name: log
    version: 0.4.29
    sha: 5e5032e24019045c762d3c0f28f5b6b8bbf38563a65908389bf7978758920897
  - kind: registry
    name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - kind: registry
    name: matchers
    version: 0.2.0
    sha: d1525a2a28c7f4fa0fc98bb91ae755d1e2d1505079e05539e35bc876b5d65ae9
  - kind: registry
    name: memchr
    version: 2.8.0
    sha: f8ca58f447f06ed17d5fc4043ce1b10dd205e060fb3ce5b979b8ed8e59ff3f79
  - kind: registry
    name: memfd
    version: 0.6.5
    sha: ad38eb12aea514a0466ea40a80fd8cc83637065948eb4a426e4aa46261175227
  - kind: registry
    name: memmap2
    version: 0.9.9
    sha: 744133e4a0e0a658e1374cf3bf8e415c4052a15a111acd372764c55b4177d490
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: miniz_oxide
    version: 0.8.9
    sha: 1fa76a2c86f704bdb222d66965fb3d63269ce38518b83cb0575fca855ebb6316
  - kind: registry
    name: miniz_oxide
    version: 0.9.0
    sha: 5faa9f23e86bd5768d76def086192ff5f869fb088da12a976ea21e9796b975f6
  - kind: registry
    name: nix
    version: 0.30.1
    sha: 74523f3a35e05aba87a1d978330aef40f67b0304ac79c1c00b294c9830543db6
  - kind: registry
    name: nu-ansi-term
    version: 0.50.3
    sha: 7957b9740744892f114936ab4a57b3f487491bbeafaf8083688b16841a4240e5
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
    version: 1.21.3
    sha: 42f5e15c9953c5e4ccceeb2e7382a716482c34515315f7b03532b8b4e8393d2d
  - kind: registry
    name: ordered-stream
    version: 0.2.0
    sha: 9aa2b01e1d916879f73a53d01d1d6cee68adbb31d6d9177a8cfce093cced1d50
  - kind: registry
    name: pango
    version: 0.22.0-alpha.3
    sha: 297277b061aa061399e39bc7cb5a5f8908fb0488a6fd472cc590f5add58e7188
  - kind: registry
    name: pango-sys
    version: 0.22.0-alpha.3
    sha: 89dd82226bf39a17ffd3a6a38c0bc6ccc244e09c5c4b296ea74265c9fa477c3a
  - kind: registry
    name: parking
    version: 2.2.1
    sha: f38d5652c16fde515bb1ecef450ab0f6a219d619a7274976324d5e377f7dceba
  - kind: registry
    name: paste
    version: 1.0.15
    sha: 57c0d7b74b563b49d38dae00a0c37d4d6de9b432382b2892f0574ddcae73fd0a
  - kind: registry
    name: percent-encoding
    version: 2.3.2
    sha: 9b4f627cb1b25917193a259e49bdad08f671f8d9708acfd5fe0a8c1455d87220
  - kind: registry
    name: pin-project-lite
    version: 0.2.16
    sha: 3b3cff922bd51709b605d9ead9aa71031d81447142d828eb4a6eba76fe619f9b
  - kind: registry
    name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - kind: registry
    name: piper
    version: 0.2.4
    sha: 96c8c490f422ef9a4efd2cb5b42b76c8613d7e7dfc1caf667b8a3350a5acc066
  - kind: registry
    name: pkg-config
    version: 0.3.32
    sha: 7edddbd0b52d732b21ad9a5fab5c704c14cd949e5e9a1ec5929a24fded1b904c
  - kind: registry
    name: polling
    version: 3.11.0
    sha: 5d0e4f59085d47d8241c88ead0f274e8a0cb551f3625263c05eb8dd897c34218
  - kind: registry
    name: portable-atomic
    version: 1.13.1
    sha: c33a9471896f1c69cecef8d20cbe2f7accd12527ce60845ff44c153bb2a21b49
  - kind: registry
    name: portable-atomic-util
    version: 0.2.5
    sha: 7a9db96d7fa8782dd8c15ce32ffe8680bbd1e978a43bf51a34d39483540495f5
  - kind: registry
    name: potential_utf
    version: 0.1.4
    sha: b73949432f5e2a09657003c25bca5e19a0e9c84f8058ca374f49e0ebe605af77
  - kind: registry
    name: proc-macro-crate
    version: 3.4.0
    sha: 219cb19e96be00ab2e37d6e299658a0cfa83e52429179969b0f0121b4ac46983
  - kind: registry
    name: proc-macro2
    version: 1.0.106
    sha: 8fd00f0bb2e90d81d1044c2b32617f68fcb9fa3bb7640c23e9c748e53fb30934
  - kind: registry
    name: quick-xml
    version: 0.38.4
    sha: b66c2058c55a409d601666cffe35f04333cf1013010882cec174a7467cd4e21c
  - kind: registry
    name: quote
    version: 1.0.44
    sha: 21b2ebcf727b7760c461f091f9f0f539b77b8e87f2fd88131e7f1b433b3cece4
  - kind: registry
    name: r-efi
    version: 5.3.0
    sha: 69cdb34c158ceb288df11e18b4bd39de994f6657d83847bdffdbd7f346754b0f
  - kind: registry
    name: rayon
    version: 1.11.0
    sha: 368f01d005bf8fd9b1206fb6fa653e6c4a81ceb1466406b81792d87c5677a58f
  - kind: registry
    name: rayon-core
    version: 1.13.0
    sha: 22e18b0f0062d30d4230b2e85ff77fdfe4326feb054b9783a3460d8435c8ab91
  - kind: registry
    name: regex
    version: 1.12.3
    sha: e10754a14b9137dd7b1e3e5b0493cc9171fdd105e0ab477f51b72e7f3ac0e276
  - kind: registry
    name: regex-automata
    version: 0.4.14
    sha: 6e1dd4122fc1595e8162618945476892eefca7b88c52820e74af6262213cae8f
  - kind: registry
    name: regex-syntax
    version: 0.8.9
    sha: a96887878f22d7bad8a3b6dc5b7440e0ada9a245242924394987b21cf2210a4c
  - kind: registry
    name: rmp
    version: 0.8.15
    sha: 4ba8be72d372b2c9b35542551678538b562e7cf86c3315773cae48dfbfe7790c
  - kind: registry
    name: rmp-serde
    version: 1.3.1
    sha: 72f81bee8c8ef9b577d1681a70ebbc962c232461e397b22c208c43c04b67a155
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: rustix
    version: 1.1.3
    sha: 146c9e247ccc180c1f61615433868c99f3de3ae256a30a43b49f67c2d9171f34
  - kind: registry
    name: rustversion
    version: 1.0.22
    sha: b39cdef0fa800fc44525c84ccb54a029961a8215f9619753635a9c0d2538d46d
  - kind: registry
    name: same-file
    version: 1.0.6
    sha: 93fc1dc3aaa9bfed95e02e6eadabb4baf7e3078b0bd1b4d7b6b0b68378900502
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
    name: serde_json
    version: 1.0.149
    sha: 83fc039473c5595ace860d8c4fafa220ff474b3fc6bfdb4293327f1a37e94d86
  - kind: registry
    name: serde_repr
    version: 0.1.20
    sha: 175ee3e80ae9982737ca543e96133087cbd9a485eecc3bc4de9c1a37b47ea59c
  - kind: registry
    name: serde_spanned
    version: 1.0.4
    sha: f8bbf91e5a4d6315eee45e704372590b30e260ee83af6639d64557f51b067776
  - kind: registry
    name: sharded-slab
    version: 0.1.7
    sha: f40ca3c46823713e0d4209592e8d6e826aa57e928f09752619fc696c499637f6
  - kind: registry
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
  - kind: registry
    name: signal-hook-registry
    version: 1.4.8
    sha: c4db69cba1110affc0e9f7bcd48bbf87b3f4fc7c61fc9155afd4c469eb3d6c1b
  - kind: registry
    name: simd-adler32
    version: 0.3.8
    sha: e320a6c5ad31d271ad523dcf3ad13e2767ad8b1cb8f047f75a8aeaf8da139da2
  - kind: registry
    name: slab
    version: 0.4.12
    sha: 0c790de23124f9ab44544d7ac05d60440adc586479ce501c1d6d7da3cd8c9cf5
  - kind: registry
    name: smallvec
    version: 1.15.1
    sha: 67b1b7a3b5fe4f1376887184045fcf45c69e92af734b7aaddc05fb777b6fbd03
  - kind: registry
    name: stable_deref_trait
    version: 1.2.1
    sha: 6ce2be8dc25455e1f91df71bfa12ad37d7af1092ae736f3a6cd0e37bc7810596
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
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
    version: 2.0.114
    sha: d4d107df263a3013ef9b1879b0df87d706ff80f65a86ea879bd9c31f9b307c2a
  - kind: registry
    name: synstructure
    version: 0.13.2
    sha: 728a70f3dbaf5bab7f0c4b1ac8d7ae5ea60a4b5549c8a5914361c99147a709d2
  - kind: registry
    name: system-deps
    version: 7.0.7
    sha: 48c8f33736f986f16d69b6cb8b03f55ddcad5c41acc4ccc39dd88e84aa805e7f
  - kind: registry
    name: target-lexicon
    version: 0.13.3
    sha: df7f62577c25e07834649fc3b39fafdc597c0a3527dc1c60129201ccfcbaa50c
  - kind: registry
    name: temp-dir
    version: 0.1.16
    sha: 83176759e9416cf81ee66cb6508dbfe9c96f20b8b56265a39917551c23c70964
  - kind: registry
    name: tempfile
    version: 3.24.0
    sha: 655da9c7eb6305c55742045d5a8d2037996d61d8de95806335c7c86ce0f82e9c
  - kind: registry
    name: thiserror
    version: 2.0.18
    sha: 4288b5bcbc7920c07a1149a35cf9590a2aa808e0bc1eafaade0b80947865fbc4
  - kind: registry
    name: thiserror-impl
    version: 2.0.18
    sha: ebc4ee7f67670e9b64d05fa4253e753e016c6c95ff35b89b7941d6b856dec1d5
  - kind: registry
    name: thread_local
    version: 1.1.9
    sha: f60246a4944f24f6e018aa17cdeffb7818b76356965d03b07d6a9886e8962185
  - kind: registry
    name: tinystr
    version: 0.8.2
    sha: 42d3e9c45c09de15d06dd8acf5f4e0e399e85927b7f00711024eb7ae10fa4869
  - kind: registry
    name: toml
    version: 0.9.11+spec-1.1.0
    sha: f3afc9a848309fe1aaffaed6e1546a7a14de1f935dc9d89d32afd9a44bab7c46
  - kind: registry
    name: toml_datetime
    version: 0.7.5+spec-1.1.0
    sha: 92e1cfed4a3038bc5a127e35a2d360f145e1f4b971b551a2ba5fd7aedf7e1347
  - kind: registry
    name: toml_edit
    version: 0.23.10+spec-1.0.0
    sha: 84c8b9f757e028cee9fa244aea147aab2a9ec09d5325a9b01e0a49730c2b5269
  - kind: registry
    name: toml_parser
    version: 1.0.6+spec-1.1.0
    sha: a3198b4b0a8e11f09dd03e133c0280504d0801269e9afa46362ffde1cbeebf44
  - kind: registry
    name: toml_writer
    version: 1.0.6+spec-1.1.0
    sha: ab16f14aed21ee8bfd8ec22513f7287cd4a91aa92e44edfe2c17ddd004e92607
  - kind: registry
    name: tracing
    version: 0.1.44
    sha: 63e71662fa4b2a2c3a26f570f037eb95bb1f85397f3cd8076caed2f026a6d100
  - kind: registry
    name: tracing-attributes
    version: 0.1.31
    sha: 7490cfa5ec963746568740651ac6781f701c9c5ea257c58e057f3ba8cf69e8da
  - kind: registry
    name: tracing-core
    version: 0.1.36
    sha: db97caf9d906fbde555dd62fa95ddba9eecfd14cb388e4f491a66d74cd5fb79a
  - kind: registry
    name: tracing-subscriber
    version: 0.3.22
    sha: 2f30143827ddab0d256fd843b7a66d164e9f271cfa0dde49142c5ca0ca291f1e
  - kind: registry
    name: uds_windows
    version: 1.1.0
    sha: 89daebc3e6fd160ac4aa9fc8b3bf71e1f74fbf92367ae71fb83a037e8bf164b9
  - kind: registry
    name: unicode-ident
    version: 1.0.23
    sha: 537dd038a89878be9b64dd4bd1b260315c1bb94f4d784956b81e27a088d9a09e
  - kind: registry
    name: url
    version: 2.5.8
    sha: ff67a8a4397373c3ef660812acab3268222035010ab8680ec4215f38ba3d0eed
  - kind: registry
    name: utf8_iter
    version: 1.0.4
    sha: b6c140620e7ffbb22c2dee59cafe6084a59b5ffc27a8859a5f0d494b5d52b6be
  - kind: registry
    name: uuid
    version: 1.20.0
    sha: ee48d38b119b0cd71fe4141b30f5ba9c7c5d9f4e7a3a8b4a674e4b6ef789976f
  - kind: registry
    name: version-compare
    version: 0.2.1
    sha: 03c2856837ef78f57382f06b2b8563a2f512f7185d732608fd9176cb3b8edf0e
  - kind: registry
    name: walkdir
    version: 2.5.0
    sha: 29790946404f91d9c5d06f9874efddea1dc06c5efe94541a7d6863108e3a5e4b
  - kind: registry
    name: wasip2
    version: 1.0.2+wasi-0.2.9
    sha: 9517f9239f02c069db75e65f174b3da828fe5f5b945c4dd26bd25d89c03ebcf5
  - kind: registry
    name: wasm-bindgen
    version: 0.2.108
    sha: 64024a30ec1e37399cf85a7ffefebdb72205ca1c972291c51512360d90bd8566
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.108
    sha: 008b239d9c740232e71bd39e8ef6429d27097518b6b30bdf9086833bd5b6d608
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.108
    sha: 5256bae2d58f54820e6490f9839c49780dff84c65aeab9e772f15d5f0e913a55
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.108
    sha: 1f01b580c9ac74c8d8f0c0e4afb04eeef2acf145458e52c03845ee9cd23e3d12
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
    name: windows-link
    version: 0.2.1
    sha: f0805222e57f7521d6a62e36fa9163bc891acd422f971defe97d64e70d0a4fe5
  - kind: registry
    name: windows-sys
    version: 0.61.2
    sha: ae137229bcbd6cdf0f7b80a31df61766145077ddf49416a728b02cb3921ff3fc
  - kind: registry
    name: winnow
    version: 0.7.14
    sha: 5a5364e9d77fcdeeaa6062ced926ee3381faa2ee02d3eb83a5c27a8825540829
  - kind: registry
    name: wit-bindgen
    version: 0.51.0
    sha: d7249219f66ced02969388cf2bb044a09756a083d0fab1e566056b04d9fbcaa5
  - kind: registry
    name: writeable
    version: 0.6.2
    sha: 9edde0db4769d2dc68579893f2306b26c6ecfbe0ef499b013d731b7b9247e0b9
  - kind: registry
    name: x11-dl
    version: 2.21.0
    sha: 38735924fedd5314a6e548792904ed8c6de6636285cb9fec04d5b1db85c1516f
  - kind: registry
    name: xml-rs
    version: 0.8.28
    sha: 3ae8337f8a065cfc972643663ea4279e04e7256de865aa66fe25cec5fb912d3f
  - kind: registry
    name: yeslogic-fontconfig-sys
    version: 6.0.0
    sha: 503a066b4c037c440169d995b869046827dbc71263f6e8f3be6d77d4f3229dbd
  - kind: registry
    name: yoke
    version: 0.8.1
    sha: 72d6e5c6afb84d73944e5cedb052c4680d5657337201555f9f2a16b7406d4954
  - kind: registry
    name: yoke-derive
    version: 0.8.1
    sha: b659052874eb698efe5b9e8cf382204678a0086ebf46982b79d6ca3182927e5d
  - kind: registry
    name: zbus
    version: 5.13.2
    sha: 1bfeff997a0aaa3eb20c4652baf788d2dfa6d2839a0ead0b3ff69ce2f9c4bdd1
  - kind: registry
    name: zbus_macros
    version: 5.13.2
    sha: 0bbd5a90dbe8feee5b13def448427ae314ccd26a49cac47905cafefb9ff846f1
  - kind: registry
    name: zbus_names
    version: 4.3.1
    sha: ffd8af6d5b78619bab301ff3c560a5bd22426150253db278f164d6cf3b72c50f
  - kind: registry
    name: zerocopy
    version: 0.8.39
    sha: db6d35d663eadb6c932438e763b262fe1a70987f9ae936e60158176d710cae4a
  - kind: registry
    name: zerocopy-derive
    version: 0.8.39
    sha: 4122cd3169e94605190e77839c9a40d40ed048d305bfdc146e7df40ab0f3e517
  - kind: registry
    name: zerofrom
    version: 0.1.6
    sha: 50cc42e0333e05660c3587f3bf9d0478688e15d870fab3346451ce7f8c9fbea5
  - kind: registry
    name: zerofrom-derive
    version: 0.1.6
    sha: d71e5d6e06ab090c67b5e44993ec16b72dcbaabc526db883a360057678b48502
  - kind: registry
    name: zerotrie
    version: 0.2.3
    sha: 2a59c17a5562d507e4b54960e8569ebee33bee890c70aa3fe7b97e85a9fd7851
  - kind: registry
    name: zerovec
    version: 0.11.5
    sha: 6c28719294829477f525be0186d13efa9a3c602f7ec202ca9e353d310fb9a002
  - kind: registry
    name: zerovec-derive
    version: 0.11.2
    sha: eadce39539ca5cb3985590102671f2567e659fca9666581ad3411d59207951f3
  - kind: registry
    name: zmij
    version: 1.0.20
    sha: 4de98dfa5d5b7fef4ee834d0073d560c9ca7b6c46a71d058c48db7960f8cfaf7
  - kind: registry
    name: zvariant
    version: 5.9.2
    sha: 68b64ef4f40c7951337ddc7023dd03528a57a3ce3408ee9da5e948bd29b232c4
  - kind: registry
    name: zvariant_derive
    version: 5.9.2
    sha: 484d5d975eb7afb52cc6b929c13d3719a20ad650fea4120e6310de3fc55e415c
  - kind: registry
    name: zvariant_utils
    version: 3.3.0
    sha: f75c23a64ef8f40f13a6989991e643554d9bef1d682a281160cf0c1bc389c5e9
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glycin.bst
- core-deps/libgweather.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libseccomp.bst
