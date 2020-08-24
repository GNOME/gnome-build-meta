project('gnome-build-meta-os-release')

branch_name = get_option('branch')
if branch_name == 'master'
  branch_name = 'Nightly'
endif

conf_data = configuration_data({
  'SDK_BRANCH': branch_name
})

if get_option('mode') == 'bootable'
    conf_data.set('ISSUE_NAME', 'GNOME OS')
    conf_data.set('VARIANT_ID', get_option('variant'))
    if get_option('variant') == 'devel'
      conf_data.set('VARIANT', 'Development')
      conf_data.set('FULL_NAME', 'GNOME OS Development')
    elif get_option('variant') == 'user'
      conf_data.set('VARIANT', 'User')
      conf_data.set('FULL_NAME', 'GNOME OS')
    endif

    configure_file(
        input : 'os-release.bootable.in',
        output : 'os-release',
        configuration : conf_data,
        install_dir : get_option('prefix') / 'lib'
    )
else
    conf_data.set('ISSUE_NAME', 'GNOME Platform')
    configure_file(
        input : 'org.gnome.Platform.appdata.xml.in',
        output : 'org.gnome.Platform.appdata.xml',
        configuration : conf_data,
        install_dir : get_option('datadir') / 'appdata'
    )
    configure_file(
        input : 'org.gnome.Sdk.appdata.xml.in',
        output : 'org.gnome.Sdk.appdata.xml',
        configuration : conf_data,
        install_dir : get_option('datadir') / 'appdata'
    )

    configure_file(
        input : 'os-release.flatpak.in',
        output : 'os-release',
        configuration : conf_data,
        install_dir : get_option('prefix') / 'lib'
    )

    meson.add_install_script('compose.sh', 'org.gnome.Platform')
    meson.add_install_script('compose.sh', 'org.gnome.Sdk')
endif

configure_file(
   input : 'issue.net.in',
    output : 'issue.net',
    configuration : conf_data,
    install_dir : get_option('sysconfdir')
)

configure_file(
   input : 'issue.in',
    output : 'issue',
    configuration : conf_data,
    install_dir : get_option('sysconfdir')
)

meson.add_install_script('os-release-symlink.sh', get_option('sysconfdir'))
