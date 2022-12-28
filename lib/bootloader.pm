package bootloader;

use base Exporter;
use Exporter;

use strict;
use warnings;
use testapi qw(diag);

use testapi;

our @EXPORT = qw(
    bootloader_add_kernel_args
);

=head2 bootloader_add_kernel_args
  bootloader_add_kernel_args($args)
Wait for the bootloader menu to appear, and add $args to the kernel commandline
before continuing the boot process.
=cut
sub bootloader_add_kernel_args {
    my $bootloader_args = shift;

    assert_screen('gnome_iso_bootloader', timeout => 30);

    wait_screen_change { send_key('e') };

    send_key('end');
    diag("Add kernel args: $bootloader_args");
    type_string($bootloader_args);

    save_screenshot;

    send_key('ret');
}
