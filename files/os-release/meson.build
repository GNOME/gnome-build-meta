project('gnome-build-meta-os-release')

branch_name = get_option('branch')
if branch_name == 'master'
  branch_name = 'Nightly'
endif

vcs_tag = run_command('git', 'rev-parse', '--short', '@', check: false).stdout().strip()

conf_data = configuration_data({
  'SDK_BRANCH': branch_name
})

if get_option('mode') == 'sysupdate'
    conf_data.set('ISSUE_NAME', 'GNOME OS')
    conf_data.set('VARIANT_ID', get_option('variant'))
    conf_data.set('IMAGE_VERSION', get_option('image-version'))
    if get_option('variant') == 'devel'
      conf_data.set('VARIANT', 'Development')
      conf_data.set('FULL_NAME', 'GNOME OS Development')
    elif get_option('variant') == 'user'
      conf_data.set('VARIANT', 'User')
      conf_data.set('FULL_NAME', 'GNOME OS')
    endif

    configure_file(
        input : 'os-release.sysupdate.in',
        output : 'os-release',
        configuration : conf_data,
        install_dir : get_option('prefix') / 'lib'
    )
elif get_option('mode') == 'oci'
    conf_data.set('ISSUE_NAME', 'GNOME OS')
    conf_data.set('FULL_NAME', 'GNOME OS')
    conf_data.set('IMAGE_VERSION', get_option('image-version'))
    configure_file(
        input : 'os-release.oci.in',
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
        install_dir : get_option('datadir') / 'metainfo'
    )
    configure_file(
        input : 'org.gnome.Sdk.appdata.xml.in',
        output : 'org.gnome.Sdk.appdata.xml',
        configuration : conf_data,
        install_dir : get_option('datadir') / 'metainfo'
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
