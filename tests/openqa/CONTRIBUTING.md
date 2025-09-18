# Contributing to the end-to-end tests for GNOME OS

These tests are a part of open, collaborative effort to help the GNOME
project release high quality software.

The project depends entirely on the partipation of people like you to help
maintain and extend the tests. Thank you for considering contributing!

For background info about this project, see the [README.md](README.md).

## How can I contribute?

There are two main ways you can help.

  1. Extend the test suite, adding new tests where we don't yet have them.
  2. Check status of the existing tests and investigate any test failures.

This guide contains tutorials for both of these. Read on to find
out more.

## System requirements

Your computer must meet the following requirements in order to run the end-to-end
tests:

  * Modern Linux-based OS such as Fedora or Ubuntu
  * At least 20GB of disk space free
  * At least 4GB of RAM free
  * Support for x86_64 hardware virtualization. See [VIRTUALIZATION.md](./VIRTUALIZATION.md)
    for more details on that.

Additionally, you'll need to download the test media which are around 10GB in
size. 

If you don't want to develop the tests, and you only want to check the status
of the tests using the openQA web UI, then you can use any computer that has
a modern web browser.

## How to get in touch

If you're thinking of extending the test suite, chat to the relevant
teams to make sure they'll find it useful. The best place to do this is
the GNOME Matrix instance.

The team who maintain GNOME OS are in the [#gnome-os
channel](https://matrix.to/#/#gnome-os:gnome.org), this is the first place to
ask about the openQA tests.

If you're considering adding test coverage for a specific module, look
how to contact the appropriate module team as they may have their own
channel. The README.md file for the module should have contact details.

You can also post questions on [GNOME's Discourse instance](https://discourse.gnome.org/).

## Running the tests locally

It's possible to work with the tests by pushing your changes to Gitlab
and testing in CI. However you can get much quicker feedback on your
changes by testing locally.

See the [README.md](README.md) file for instructions on how to run the tests locally, and try to get that working before you continue with this guide.

Running the tests locally requires hardware virtualization, known in Linux as [KVM](https://wiki.archlinux.org/title/KVM). This must be available on your machine and inside a Podman / Docker containers that you run.. The following error from will appear in the isotovideo log file if KVM is not working:

    !!! : qemu-system-x86_64: CPU model 'host' requires KVM or HVF

See [VIRTUALIZATION.md](./VIRTUALIZATION.md) for more details and a troubleshooting guide. 

## Tutorial: Extend the test suite

This is a short tutorial to show how to extend the testsuite.

You should start by planning what you want your new test to do. Think in
terms of the actions a user of the system would take, such as:

  * pressing keys and typing on the keyboard
  * moving and clicking the mouse, 
  * performing gestures on a touchscreen
 
Check the existing tests and see if you can extend an existing test, and if
that's not possible add a new one.

## Adding a test

An openQA test is a Perl module that follows a specific structure. See
[tests/gnome_welcome.pm](tests/gnome_welcome.pm) and [tests/app_nautilus.pm](tests/app_nautilus.pm) for examples.

To add a new test:

1. Copy an existing test to a new file in `tests/`
2. Remove the existing steps in the `run` subroutine

Each test belongs to one or more testsuites. To add a test module
to a testsuite, edit the toplevel script `main.pm`, and find the
`if $(testsuite eq "testsuite_name")` statement for that testsuite. In
the corresponding block, add a call to `autotest::loadtest` for your
new test, for example:

    autotest::loadtest("tests/my_new_test.pm");

You can run the new test locally to check everything worked. An
empty test should always pass, so if you see errors here, go back and check you
followed the steps correctly.

If using the ssam_openqa tool, note that you can use the `--testsuites` option
to run only the testsuites that you've changed.

## Adding steps to a test

An openQA test is a series of steps that follow this pattern:

  1. Trigger a change in the system under test
  2. Assert that the expected change occurred.

These are some common test API functions that trigger changes:

  * `mouse_click()`, `mouse_set()`, `send_key()`, `type_string()`

Asserting what happened is usually done by comparing screenshots. This is done
with `assert_screen()`, which you call with a *needle tag* and an optional
timeout. This function periodically checks the display of the system under test
with all needles that have that tag, and if any match then it continues. If nothing
matches within the timeout then the test fails.

There is also a variant called `assert_and_click()` which
does two things: first asserting a change occured, then triggering a new
change via a mouse click on a target specified in the needle that matched.

You can change and assert state by running arbitrary shell commands in the
system, this is out of scope for the current tutorial.

When adding new tests, you will not have needles available yet. To
solve this, openQA provides a "pause on needle mismatch" option, which allows
you to run the test suite until the machine is in the correct state and then
capture a screenshot.

Here's an example of how you might add a new test step for a keyboard shortcut
in GNOME Shell, assuming the tests have already booted the machine:

    /* Existing test code here */

    send_key('magic_key')
    assert_screen('magic_key_pressed');

There aren't yet any needles with the tag `magic_key_pressed`, so the test
will fail during the `assert_screen` call. Whatever is on the screen will be 
saved though, into the output directory.

If you run the tests with `ssam_openqa`, you specify the output directory on
the commandline. You can find the path of the saved screenshot with this
pattern, where NNN is the highest number you see.

    ${output_directory} / ${testsuite_name} / testresults / ${test_name}-${NNN}.png

If you push your changes in a branch to Gitlab and run the tests there, you
can see the screenshot in the openQA web UI.

## Adding a needle

A [needle](http://open.qa/docs/#_needle) consists of a screenshot, with some openQA-specific metadata in JSON format. All needles for the GNOME OS tests live in [openqa-needles.git](https://gitlab.gnome.org/GNOME/openqa-needles).

If you followed the step above, you already have a screenshot, and you should have chosen a *needle tag* which describes what is being matched. Look at the openqa-needles.git repo for examples.

First, rename the screenshot so that the filename matches the needle tag. If the tag is `gnome_desktop` your screenshot should be called `gnome_desktop.png`. (Later versions of the needle will have a date appended to the tag, but the initial version does not.)

Second, create a JSON file, also based on the tag, for example `gnome_desktop.json`. Start by copying this basic metadata which matches the whole screen with an OpenCV match threshold of 96%.

```
{
   "area" : [
      {
         "xpos" : 0,
         "ypos" : 0,
         "width" : 1024,
         "height" : 768,
         "type" : "match",
         "match" : 96
      }
   ],
   "tags" : [
      "gnome_desktop",
   ]
}
```

Replace the `gnome_desktop` tag with the needle tag you are using.

Now we will modify the match areas. There are two approaches to making needles: maximal and minimal. The maximal approach is to match as much as possible, to catch as many types of regressions. The minimal approach is to match only the minimum needed to assert correct behaviour, for example matching a single button that needs to appear. We usually use the maximal approach in GNOME openQA tests.

The golden rules are:

  * only match things relevant to the current test
  * exclude UI elements that will change on each run, such as clocks showing the current time

We currently use a manual approach to calculate the match coordinates. This means opening the screenshot with an image processing tool like [GNU IMP](https://www.gimp.org/) and using the mouse to find exact pixel coordinates that we want to match.

As an example, if you want to match an entire app window, move the mouse pointer to the top-left corner of the window in the screenshot. Change the "xpos" and "ypos" to these X,Y coordinates. Now, drag a rectangle over the window and see how wide and how high it is. Change the "width" and "height" in the JSON to match.

If you want to add a click point such as a button, this is defined as an extra match area with `click_point` coordinate. Here is an example you can adapt:

```
    {
      "xpos": 950,
      "ypos": 38,
      "height": 36,
      "width": 67,
      "type": "match",
      "click_point": {
        "xpos": 32,
        "ypos": 18
      }
    },
```

The click point coordinates are *relative to the outer match*, you can generally calculate them based on `width` and `height` by dividing them by 2.

If your match area includes a UI element that will change with time, such as a clock or calendar, you can overlay an `exclude` area. You only need to exclude
things if they are inside an existing match area, and this is done by defining
another area and seting `type` to `"exclude"` instead of `"match"`. Here's an example:

```
    {
      "xpos": 407,
      "ypos": 3,
      "width": 228,
      "height": 27,
      "type": "exclude"
    },
```

The needles are in a separate Git repo compared to the tests. This doesn't affect running the tests locally, but it does mean that you will need to
open two merge requests when proposing the change, one against the needles and another against the tests.

Manually creating needles is a great way to understand how they work, but it is a slow process. To work more quickly, you can try some alternative approaches:

  * Create a minimal new needle that fails, then use the openQA web UI's needle editor to modify it.
  * Use [QAnvas](https://gitlab.com/CodethinkLabs/qad/qanvas) as a GUI needle editor.

## Adding a testsuite

A testsuite is a set of related tests grouped together. Each testsuite
has a short name, such as `gnome_apps` which tests the GNOME core apps.

Each testsuite can specify its own openQA configuration variables, which are
defined in `config/scenario_definitions.yaml`. This is how the `gnome_install`
test specifies that it runs against the ISO instead of the hard disk image,
for example. Add the new testsuite to this file in the `job_templates`
section, using existing testsuites as a guide.

Next, edit `main.pm`, the toplevel test script. Find the `if $(testsuite eq ...)` 
condition statements and add a new branch for your testsuite. Add the
corresponding `autotest::loadtest()` statements for each test module you want
to include.

That's it! Commit your changes and jump to the "Submitting a merge request"
section.

## Submitting a merge request

To submit your first a merge request, you need an account on [GNOME's Gitlab instance](https://gitlab.gnome.org/).

Unfortunately GNOME's Gitlab instance is a target for spammers, and the project had to disallow sign-in with external identity providers such as Google and Github because link spammers use these options to sabotage the project.

Follow the [sign up instructions](https://gitlab.gnome.org/users/sign_up) carefully and fill in all fields to request an account. We have a blocklist in place for many email providers because unfortunately they are used for spam accounts which again are used to sabotage the project. Don't worry though - if you don't immediately receive an account confirmation, join the [GNOME Infrastructure Team](https://matrix.to/#/#infrastructure:gnome.org) chat and ask for help, explaining that you are a real human and not a spammer, and someone will manually approve your account within one day.

Once you have an account, fork the repository into your local namespace, push your branch to your fork, and open a merge request. This is a standard workflow for Gitlab which is [documented in full here](https://docs.gitlab.com/ee/user/project/repository/forking_workflow.html).

## Next steps

Thanks so much for contributing! The project operates entirely by volunteer effect so you may not immediately receive a response. Please be patient. If nobody responds after a few days have passed you are welcome to remind us in the GNOME OS chat.
