# Based on https://github.com/os-autoinst/os-autoinst-distri-opensuse/blob/master/lib/susedistribution.pm

package gnomeosdistribution;
use base 'distribution';
use strict;
use warnings;
use serial_terminal ();
use testapi qw(diag);

=head2 init

Initialize the GNOME OS distribution-specific helpers.
=cut

sub init {
    my ($self) = @_;

    $self->SUPER::init();

    $self->add_console('x11', 'tty-console', {tty => 2});
    $self->add_console('gdm', 'tty-console', {tty => 1});
    $self->add_console('user-virtio-terminal', 'virtio-terminal', {});
}

=head2 activate_console
  activate_console($console)
Callback whenever a console is selected for the first time. Accepts arguments
provided to select_console().
=cut

sub activate_console {
    my ($self, $console, %args) = @_;

    if ($console eq 'user-virtio-terminal') {
        my $user = $testapi::username;
        diag "activate_console, console: $console, user: $user";

        $self->{serial_term_prompt} = $user eq 'root' ? '# ' : '> ';
        serial_terminal::login($user, $self->{serial_term_prompt});
    } else {
        diag 'activate_console called with unknown type, no action';
    }
}

1;
