use base 'basetest';
use strict;
use testapi;

sub run {
    my $self = shift;

    # Show coredumpctl output
    select_console('user-virtio-terminal');
    assert_script_run('coredumpctl');
    select_console('x11');
}

1;
