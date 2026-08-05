sources:
- kind: git_repo
  url: gnome:glycin.git
  track: main
  ref: 2.2.beta-4-g46a5cc14ebb5692a14e3a95eb643262d7af29ce9
- kind: cargo2
  ref:
  - kind: registry
    name: adler2
    version: 2.0.1
    sha: 320119579fcad9c21884f5c4861d16174d0e06250625266f50fe6898340abefa
  - kind: registry
    name: ahash
    version: 0.8.12
    sha: 5a15f179cd60c4584b8a8c596927aadc462e27f2ca70c04e0071964a73ba7a75
  - kind: registry
    name: aho-corasick
    version: 1.1.4
    sha: ddd31a130427c27518df266943a5308ed92d4b226cc639f5a8f1002816174301
  - kind: registry
    name: aliasable
    version: 0.1.3
    sha: 250f629c0161ad8107cf89319e990051fae62832fd343083bea452d93e2205fd
  - kind: registry
    name: alloca
    version: 0.4.0
    sha: e5a7d05ea6aea7e9e64d25b9156ba2fee3fdd659e34e41063cd2fc7cd020d7f4
  - kind: registry
    name: allocator-api2
    version: 0.2.21
    sha: 683d7910e743518b0e34f1186f92494becacb047c7b6bf616c96772180fef923
  - kind: registry
    name: android_system_properties
    version: 0.1.5
    sha: 819e7219dbd41043ac279b19830f2efc897156490d7fd6ea916720117ee66311
  - kind: registry
    name: anes
    version: 0.1.6
    sha: 4b46cbb362ab8752921c97e041f5e366ee6297bd428a31275b9fcf1e380f7299
  - kind: registry
    name: anstyle
    version: 1.0.14
    sha: 940b3a0ca603d1eade50a4846a2afffd5ef57a9feac2c0e2ec2e14f9ead76000
  - kind: registry
    name: approx
    version: 0.5.1
    sha: cab112f0a86d568ea0e627cc1d6be74a1e9cd55214684db5561995f6dad897c6
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
    version: 1.14.0
    sha: c96bf972d85afc50bf5ab8fe2d54d1586b4e0b46c97c50a0c9e71e2f7bcd812a
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
    version: 0.2.14
    sha: 52b5aaafa020cf5053a01f2a60e8ff5dccf550f0f77ec54a4e47285ac2bab485
  - kind: registry
    name: async-task
    version: 4.7.1
    sha: 8b75356056920673b02621b35afd0f7dda9306d03c79a30f5c56c44cf256e3de
  - kind: registry
    name: async-trait
    version: 0.1.91
    sha: ae36dc4177970ef04fde5178d3e2429882def40e57a451f919c098f72baa6cec
  - kind: registry
    name: atomic-waker
    version: 1.1.2
    sha: 1505bd5d3d116872e7271a6d4e16d81d0c8570876c8de68093a09ac269d8aac0
  - kind: registry
    name: autocfg
    version: 1.5.1
    sha: f2032f911046de80f0a198e0901378627c33f59ea0ac00e363d481118bd70a53
  - kind: registry
    name: bit_field
    version: 0.10.3
    sha: 1e4b40c7323adcfc0a41c4b88143ed58346ff65a288fc144329c5c45e05d70c6
  - kind: registry
    name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - kind: registry
    name: bitflags
    version: 2.13.1
    sha: b588b76d00fde79687d7646a9b5bdf3cc0f655e0bbd080335a95d7e96f3587da
  - kind: registry
    name: bitreader
    version: 0.3.11
    sha: 886559b1e163d56c765bc3a985febb4eee8009f625244511d8ee3c432e08c066
  - kind: registry
    name: blocking
    version: 1.6.2
    sha: e83f8d02be6967315521be875afa792a316e28d57b5a2d401897e2a7921b7f21
  - kind: registry
    name: bon
    version: 3.9.3
    sha: a602c73c7b0148ec6d12af6fd5cc7a46e2eacc8878271a999abac56eed12f561
  - kind: registry
    name: bon-macros
    version: 3.9.3
    sha: 6dee98b0db6a962de883bf5d20362dee4d7ca0d12fe39a7c6c73c844e1cd7c1f
  - kind: registry
    name: bumpalo
    version: 3.20.3
    sha: 72f5acc6cb2ba439de613abc23857ec3d78374d8ed5ac84e9d11336e87da8649
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
    version: 0.22.0
    sha: 5cc8d9aa793480744cd9a0524fef1a2e197d9eaa0f739cde19d16aba530dcb95
  - kind: registry
    name: cairo-sys-rs
    version: 0.22.0
    sha: f8b4985713047f5faee02b8db6a6ef32bbb50269ff53c1aee716d1d195b76d54
  - kind: registry
    name: cast
    version: 0.3.0
    sha: 37b2a672a2cb129a2e41c10b1224bb368f9f37a2b16b612598138befd7b37eb5
  - kind: registry
    name: cc
    version: 1.4.0
    sha: 5add81bb678e6cb321aff7fa0dc7689ad82b112dbc032cea19f91d6b8e3582b9
  - kind: registry
    name: cfg-expr
    version: 0.20.8
    sha: fb693542bcafa528e198be0ebd9d3632ca5b7c93dbe7237460e199910835997c
  - kind: registry
    name: cfg-if
    version: 1.0.4
    sha: 9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801
  - kind: registry
    name: cfg_aliases
    version: 0.2.2
    sha: f079e83a288787bcd14a6aea84cee5c87a67c5a3e660c30f557a3d24761b3527
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
    name: clap
    version: 4.6.4
    sha: d91e0c145792ef73a6ad36d27c75ac09f1832222a3c209689d90f534685ee5b7
  - kind: registry
    name: clap_builder
    version: 4.6.2
    sha: f09628afdcc538b57f3c6341e9c8e9970f18e4a481690a64974d7023bd33548b
  - kind: registry
    name: clap_lex
    version: 1.1.0
    sha: c8d4a3bb8b1e0c1050499d1815f5ab16d04f0959b233085fb31653fbfc9d98f9
  - kind: registry
    name: color_quant
    version: 1.1.0
    sha: 3d7b894f5411737b7867f4827955924d7c254fc9f4d91a6aad6b097804b1018b
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: core-foundation-sys
    version: 0.8.7
    sha: 773648b94d0e5d620f64f280777445740e61fe701025087ec8b57f45c791888b
  - kind: registry
    name: crc32fast
    version: 1.5.0
    sha: 9481c1c90cbf2ac953f07c8d4a58aa3945c425b7185c9154d67a65e4230da511
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
    name: crunchy
    version: 0.2.4
    sha: 460fbee9c2c2f33933d720630a6a0bac33ba7053db5344fac858d4b8952d77d5
  - kind: registry
    name: darling
    version: 0.23.0
    sha: 25ae13da2f202d56bd7f91c25fba009e7717a1e4a1cc98a76d844b65ae912e9d
  - kind: registry
    name: darling_core
    version: 0.23.0
    sha: 9865a50f7c335f53564bb694ef660825eb8610e0a53d3e11bf1b0d3df31e03b0
  - kind: registry
    name: darling_macro
    version: 0.23.0
    sha: ac3984ec7bd6cfa798e62b4a642426a5be0e68f9401cfc2a01e3fa9ea2fcdb8d
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
    name: dlib
    version: 0.5.3
    sha: ab8ecd87370524b461f8557c119c405552c396ed91fc0a8eec68679eab26f94a
  - kind: registry
    name: either
    version: 1.17.0
    sha: 9e5e8f6c15a24b9a3ee5efec809ccd006d3b30e8b3bb63c39af737c7f87daa1d
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
    name: enumn
    version: 0.1.14
    sha: 2f9ed6b3789237c8a0c1c505af1c7eb2c560df6186f01b098c3a1064ea532f38
  - kind: registry
    name: env_filter
    version: 2.0.0
    sha: 900d271a03799a1ee8d1ca9b19893b48ca674a9284fefcfb85f05e74ed314217
  - kind: registry
    name: env_logger
    version: 0.11.11
    sha: de671bd27a75a797dc9ae289ba1e77276e75e2026408aab65185384e2d5cd3f6
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
    version: 5.4.2
    sha: 5a23add41df1562121a9393cb065eab5146a1242410f23a644851e90cfd669d2
  - kind: registry
    name: event-listener-strategy
    version: 0.5.4
    sha: 8be9f3dfaaffdae2972880079a491a1a8bb7cbed0b8dd7a347f668b4150a3b93
  - kind: registry
    name: exr
    version: 1.74.2
    sha: 711fe42c9964295e01ee3fba3f9fe0e1d24b98886950d68efe81b1c76e21adf3
  - kind: registry
    name: fallible_collections
    version: 0.5.2
    sha: dab93c7205280c4785c44517fe84d99751b81f6deb8450cb196da6be88e332bb
  - kind: registry
    name: fastrand
    version: 2.5.0
    sha: da7c62ceae207dd37ea5b845da6a0696c799f85e97da1ab5b7910be3c1c80223
  - kind: registry
    name: fax
    version: 0.2.7
    sha: caf1079563223d5d59d83c85886a56e586cfd5c1a26292e971a0fa266531ac5a
  - kind: registry
    name: fdeflate
    version: 0.3.7
    sha: 1e6853b52649d4ac5c0bd02320cddc5ba956bdb407c4b75a2c6b75bf51500f8c
  - kind: registry
    name: fearless_simd
    version: 0.4.1
    sha: b97b65636e5b9ef369943878ac74335ba1c55c1cb6adbf1e2c293c624248d693
  - kind: registry
    name: find-msvc-tools
    version: 0.1.9
    sha: 5baebc0774151f905a1a2cc41989300b1e6fbb29aff0ceffa1064fdd3088d582
  - kind: registry
    name: flate2
    version: 1.1.9
    sha: 843fba2746e448b37e26a819579957415c8cef339bf08564fe8b7ddbd959573c
  - kind: registry
    name: four-cc
    version: 0.4.0
    sha: 795cbfc56d419a7ce47ccbb7504dd9a5b7c484c083c356e797de08bd988d9629
  - kind: registry
    name: futures-channel
    version: 0.3.33
    sha: 262590f4fe6afeb0bc83be1daa64e52657fe185690a958af7f3ad0e92085c5ae
  - kind: registry
    name: futures-core
    version: 0.3.33
    sha: 2cd50c473c80f6d7c3670a752354b8e569b1a7cbfdc0419ec88e5edad85e0dc7
  - kind: registry
    name: futures-executor
    version: 0.3.33
    sha: 6754879cc9f2c66f88c6e5c35344bb0bdb0708b0352b1201815667c7eabc7458
  - kind: registry
    name: futures-io
    version: 0.3.33
    sha: 4577ecaa3c4f96589d473f679a71b596316f6641bc350038b962a5daf0085d7a
  - kind: registry
    name: futures-lite
    version: 2.6.1
    sha: f78e10609fe0e0b3f4157ffab1876319b5b0db102a2c60dc4626306dc46b44ad
  - kind: registry
    name: futures-macro
    version: 0.3.33
    sha: 2d6d3cde68c518367be28956066ddfef33813991b77a55005a69dae04bf3b10b
  - kind: registry
    name: futures-sink
    version: 0.3.33
    sha: e34418ac499d6305c2fb5ad0ed2f6ac998c5f8ca209b4510f7f94242c647e307
  - kind: registry
    name: futures-task
    version: 0.3.33
    sha: b231ed28831efb4a61a08580c4bc233ec56bc009f4cd8f52da2c3cb97df0c109
  - kind: registry
    name: futures-timer
    version: 3.0.4
    sha: af43fadb8a98512d547e37b4e92e0ced13e205c061b87b4623eff01d918d6968
  - kind: registry
    name: futures-util
    version: 0.3.33
    sha: a77a90a256fce34da66415271e30f94ee91c57b04b8a2c042d9cf3220179deaa
  - kind: registry
    name: gdk-pixbuf
    version: 0.22.0
    sha: 25f420376dbee041b2db374ce4573892a36222bb3f6c0c43e24f0d67eae9b646
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.22.0
    sha: 48f31b37b1fc4b48b54f6b91b7ef04c18e00b4585d98359dd7b998774bbd91fb
  - kind: registry
    name: gdk4
    version: 0.11.4
    sha: d81e2a6c6ecba2aab60633a98df1868b03fa0bfdce8105edc27c1bccf71f0e39
  - kind: registry
    name: gdk4-sys
    version: 0.11.4
    sha: 3d8f608d8d7d229975c4d0d026f5d3071598c4ddab3c5262b0a31840fec78d13
  - kind: registry
    name: getopts
    version: 0.2.24
    sha: cfe4fbac503b8d1f88e6676011885f34b7174f46e59956bba534ba83abded4df
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
    version: 0.22.8
    sha: 8b3e1f669909c326b9413bde5a742097b8c90a7d78f45326db13668984769ded
  - kind: registry
    name: gio-sys
    version: 0.22.8
    sha: 353fdc7da7cd16da916104b1e0e4e7de380ec9c8aaa20d4d742d66310ab4b0d5
  - kind: registry
    name: gio-unix
    version: 0.22.8
    sha: ce8d768735e229742c135afa3d3326604088d2df0679901cdb05e791fe2fbe0a
  - kind: registry
    name: gio-unix-sys
    version: 0.22.0
    sha: 44bab97ce39112040216e268f074645f50b31caeb53af708ab5d7e4e67f0dbfd
  - kind: registry
    name: glib
    version: 0.22.8
    sha: ddbcf514bd1881fc1b960e4e52b4e82873f4da3bceddbd58d42827b508888100
  - kind: registry
    name: glib-macros
    version: 0.22.6
    sha: 506d23499707c7142898429757e8d9a3871d965239a2cb66dfa05052be6d6f19
  - kind: registry
    name: glib-sys
    version: 0.22.8
    sha: 030967459f9f676851872c6304adea7825c6d462ec9b72554c733cf0c5952233
  - kind: registry
    name: gobject-sys
    version: 0.22.6
    sha: 22a861859b887a79cf461359c192c97a57d8fb0229dd291232e57aa11f6fa72c
  - kind: registry
    name: gufo
    version: 0.5.0-beta.1
    sha: 13dfc7feee4f49b9ba9e056787e45dc183094e82facd30134ac1264250b77e40
  - kind: registry
    name: gufo-common
    version: 2.0.0-beta.1
    sha: aa7226c8f146ccdea8d7a8cbfa03f7b87372092e0f39655cf19bade7d2fe0c8e
  - kind: registry
    name: gufo-exif
    version: 0.5.0-beta.1
    sha: f6d580a20163c7a7d277c8cf9169dc18deb3003de4f08fb6c56d6c878901dfa0
  - kind: registry
    name: gufo-jpeg
    version: 0.5.0-beta.1
    sha: f970f6a7ec35035ab893b394ced211205747d58c92d3b46665142d275aedca55
  - kind: registry
    name: gufo-png
    version: 0.5.0-beta.1
    sha: 57702bf2885289ea8a77a842d2792aca42975f2d1f237d785f45d30e78be363a
  - kind: registry
    name: gufo-svg
    version: 0.5.0-beta.1
    sha: d1c368a09cab9f790c1c0c098eb485fcd15ffdec217e51f83f6785e742666b2b
  - kind: registry
    name: gufo-tiff
    version: 0.5.0-beta.1
    sha: fcf3a0dbc580a3653ac9cc6234d66cddc1fd0af5cc7b6f3cde63c9a2ad70d83e
  - kind: registry
    name: gufo-webp
    version: 0.5.0-beta.1
    sha: 4e1998271aa38387aa572f957d4cc7e64841dd34e6354e2008aa8f74f25f0e4c
  - kind: registry
    name: gufo-xmp
    version: 0.5.0-beta.1
    sha: 41d62245a5d579d9748465f91f99df9da6d984c253a8179c8e6d98a267f0f9ff
  - kind: registry
    name: half
    version: 2.7.1
    sha: 6ea2d84b969582b4b1864a92dc5d27cd2b77b622a8d79306834f1be5ba20d84b
  - kind: registry
    name: hashbrown
    version: 0.14.5
    sha: e5274423e17b7c9fc20b6e7e208532f9b19825d82dfd615708b70edd83df41f1
  - kind: registry
    name: hashbrown
    version: 0.17.1
    sha: ed5909b6e89a2db4456e54cd5f673791d7eca6732202bbf2a9cc504fe2f9b84a
  - kind: registry
    name: hayro-jpeg2000
    version: 0.3.5
    sha: c75ab947623ef4ccaa7acf0579edf7cbb5a73838e3839a7be73335e522f433a1
  - kind: registry
    name: heck
    version: 0.4.1
    sha: 95505c38b4572b2d910cecb0281560f54b440a19336cbbcb27bf6ce6adc6f5a8
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
    name: iana-time-zone
    version: 0.1.65
    sha: e31bc9ad994ba00e440a8aa5c9ef0ec67d5cb5e5cb0cc7f8b744a35b389cc470
  - kind: registry
    name: iana-time-zone-haiku
    version: 0.1.2
    sha: f31827a206f56af32e590ba56d5d2d085f558508192593743f16b2306495269f
  - kind: registry
    name: ident_case
    version: 1.0.1
    sha: b9e0384b61958566e926dc50660321d12159025e767c18e043daf26b70104c39
  - kind: registry
    name: image
    version: 0.25.10
    sha: 85ab80394333c02fe689eaf900ab500fbd0c2213da414687ebf995a65d5a6104
  - kind: registry
    name: image-extras
    version: 0.1.1
    sha: 60d02eb2c9ccbbab470538fce34c7bc3be7b4e59268e65a3171367b296cdb842
  - kind: registry
    name: image-webp
    version: 0.2.4
    sha: 525e9ff3e1a4be2fbea1fdf0e98686a6d98b4d8f937e1bf7402245af1909e8c3
  - kind: registry
    name: indexmap
    version: 2.14.0
    sha: d466e9454f08e4a911e14806c24e16fba1b4c121d1ea474396f396069cf949d9
  - kind: registry
    name: itertools
    version: 0.13.0
    sha: 413ee7dfc52ee1a4949ceeb7dbc8a33f2d6c088194d9f922fb8318faf1f01186
  - kind: registry
    name: itoa
    version: 1.0.18
    sha: 8f42a60cbdf9a97f5d2305f08a87dc4e09308d1276d28c869c684d7777685682
  - kind: registry
    name: jiff
    version: 0.2.35
    sha: 668b7183bd07af9a4885f5c35b0cc5c83c4607a913c16b7e17291832910d2dcc
  - kind: registry
    name: jiff-core
    version: 0.1.0
    sha: 7feca88439efe53da3754500c1851dedf3cb36c524dd5cf8225cc0794de95d09
  - kind: registry
    name: jiff-static
    version: 0.2.35
    sha: 3a69dcb3a21cfb32ce1cd056169337ca284af0766dd766e7878819b251a49204
  - kind: registry
    name: jpeg-decoder
    version: 0.3.2
    sha: 00810f1d8b74be64b13dbf3db89ac67740615d6c891f0e7b6179326533011a07
  - kind: registry
    name: jpeg-encoder
    version: 0.7.1
    sha: a0370574b86f7eca156b9f298392b5e69a23f8c86f3f865add60bbc2e79467a6
  - kind: registry
    name: jpegxl-rs
    version: 0.14.0+libjxl-0.11.2
    sha: 9b7d16fe73fb6d2e16b986392b716409c6ae6fabd35769d66bea391b016cdbc9
  - kind: registry
    name: jpegxl-sys
    version: 0.12.1+libjxl-0.11.2
    sha: 00cb4f7ffb45ee4327e9ec6ca1a732f3abef470ee008f7d4be3afb414075cd7d
  - kind: registry
    name: js-sys
    version: 0.3.103
    sha: 53b44bfcdb3f8d5837a46dae1ca9660a837176eee74a28b229bc626816589102
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: lebe
    version: 0.5.3
    sha: 7a79a3332a6609480d7d0c9eab957bca6b455b91bb84e66d19f5ff66294b85b8
  - kind: registry
    name: libc
    version: 0.2.189
    sha: 3eaf3ede3fee6db1a4c2ee091bf8a8b4dccdc6d17f656fb07896ee72867612f2
  - kind: registry
    name: libheif-rs
    version: 2.7.0
    sha: 39c4e7037b43e1431961745e5c4004eedae3735a4fddd687810ff9d70beb9882
  - kind: registry
    name: libheif-sys
    version: 5.3.0+1.23.0
    sha: 5d2593dda939875015d3e1a9deccdb57381d4ef1fc9a96120731b25990579689
  - kind: registry
    name: libloading
    version: 0.8.9
    sha: d7c4b02199fee7c5d21a5ae7d8cfa79a6ef5bb2fc834d6e9058e89c825efdc55
  - kind: registry
    name: libm
    version: 0.2.16
    sha: b6d2cec3eae94f9f509c767b45932f1ada8350c4bdb85af2fcab4a3c14807981
  - kind: registry
    name: libopenraw
    version: 0.4.0-alpha.12
    sha: cb7af949edc773f32dd45ff5a0692860b619b03d2fa3741c1db1acfd1db3a553
  - kind: registry
    name: librsvg-rebind
    version: 0.3.0
    sha: 8e29b54b27b49901092b20ef1177d42a068beec0ce5f3344a664118d586d2443
  - kind: registry
    name: librsvg-rebind-sys
    version: 0.3.0
    sha: 4ab4a782ee37dfa57e9f03a169cc7ea652d20164e9e023f3df355d5d8b4e6c34
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
    version: 0.12.1
    sha: 32a66949e030da00e8c7d4434b251670a91556f4144941d37452769c25d58a53
  - kind: registry
    name: log
    version: 0.4.33
    sha: 0ceec5bc11778974d1bcb055b18002eba7f4b3518b6a0081b3af5f21666da9ad
  - kind: registry
    name: matchers
    version: 0.2.0
    sha: d1525a2a28c7f4fa0fc98bb91ae755d1e2d1505079e05539e35bc876b5d65ae9
  - kind: registry
    name: matrixmultiply
    version: 0.3.11
    sha: 3f607c237553f086e7043417a51df26b2eb899d3caff94e6a67592ff992fedc7
  - kind: registry
    name: memchr
    version: 2.8.3
    sha: cf8baf1c55e62ffcace7a9f06f4bd9cd3f0c4beb022d3b367256b91b87513d98
  - kind: registry
    name: memmap2
    version: 0.9.11
    sha: d1219ed1b7f229ee7104d281dd01d6802fe28bb6e95d292942c4daacdeb798c0
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
    version: 0.9.1
    sha: b63fbc4a50860e98e7b2aa7804ded1db5cbc3aff9193adaff57a6931bf7c4b4c
  - kind: registry
    name: mio
    version: 1.2.2
    sha: 30d65c71f1ce40ab09135ce117d742b9f8a19ff91a41a8b57ed50bc2de59c427
  - kind: registry
    name: moxcms
    version: 0.8.1
    sha: bb85c154ba489f01b25c0d36ae69a87e4a1c73a72631fc6c0eb6dde34a73e44b
  - kind: registry
    name: multiversion
    version: 0.8.0
    sha: 7edb7f0ff51249dfda9ab96b5823695e15a052dc15074c9dbf3d118afaf2c201
  - kind: registry
    name: multiversion-macros
    version: 0.8.0
    sha: b093064383341eb3271f42e381cb8f10a01459478446953953c75d24bd339fc0
  - kind: registry
    name: nalgebra
    version: 0.33.3
    sha: 9d43ddcacf343185dfd6de2ee786d9e8b1c2301622afab66b6c73baf9882abfd
  - kind: registry
    name: nalgebra-macros
    version: 0.2.2
    sha: 254a5372af8fc138e36684761d3c0cdb758a4410e938babcff1c860ce14ddbfc
  - kind: registry
    name: nix
    version: 0.31.3
    sha: cf20d2fde8ff38632c426f1165ed7436270b44f199fc55284c38276f9db47c3d
  - kind: registry
    name: nu-ansi-term
    version: 0.50.3
    sha: 7957b9740744892f114936ab4a57b3f487491bbeafaf8083688b16841a4240e5
  - kind: registry
    name: num-bigint
    version: 0.4.8
    sha: c89e69e7e0f03bea5ef08013795c25018e101932225a656383bd384495ecc367
  - kind: registry
    name: num-complex
    version: 0.4.6
    sha: 73f88a1307638156682bada9d7604135552957b7818057dcef22705b4d509495
  - kind: registry
    name: num-integer
    version: 0.1.46
    sha: 7969661fd2958a5cb096e56c8e1ad0444ac2bbcd0061bd28660485a44879858f
  - kind: registry
    name: num-rational
    version: 0.4.2
    sha: f83d14da390562dca69fc84082e73e548e1ad308d24accdedd2720017cb37824
  - kind: registry
    name: num-traits
    version: 0.2.19
    sha: 071dfc062690e90b734c0b2273ce72ad0ffa95f0c74596bc250dcfd960262841
  - kind: registry
    name: num_enum
    version: 0.7.6
    sha: 5d0bca838442ec211fa11de3a8b0e0e8f3a4522575b5c4c06ed722e005036f26
  - kind: registry
    name: num_enum_derive
    version: 0.7.6
    sha: 680998035259dcfcafe653688bf2aa6d3e2dc05e98be6ab46afb089dc84f1df8
  - kind: registry
    name: once_cell
    version: 1.21.4
    sha: 9f7c3e4beb33f85d45ae3e3a1792185706c8e16d043238c593331cc7cd313b50
  - kind: registry
    name: oorandom
    version: 11.1.5
    sha: d6790f58c7ff633d8771f42965289203411a5e5c68388703c06e14f24770b41e
  - kind: registry
    name: ordered-stream
    version: 0.2.0
    sha: 9aa2b01e1d916879f73a53d01d1d6cee68adbb31d6d9177a8cfce093cced1d50
  - kind: registry
    name: ouroboros
    version: 0.18.5
    sha: 1e0f050db9c44b97a94723127e6be766ac5c340c48f2c4bb3ffa11713744be59
  - kind: registry
    name: ouroboros_macro
    version: 0.18.5
    sha: 3c7028bdd3d43083f6d8d4d5187680d0d3560d54df4cc9d752005268b41e64d0
  - kind: registry
    name: page_size
    version: 0.6.0
    sha: 30d5b2194ed13191c1999ae0704b7839fb18384fa22e49b57eeaa97d79ce40da
  - kind: registry
    name: pango
    version: 0.22.8
    sha: 5d800d8d0de2ad5d0fb046f5344dbaba14a003cf3dd27cc21d85893d35ea316c
  - kind: registry
    name: pango-sys
    version: 0.22.0
    sha: bbd111a20ca90fedf03e09c59783c679c00900f1d8491cca5399f5e33609d5d6
  - kind: registry
    name: parking
    version: 2.2.1
    sha: f38d5652c16fde515bb1ecef450ab0f6a219d619a7274976324d5e377f7dceba
  - kind: registry
    name: paste
    version: 1.0.15
    sha: 57c0d7b74b563b49d38dae00a0c37d4d6de9b432382b2892f0574ddcae73fd0a
  - kind: registry
    name: pin-project-lite
    version: 0.2.17
    sha: a89322df9ebe1c1578d689c92318e070967d1042b512afbe49518723f4e6d5cd
  - kind: registry
    name: piper
    version: 0.2.5
    sha: c835479a4443ded371d6c535cbfd8d31ad92c5d23ae9770a61bc155e4992a3c1
  - kind: registry
    name: pkg-config
    version: 0.3.33
    sha: 19f132c84eca552bf34cab8ec81f1c1dcc229b811638f9d283dceabe58c5569e
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
    name: polling
    version: 3.11.0
    sha: 5d0e4f59085d47d8241c88ead0f274e8a0cb551f3625263c05eb8dd897c34218
  - kind: registry
    name: portable-atomic
    version: 1.14.0
    sha: 3d20d5497ef88037a52ff98267d066e7f11fcc5e99bbfbd58a42336193aacec3
  - kind: registry
    name: portable-atomic-util
    version: 0.2.7
    sha: c2a106d1259c23fac8e543272398ae0e3c0b8d33c88ed73d0cc71b0f1d902618
  - kind: registry
    name: prettyplease
    version: 0.2.37
    sha: 479ca8adacdd7ce8f1fb39ce9ecccbfe93a3f1344b3d0d97f20bc0196208f62b
  - kind: registry
    name: proc-macro-crate
    version: 3.5.0
    sha: e67ba7e9b2b56446f1d419b1d807906278ffa1a658a8a5d8a39dcb1f5a78614f
  - kind: registry
    name: proc-macro2
    version: 1.0.107
    sha: 985e7ec9bb745e6ce6535b544d84d6cd6f7ad8bd711c398938ae983b91a766d9
  - kind: registry
    name: proc-macro2-diagnostics
    version: 0.10.1
    sha: af066a9c399a26e020ada66a034357a868728e72cd426f3adcd35f80d88d88c8
  - kind: registry
    name: pulp
    version: 0.22.3
    sha: 046aa45b989642ec2e4717c8e72d677b13edd831a4d3b6cf37d9a3e54912496a
  - kind: registry
    name: pulp-wasm-simd-flag
    version: 0.1.1
    sha: 1d8f70e07b9c3962945a74e59ca1c511bba65b6419468acc217c457d93f3c740
  - kind: registry
    name: pxfm
    version: 0.1.30
    sha: d55d956fa96f5ec02be2e13af0e20391a5aa83d6a074e3ad368959d0fab299ea
  - kind: registry
    name: qoi
    version: 0.4.1
    sha: 7f6d64c71eb498fe9eae14ce4ec935c555749aef511cca85b5568910d6e48001
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
    version: 6.0.0
    sha: f8dcc9c7d52a811697d2151c701e0d08956f92b0e24136cf4cf27b57a6a0d9bf
  - kind: registry
    name: raw-cpuid
    version: 11.6.0
    sha: 498cd0dc59d73224351ee52a95fee0f1a617a2eae0e7d9d720cc622c73a54186
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
    name: reborrow
    version: 0.5.5
    sha: 03251193000f4bd3b042892be858ee50e8b3719f2b08e5833ac4353724632430
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
    name: rmp
    version: 0.8.15
    sha: 4ba8be72d372b2c9b35542551678538b562e7cf86c3315773cae48dfbfe7790c
  - kind: registry
    name: rmp-serde
    version: 1.3.1
    sha: 72f81bee8c8ef9b577d1681a70ebbc962c232461e397b22c208c43c04b67a155
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
    name: safe-transmute
    version: 0.11.3
    sha: 3944826ff8fa8093089aba3acb4ef44b9446a99a16f3bf4e74af3f77d340ab7d
  - kind: registry
    name: safe_arch
    version: 0.7.4
    sha: 96b02de82ddbe1b636e6170c21be622223aea188ef2e139be0a5b219ec215323
  - kind: registry
    name: same-file
    version: 1.0.6
    sha: 93fc1dc3aaa9bfed95e02e6eadabb4baf7e3078b0bd1b4d7b6b0b68378900502
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
    name: serde_repr
    version: 0.1.21
    sha: 8d3b1629de253c70a0508c3899572da79ca359fdab27c7920ff00406df418906
  - kind: registry
    name: serde_spanned
    version: 1.1.1
    sha: 6662b5879511e06e8999a8a235d848113e942c9124f211511b16466ee2995f26
  - kind: registry
    name: serde_yaml_ng
    version: 0.10.0
    sha: 7b4db627b98b36d4203a7b458cf3573730f2bb591b28871d916dfa9efabfd41f
  - kind: registry
    name: sharded-slab
    version: 0.1.7
    sha: f40ca3c46823713e0d4209592e8d6e826aa57e928f09752619fc696c499637f6
  - kind: registry
    name: shell-words
    version: 1.1.1
    sha: dc6fe69c597f9c37bfeeeeeb33da3530379845f10be461a66d16d03eca2ded77
  - kind: registry
    name: shlex
    version: 2.0.1
    sha: f8fadd59c855ef2080decdef8ff161eb6661b86933c9d82e5ba29dc602a55aba
  - kind: registry
    name: signal-hook-registry
    version: 1.4.8
    sha: c4db69cba1110affc0e9f7bcd48bbf87b3f4fc7c61fc9155afd4c469eb3d6c1b
  - kind: registry
    name: simba
    version: 0.9.1
    sha: c99284beb21666094ba2b75bbceda012e610f5479dfcc2d6e2426f53197ffd95
  - kind: registry
    name: simd-adler32
    version: 0.3.10
    sha: 3a219298ac11a56ea9a6d2120044824d6f01aeb034955e7af7bc16858527deea
  - kind: registry
    name: simple_logger
    version: 5.2.0
    sha: c7038d0e96661bf9ce647e1a6f6ef6d6f3663f66d9bf741abf14ba4876071c17
  - kind: registry
    name: slab
    version: 0.4.12
    sha: 0c790de23124f9ab44544d7ac05d60440adc586479ce501c1d6d7da3cd8c9cf5
  - kind: registry
    name: smallvec
    version: 1.15.2
    sha: 8ed6a63f02c8539c91a8685a86f4099661ba3da017932f6ebbea6de3f0fa7c90
  - kind: registry
    name: socket2
    version: 0.6.5
    sha: c3d1e2c7f27f8d4cb10542a02c49005dbd6e93095799d6f3be745fae9f8fedd4
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
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
    version: 3.0.3
    sha: 53e9bae58849f64dfa4f5d5ae372c8341f7305f82a3868709269343628b659a3
  - kind: registry
    name: system-deps
    version: 7.0.8
    sha: 396a35feb67335377e0251fcbc1092fc85c484bd4e3a7a54319399da127796e7
  - kind: registry
    name: target-features
    version: 0.1.6
    sha: c1bbb9f3c5c463a01705937a24fdabc5047929ac764b2d5b9cf681c1f5041ed5
  - kind: registry
    name: target-lexicon
    version: 0.13.5
    sha: adb6935a6f5c20170eeceb1a3835a49e12e19d792f6dd344ccc76a985ca5a6ca
  - kind: registry
    name: tempfile
    version: 3.27.0
    sha: 32497e9a4c7b38532efcdebeef879707aa9f794296a4f0244f6f69e9bc8574bd
  - kind: registry
    name: thiserror
    version: 2.0.19
    sha: 09a43598840e33d5b0331f38c5e30d13bb11c11210a4b58f0d9b18a5a5eefcd9
  - kind: registry
    name: thiserror-impl
    version: 2.0.19
    sha: 43cbfe0cf76104d42a574802844187e84a305e531ed54455f11fbde0f10541cd
  - kind: registry
    name: thread_local
    version: 1.1.10
    sha: 1ad99c4c6d32803332c548b1af0540b357b3f5fc0be8f6c6bfe8b2e6ae784070
  - kind: registry
    name: tiff
    version: 0.11.3
    sha: b63feaf3343d35b6ca4d50483f94843803b0f51634937cc2ec519fc32232bc52
  - kind: registry
    name: tinytemplate
    version: 1.2.1
    sha: be4d6b5f19ff7664e8c98d03e2139cb510db9b0a60b55f8e8709b689d939b6bc
  - kind: registry
    name: tokio
    version: 1.53.1
    sha: 202caea871b69668250d242070849eb495be178ed697a3e98aebce5bc81a0bed
  - kind: registry
    name: tokio-stream
    version: 0.1.19
    sha: a3d06f0b082ba57c26b79407372e57cf2a1e28124f78e9479fe80322cf53420b
  - kind: registry
    name: toml
    version: 1.1.4+spec-1.1.0
    sha: 3aace63f4bbcdfc2c965b059de67119c89c4017a70d633be6c104910f67056f5
  - kind: registry
    name: toml_datetime
    version: 1.1.1+spec-1.1.0
    sha: 3165f65f62e28e0115a00b2ebdd37eb6f3b641855f9d636d3cd4103767159ad7
  - kind: registry
    name: toml_edit
    version: 0.25.13+spec-1.1.0
    sha: 6975367e4d2ef766d86af01ffad14b622fecc8d4357a998fbc4deb6e9bacaf9b
  - kind: registry
    name: toml_parser
    version: 1.1.3+spec-1.1.0
    sha: 1d38ac1cf9b95face32296c0a3ede1fdc270627c9d9c02a7274dd6d960dc4d56
  - kind: registry
    name: toml_writer
    version: 1.1.2+spec-1.1.0
    sha: 7d56353a2a665ad0f41a421187180aab746c8c325620617ad883a99a1cbe66d2
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
    name: tracing-log
    version: 0.2.0
    sha: ee855f1f400bd0e5c02d150ae5de3840039a3f54b025156404e34c23c03f47c3
  - kind: registry
    name: tracing-subscriber
    version: 0.3.23
    sha: cb7f578e5945fb242538965c2d0b04418d38ec25c79d160cd279bf0731c8d319
  - kind: registry
    name: typenum
    version: 1.20.1
    sha: b6f5e870be6c3b371b77fe0ee0bafb859fa4964b4404c27de1d380043c4dda20
  - kind: registry
    name: uds_windows
    version: 1.2.1
    sha: f2f6fb2847f6742cd76af783a2a2c49e9375d0a111c7bef6f71cd9e738c72d6e
  - kind: registry
    name: unicode-ident
    version: 1.0.24
    sha: e6e4313cd5fcd3dad5cafa179702e2b244f760991f45397d14d4ebf38247da75
  - kind: registry
    name: unicode-width
    version: 0.2.2
    sha: b4ac048d71ede7ee76d585517add45da530660ef4390e49b098733c6e897f254
  - kind: registry
    name: unsafe-libyaml
    version: 0.2.11
    sha: 673aac59facbab8a9007c7f6108d11f63b603f7cabff99fabf650fea5c32b861
  - kind: registry
    name: uuid
    version: 1.24.0
    sha: bf3923a6f5c4c6382e0b653c4117f48d631ea17f38ed86e2a828e6f7412f5239
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
    name: walkdir
    version: 2.5.0
    sha: 29790946404f91d9c5d06f9874efddea1dc06c5efe94541a7d6863108e3a5e4b
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
    name: web-sys
    version: 0.3.103
    sha: 8622dcb61c0bcc9fffa6938bed81210af2da9a7e4a1a834b2e37a59b6dfb6141
  - kind: registry
    name: weezl
    version: 0.1.12
    sha: a28ac98ddc8b9274cb41bb4d9d4d5c425b6020c50c46f25559911905610b4a88
  - kind: registry
    name: wide
    version: 0.7.33
    sha: 0ce5da8ecb62bcd8ec8b7ea19f69a51275e91299be594ea5cc6ef7819e16cd03
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
    name: xml
    version: 1.3.0
    sha: 636f85e5ca6488e96401b61eb7de54f4e44755c988af0f52cf90230c312a1a89
  - kind: registry
    name: yansi
    version: 1.0.1
    sha: cfe53a6657fd280eaa890a3bc59152892ffa3e30101319d168b781ed6529b049
  - kind: registry
    name: yeslogic-fontconfig-sys
    version: 6.0.1
    sha: 1d8b8abf912b9a29ff112e1671c97c33636903d13a69712037190e6805af4f76
  - kind: registry
    name: zbus
    version: 5.18.0
    sha: fe18fb60dc696039e738717b76eaea21e7a4489bbb1885020b43c94236d7e98a
  - kind: registry
    name: zbus_macros
    version: 5.18.0
    sha: fe96480bed92df2b442a1a30df364e12d08eed03aeb061f2b8dc6afb2be91119
  - kind: registry
    name: zbus_names
    version: 4.3.4
    sha: d8bf88b4a3ff53e883001e0e0115b297a9d53c31b9c1edd2bfdd853e3428624e
  - kind: registry
    name: zerocopy
    version: 0.8.55
    sha: b5a105cd7b140f6eeec8acff2ea38135d3cab283ada58540f629fe51e46696eb
  - kind: registry
    name: zerocopy-derive
    version: 0.8.55
    sha: 0fe976fb70c78cd64cccfe3a6fc142244e8a77b70959b30faf9d0ac37ee228eb
  - kind: registry
    name: zmij
    version: 1.0.23
    sha: 29666d0abbfad1e3dc4dcf6144730dd3a3ab225bbbdac83319345b1b44ccfc1b
  - kind: registry
    name: zune-core
    version: 0.5.1
    sha: cb8a0807f7c01457d0379ba880ba6322660448ddebc890ce29bb64da71fb40f9
  - kind: registry
    name: zune-inflate
    version: 0.2.54
    sha: 73ab332fe2f6680068f3582b16a24f90ad7096d5d39b974d1c0aff0125116f02
  - kind: registry
    name: zune-jpeg
    version: 0.5.15
    sha: 27bc9d5b815bc103f142aa054f561d9187d191692ec7c2d1e2b4737f8dbd7296
  - kind: registry
    name: zvariant
    version: 5.13.1
    sha: bee2a0bcd2a907786a456fff45aaaaf54c9ba5f50b71ae9ec1a4edd200c94911
  - kind: registry
    name: zvariant_derive
    version: 5.13.1
    sha: 38a708216a18780796770bfe3f4739c7c83a3e8f789b755534bbbc06e4e23e12
  - kind: registry
    name: zvariant_utils
    version: 3.5.0
    sha: 90cb9383f9b45290407a1258b202d3f8f01db719eb60b4e4055c6375af4fc7c7
runtime-depends:
- freedesktop-sdk.bst:components/bubblewrap.bst

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/rust.bst

depends:
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
