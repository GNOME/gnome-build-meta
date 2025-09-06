# GNOME OS openQA tests
#
# Based on SUSE's openQA tests
#
# See: https://github.com/os-autoinst/os-autoinst-distri-opensuse/blob/master/lib/serial_terminal.pm
#
# Copyright 2016-2019 SUSE LLC
# SPDX-License-Identifier: FSFAP
package serial_terminal;
use 5.018;
use warnings;
use testapi;
use autotest;
use base 'Exporter';
use Exporter;
use Mojo::Util qw(b64_encode b64_decode sha1_sum trim);
use Mojo::File 'path';
use File::Basename;
use File::Temp 'tempfile';

BEGIN {
    our @EXPORT = qw(
      get_login_message
      login
      set_serial_prompt
      serial_term_prompt
    );
}

our $serial_term_prompt;

=head2 get_login_message

   get_login_message();

Get login message printed by OS at the end of the boot.
Suitable for testing whether boot has been finished:

wait_serial(get_login_message(), 300);
=cut

sub get_login_message {
    return qr/'GNOME OS Nightly.*/;
}

=head2 set_serial_prompt

   set_serial_prompt($user);

Set serial terminal prompt to given string.

=cut

sub set_serial_prompt {
    $serial_term_prompt = shift // '';

    die "Invalid prompt string '$serial_term_prompt'"
      unless $serial_term_prompt =~ s/\s*$//r;
    enter_cmd(qq/PS1="$serial_term_prompt"/);
    wait_serial(qr/PS1="$serial_term_prompt"/);
}

=head2 login

   login($user);

Enters root's name and password to login. Also sets the prompt to something static without ANSI
escape sequences (i.e. a single #) and changes the terminal width.

=cut

sub login {
    die 'Login expects two arguments' unless @_ == 2;
    my $user = shift;
    my $prompt = shift;
    my $escseq = qr/(\e [\(\[] [\d\w]{1,2})/x;

    # Eat stale buffer contents, otherwise the code below may get confused
    # after reboot and start typing the username before the console is actually
    # ready to accept it
    wait_serial(qr/login:\s*$/i, timeout => 3, quiet => 1);
    # newline nudges the guest to display the login prompt, if this behaviour
    # changes then remove it
    send_key 'ret';
    die 'Failed to wait for login prompt' unless wait_serial(qr/login:\s*$/i);
    enter_cmd("$user");

    my $re = qr/$user/i;
    if (!wait_serial($re, timeout => 3)) {
        record_info('RELOGIN', 'Need to retry login to workaround virtio console race', result => 'softfail');
        enter_cmd("$user");
        die 'Failed to wait for password prompt' unless wait_serial($re, timeout => 3);
    }

    if (length $testapi::password) {
        die 'Failed to wait for password prompt' unless wait_serial(qr/Password:\s*$/i, timeout => 30);
        type_password;
        send_key 'ret';
    }

    die 'Failed to confirm that login was successful' unless wait_serial(qr/$escseq* \[\w+\@\w+\s~\]\$ $escseq* \s*$/x);

    # Some (older) versions of bash don't take changes to the terminal during runtime into account. Re-exec it.
    enter_cmd('export TERM=dumb; stty cols 2048; exec $SHELL');
    die 'Failed to confirm that shell re-exec was successful' unless wait_serial(qr/$escseq* \[\w+\@\w+\s~\]\$ $escseq* \s*$/x);
    set_serial_prompt($prompt);
    # TODO: Send 'tput rmam' instead/also
    assert_script_run('export TERM=dumb');
    assert_script_run('echo Logged into $(tty)', timeout => 30, result_title => 'vconsole_login');
}

sub serial_term_prompt {
    return $serial_term_prompt;
}

1;
