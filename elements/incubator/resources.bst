kind: meson

sources:
- kind: git_repo
  url: gnome:Incubator/resources.git
  track: main
  ref: 51.beta-7-g6a4c329e9b4748d02b5d87ac53422acaac661b20
- kind: cargo2
  ref:
  - kind: registry
    name: aho-corasick
    version: 1.1.4
    sha: ddd31a130427c27518df266943a5308ed92d4b226cc639f5a8f1002816174301
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
    name: anyhow
    version: 1.0.104
    sha: 330a5ed07fa54e4702c9d6c4174f74427fc0ef6e214bbd677ae50a5099946470
  - kind: registry
    name: async-channel
    version: 2.5.0
    sha: 924ed96dd52d1b75e9c1a3e6275715fd320f5f9439fb5a4a11fa51f4221158d2
  - kind: registry
    name: autocfg
    version: 1.5.1
    sha: f2032f911046de80f0a198e0901378627c33f59ea0ac00e363d481118bd70a53
  - kind: registry
    name: bitflags
    version: 2.13.1
    sha: b588b76d00fde79687d7646a9b5bdf3cc0f655e0bbd080335a95d7e96f3587da
  - kind: registry
    name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - kind: registry
    name: bumpalo
    version: 3.20.3
    sha: 72f5acc6cb2ba439de613abc23857ec3d78374d8ed5ac84e9d11336e87da8649
  - kind: registry
    name: byteorder
    version: 1.5.0
    sha: 1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b
  - kind: registry
    name: cairo-rs
    version: 0.22.0
    sha: 5cc8d9aa793480744cd9a0524fef1a2e197d9eaa0f739cde19d16aba530dcb95
  - kind: registry
    name: cairo-sys-rs
    version: 0.22.0
    sha: f8b4985713047f5faee02b8db6a6ef32bbb50269ff53c1aee716d1d195b76d54
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
    name: clap
    version: 4.6.4
    sha: d91e0c145792ef73a6ad36d27c75ac09f1832222a3c209689d90f534685ee5b7
  - kind: registry
    name: clap_builder
    version: 4.6.2
    sha: f09628afdcc538b57f3c6341e9c8e9970f18e4a481690a64974d7023bd33548b
  - kind: registry
    name: clap_derive
    version: 4.6.4
    sha: d012d2b9d65aca7f18f4d9878a045bc17899bba951561ba5ec3c2ba1eed9a061
  - kind: registry
    name: clap_lex
    version: 1.1.0
    sha: c8d4a3bb8b1e0c1050499d1815f5ab16d04f0959b233085fb31653fbfc9d98f9
  - kind: registry
    name: colorchoice
    version: 1.0.5
    sha: 1d07550c9036bf2ae0c684c4297d503f838287c83c53686d05370d0e139ae570
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: const-random
    version: 0.1.18
    sha: 87e00182fe74b066627d63b85fd550ac2998d4b0bd86bfed477a0ae4c7c71359
  - kind: registry
    name: const-random-macro
    version: 0.1.16
    sha: f9d839f2a20b0aee515dc581a6172f2321f96cab76c1a38a4c584a194955390e
  - kind: registry
    name: convert_case
    version: 0.11.0
    sha: affbf0190ed2caf063e3def54ff444b449371d55c58e513a95ab98eca50adb49
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
    version: 0.20.11
    sha: fc7f46116c46ff9ab3eb1597a45688b6715c6e628b5c133e288e709a29bcb4ee
  - kind: registry
    name: darling_core
    version: 0.20.11
    sha: 0d00b9596d185e565c2207a0b01f8bd1a135483d02d9b7b0a54b11da8d53412e
  - kind: registry
    name: darling_macro
    version: 0.20.11
    sha: fc34b93ccb385b40dc71c6fceac4b2ad23662c7eeb248cf10d529b7e055b6ead
  - kind: registry
    name: diff
    version: 0.1.13
    sha: 56254986775e3233ffa9c4d7d3faaf6d36a2c09d30b20687e9f88bc8bafc16c8
  - kind: registry
    name: dlv-list
    version: 0.5.2
    sha: 442039f5147480ba31067cb00ada1adae6892028e40e45fc5de7b7df6dcc1b5f
  - kind: registry
    name: either
    version: 1.17.0
    sha: 9e5e8f6c15a24b9a3ee5efec809ccd006d3b30e8b3bb63c39af737c7f87daa1d
  - kind: registry
    name: env_logger
    version: 0.10.2
    sha: 4cd405aab171cb85d6735e5c8d9db038c17d3ca007a4d2c25f337935c3d90580
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
  - kind: registry
    name: errno
    version: 0.2.8
    sha: f639046355ee4f37944e44f60642c6f3a7efa3cf6b78c78a0d989a8ce6c396a1
  - kind: registry
    name: errno-dragonfly
    version: 0.1.2
    sha: aa68f1b12764fab894d2755d2518754e71b4fd80ecfb822714a1206c2aab39bf
  - kind: registry
    name: event-listener
    version: 5.4.2
    sha: 5a23add41df1562121a9393cb065eab5146a1242410f23a644851e90cfd669d2
  - kind: registry
    name: event-listener-strategy
    version: 0.5.4
    sha: 8be9f3dfaaffdae2972880079a491a1a8bb7cbed0b8dd7a347f668b4150a3b93
  - kind: registry
    name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - kind: registry
    name: find-msvc-tools
    version: 0.1.9
    sha: 5baebc0774151f905a1a2cc41989300b1e6fbb29aff0ceffa1064fdd3088d582
  - kind: registry
    name: fnv
    version: 1.0.7
    sha: 3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1
  - kind: registry
    name: futures
    version: 0.3.33
    sha: a88cf1f829d945f548cf8fec32c61b1f202b6d93b45848602fc02af4b12ad218
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
    name: getrandom
    version: 0.2.17
    sha: ff2abc00be7fca6ebc474524697ae276ad847ad0a6b3faa4bcb027e9a4614ad0
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
    name: glob
    version: 0.3.4
    sha: e4eba85ea1d0a966a983acd07deee566e67395d2d96b6fb39e62b5a833f1eb0b
  - kind: registry
    name: gobject-sys
    version: 0.22.6
    sha: 22a861859b887a79cf461359c192c97a57d8fb0229dd291232e57aa11f6fa72c
  - kind: registry
    name: graphene-rs
    version: 0.22.8
    sha: eb856b9c558971c3f13ab692358926da710b046932a4e087aedcc35b040d7dff
  - kind: registry
    name: graphene-sys
    version: 0.22.8
    sha: 5c7ffdfde88f3570d3705e0d8a2433e036d387a1f2930bbf47eafcb5f569fd04
  - kind: registry
    name: gsk4
    version: 0.11.4
    sha: b867be1c5f14dcb8f552c0eff6e9a9b1da5f8b43943e8efc3a63c889d84952ff
  - kind: registry
    name: gsk4-sys
    version: 0.11.4
    sha: 5b7c7eb2e681ee896646cfb8872b431f24d09f53ba9283289d9b10caa6707088
  - kind: registry
    name: gtk4
    version: 0.11.4
    sha: 98a0a0466484f64b07b5b8184d43fa46be78eb0b8e04ae4e179af31d770b76d9
  - kind: registry
    name: gtk4-macros
    version: 0.11.4
    sha: 5ac7179400a36a04de039c24206bb841c5596992b907b43b23ee8d5bdc40d00e
  - kind: registry
    name: gtk4-sys
    version: 0.11.4
    sha: 82b8f954786af0b1984425c4446b77f5ff6594346181316be3f850caab1c6f01
  - kind: registry
    name: hashbrown
    version: 0.14.5
    sha: e5274423e17b7c9fc20b6e7e208532f9b19825d82dfd615708b70edd83df41f1
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
    name: humantime
    version: 2.4.0
    sha: 15cdd26707701c53297e2fa6afb323d55fbc1d0810c3aec078ae3ef0424c3c15
  - kind: registry
    name: ident_case
    version: 1.0.1
    sha: b9e0384b61958566e926dc50660321d12159025e767c18e043daf26b70104c39
  - kind: registry
    name: indexmap
    version: 2.14.0
    sha: d466e9454f08e4a911e14806c24e16fba1b4c121d1ea474396f396069cf949d9
  - kind: registry
    name: is-terminal
    version: 0.4.17
    sha: 3640c1c38b8e4e43584d8df18be5fc6b0aa314ce6ebf51b53313d4306cca8e46
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
    name: kernel32-sys
    version: 0.2.2
    sha: 7507624b29483431c0ba2d82aece8ca6cdba9382bff4ddd0f7490560c056098d
  - kind: registry
    name: kinded
    version: 0.5.0
    sha: 53c48b3aa70f02a317f180f7d4e0834bbd2ffa293e352a132bb2ac9351736635
  - kind: registry
    name: kinded_macros
    version: 0.5.0
    sha: feeb717349480c3d8125f84afdd78e9d7128004d8e2a561c35b3bbd76363d085
  - kind: registry
    name: lazy-regex
    version: 3.6.1
    sha: 4994ba703f78b083e2f7946dac9251abd83fd43a0365f030e99b69be5b4b9ef9
  - kind: registry
    name: lazy-regex-proc_macros
    version: 3.6.1
    sha: fd97232314824e6dbef1918a871bb93f51070455e3715bf26e19a6d01aa977a0
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: libadwaita
    version: 0.9.2
    sha: 85b9900e67182a4b5b1f157b448d94f0715c8b9770cce21cf000801917f53bfa
  - kind: registry
    name: libadwaita-sys
    version: 0.9.2
    sha: 28d3c27642b389852aa99341bd4a4c19ec6f8a2b63ebdd7f5ba1952198079ccd
  - kind: registry
    name: libc
    version: 0.2.189
    sha: 3eaf3ede3fee6db1a4c2ee091bf8a8b4dccdc6d17f656fb07896ee72867612f2
  - kind: registry
    name: libloading
    version: 0.8.9
    sha: d7c4b02199fee7c5d21a5ae7d8cfa79a6ef5bb2fc834d6e9058e89c825efdc55
  - kind: registry
    name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - kind: registry
    name: log
    version: 0.4.33
    sha: 0ceec5bc11778974d1bcb055b18002eba7f4b3518b6a0081b3af5f21666da9ad
  - kind: registry
    name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - kind: registry
    name: memchr
    version: 2.8.3
    sha: cf8baf1c55e62ffcace7a9f06f4bd9cd3f0c4beb022d3b367256b91b87513d98
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: neli
    version: 0.6.5
    sha: 93062a0dce6da2517ea35f301dfc88184ce18d3601ec786a727a87bf535deca9
  - kind: registry
    name: neli-proc-macros
    version: 0.1.4
    sha: 0c8034b7fbb6f9455b2a96c19e6edf8dc9fc34c70449938d8ee3b4df363f61fe
  - kind: registry
    name: neli-wifi
    version: 0.6.1
    sha: 7a72cd90a5d1ab54ed62cfe032972cb78303cfffd7d82c87c5da889a353fc451
  - kind: registry
    name: nix
    version: 0.31.3
    sha: cf20d2fde8ff38632c426f1165ed7436270b44f199fc55284c38276f9db47c3d
  - kind: registry
    name: num-traits
    version: 0.2.19
    sha: 071dfc062690e90b734c0b2273ce72ad0ffa95f0c74596bc250dcfd960262841
  - kind: registry
    name: num_cpus
    version: 1.17.0
    sha: 91df4bbde75afed763b708b7eee1e8e7651e02d97f6d5dd763e89367e957b23b
  - kind: registry
    name: nutype
    version: 0.7.0
    sha: e3ae01f500e59a27e8c868297e15e268105d30ae06dee1ca194e025be29dee2a
  - kind: registry
    name: nutype_macros
    version: 0.7.0
    sha: 48a6a6ddc63e6d0cd6b77af9aabae24601b39ad543d29bff88c4761c1fc34700
  - kind: registry
    name: nvml-wrapper
    version: 0.12.1
    sha: f049ae562349fefb8e837eb15443da1e7c6dcbd8a11f52a228f92220c2e5c85e
  - kind: registry
    name: nvml-wrapper-sys
    version: 0.9.1
    sha: 6b4d594420fcda43b1c2c4bd44d48974aa3c7a9ab2cbf10dc18e35265767bf0b
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
    name: ordered-multimap
    version: 0.7.3
    sha: 49203cdcae0030493bad186b28da2fa25645fa276a51b6fec8010d281e02ef79
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
    name: pastey
    version: 0.2.3
    sha: 2ee67f1008b1ba2321834326597b8e186293b049a023cdef258527550b9935b4
  - kind: registry
    name: path-dedot
    version: 4.0.1
    sha: 03351d0f1c066c114015408dc6a3e101f080fc03ef9d8d799aa58ec760cac5a6
  - kind: registry
    name: pin-project-lite
    version: 0.2.17
    sha: a89322df9ebe1c1578d689c92318e070967d1042b512afbe49518723f4e6d5cd
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
    name: plotters-cairo
    version: 0.9.0
    sha: a90a7d13ce5819375c9cd18c5fe09ca7c85c6303c2aace884c7f95b3d22b0ba3
  - kind: registry
    name: pretty_assertions
    version: 1.4.1
    sha: 3ae130e2f271fbc2ac3a40fb1d07180839cdbbe443c7a27e1e3c13c5cac0116d
  - kind: registry
    name: pretty_env_logger
    version: 0.5.0
    sha: 865724d4dbe39d9f3dd3b52b88d859d66bcb2d6a0acfd5ea68a65fb66d4bdc1c
  - kind: registry
    name: proc-macro-crate
    version: 3.5.0
    sha: e67ba7e9b2b56446f1d419b1d807906278ffa1a658a8a5d8a39dcb1f5a78614f
  - kind: registry
    name: proc-macro2
    version: 1.0.107
    sha: 985e7ec9bb745e6ce6535b544d84d6cd6f7ad8bd711c398938ae983b91a766d9
  - kind: registry
    name: quote
    version: 1.0.47
    sha: 1fbf4db142a473a8d80c26bbf18454ed458bf8d26c8219c331daecfdbd079001
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
    name: ron
    version: 0.12.2
    sha: 81116b9531d61eabc41aeb228e4b6b2435bcca3233b98cf3b3077d4e6e9debb3
  - kind: registry
    name: rust-ini
    version: 0.21.3
    sha: 796e8d2b6696392a43bea58116b667fb4c29727dc5abd27d6acf338bb4f688c7
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: rustversion
    version: 1.0.23
    sha: cf54715a573b99ac80df0bc206da022bcd442c974952c7b9720069370852e21f
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
    name: shlex
    version: 2.0.1
    sha: f8fadd59c855ef2080decdef8ff161eb6661b86933c9d82e5ba29dc602a55aba
  - kind: registry
    name: slab
    version: 0.4.12
    sha: 0c790de23124f9ab44544d7ac05d60440adc586479ce501c1d6d7da3cd8c9cf5
  - kind: registry
    name: smallvec
    version: 1.15.2
    sha: 8ed6a63f02c8539c91a8685a86f4099661ba3da017932f6ebbea6de3f0fa7c90
  - kind: registry
    name: soup3
    version: 0.9.0
    sha: 92d38b59ff6d302538efd337e15d04d61c5b909ec223c60ae4061d74605a962a
  - kind: registry
    name: soup3-sys
    version: 0.9.0
    sha: 79d5d25225bb06f83b78ff8cc35973b56d45fcdd21af6ed6d2bbd67f5a6f9bea
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
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
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - kind: registry
    name: syn
    version: 2.0.119
    sha: 872831b642d1a07999a962a351ed35b955ea2cfc8f3862091e2a240a84f17297
  - kind: registry
    name: syn
    version: 3.0.3
    sha: 53e9bae58849f64dfa4f5d5ae372c8341f7305f82a3868709269343628b659a3
  - kind: registry
    name: sysconf
    version: 0.3.4
    sha: 59e93f5d45535f49b6a05ef7ac2f0f795d28de494cf53a512751602c9849bea3
  - kind: registry
    name: system-deps
    version: 7.0.8
    sha: 396a35feb67335377e0251fcbc1092fc85c484bd4e3a7a54319399da127796e7
  - kind: registry
    name: target-lexicon
    version: 0.13.5
    sha: adb6935a6f5c20170eeceb1a3835a49e12e19d792f6dd344ccc76a985ca5a6ca
  - kind: registry
    name: temp-dir
    version: 0.1.16
    sha: 83176759e9416cf81ee66cb6508dbfe9c96f20b8b56265a39917551c23c70964
  - kind: registry
    name: termcolor
    version: 1.4.1
    sha: 06794f8f6c5c898b3275aebefa6b8a1cb24cd2c6c79397ab15774837a0bc5755
  - kind: registry
    name: thiserror
    version: 1.0.69
    sha: b6aaf5339b578ea85b50e080feb250a3e8ae8cfcdff9a461c9ec2904bc923f52
  - kind: registry
    name: thiserror
    version: 2.0.19
    sha: 09a43598840e33d5b0331f38c5e30d13bb11c11210a4b58f0d9b18a5a5eefcd9
  - kind: registry
    name: thiserror-impl
    version: 1.0.69
    sha: 4fee6c4efc90059e10f81e6d42c60a18f76588c3d74cb83a0b242a2b6c7504c1
  - kind: registry
    name: thiserror-impl
    version: 2.0.19
    sha: 43cbfe0cf76104d42a574802844187e84a305e531ed54455f11fbde0f10541cd
  - kind: registry
    name: tiny-keccak
    version: 2.0.2
    sha: 2c9d3793400a45f954c52e73d068316d76b6f4e36977e3fcebb13a2721e80237
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
    name: typeid
    version: 1.0.3
    sha: bc7d623258602320d5c55d1bc22793b57daff0ec7efc270ea7d55ce1d5f5471c
  - kind: registry
    name: unescape
    version: 0.1.0
    sha: ccb97dac3243214f8d8507998906ca3e2e0b900bf9bf4870477f125b82e68f6e
  - kind: registry
    name: unicode-ident
    version: 1.0.24
    sha: e6e4313cd5fcd3dad5cafa179702e2b244f760991f45397d14d4ebf38247da75
  - kind: registry
    name: unicode-segmentation
    version: 1.13.3
    sha: c6f5d3c3b1bf09027a88a6bc961fc00497d651009560b5463668dc81b0fa87a8
  - kind: registry
    name: urlencoding
    version: 2.1.3
    sha: daf8dba3b7eb870caf1ddeed7bc9d2a049f3cfdfae7cb521b087cc33ae4c49da
  - kind: registry
    name: utf8parse
    version: 0.2.2
    sha: 06abde3611657adf66d383f00b093d7faecc7fa57071cce2578660c9f1010821
  - kind: registry
    name: uzers
    version: 0.12.2
    sha: 0b8275fb1afee25b4111d2dc8b5c505dbbc4afd0b990cb96deb2d88bff8be18d
  - kind: registry
    name: version-compare
    version: 0.2.1
    sha: 03c2856837ef78f57382f06b2b8563a2f512f7185d732608fd9176cb3b8edf0e
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
    name: winapi
    version: 0.2.8
    sha: 167dc9d6949a9b857f3451275e911c3f44255842c1f7a76f33c55103a909087a
  - kind: registry
    name: winapi
    version: 0.3.9
    sha: 5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419
  - kind: registry
    name: winapi-build
    version: 0.1.1
    sha: 2d315eee3b34aca4797b2da6b13ed88266e6d612562a0c46390af8299fc699bc
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
    version: 1.0.4
    sha: 23b97319f7b8343df12cc98938e5c3eb436064524c8d2b4e30a1d3a36eecdf81
  - kind: registry
    name: wrapcenum-derive
    version: 0.4.1
    sha: a76ff259533532054cfbaefb115c613203c73707017459206380f03b3b3f266e
  - kind: registry
    name: yansi
    version: 1.0.1
    sha: cfe53a6657fd280eaa890a3bc59152892ffa3e30101319d168b781ed6529b049
  - kind: registry
    name: zmij
    version: 1.0.23
    sha: 29666d0abbfad1e3dc4dcf6144730dd3a3ab225bbbdac83319345b1b44ccfc1b
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/rust.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

