use base 'basetest';
use strict;
use testapi;

sub run {
    my $self = shift;

    # Show coredumpctl output.
    #
    # Note that `coredumpctl` exits with an error exit code if there
    # are no core dumps
    select_console('user-virtio-terminal');
    assert_script_run('coredumpctl || true');
    select_console('x11');
}

1;
