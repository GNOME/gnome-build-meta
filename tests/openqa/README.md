# End-to-end tests for GNOME OS

Welcome!

This repo holds end-to-end tests for GNOME OS, written
using the openQA test API.

For more information about this project, you could watch the following
video: ["The best testing tools we've ever had: an introduction to openQA for GNOME"](https://www.youtube.com/watch?v=jIDk0frev7M&t=6732s). Or just keep reading :-)

Complete documentation can be found here:
<https://gitlab.gnome.org/GNOME/gnome-build-meta/-/wikis/openqa/OpenQA-for-GNOME-developers>

## Scope

The tests in this repo aim to cover the following areas:

  * the GNOME OS installer and initial setup
  * basic GNOME Shell functionality
  * system services provided by GNOME and Freedesktop modules, such as
    app launching, content indexing, fonts, and so on.
  * core apps, especially where they interact with system services
    and each other.
  * features that affect all components such as accessibility,
    adaptive UI, and localization.
  * anything an end-user might expect to do with a system

The aim is for a full run of the tests to complete within 10 or 15 minutes
so that the tests can be used for pre-merge testing of changes to
gnome-build-meta.

The following is specifically out of scope for the GNOME OS end-to-end tests:

  * apps that are not in GNOME core
  * functionality used only by developers and testers
  * being a comprehensive specification of everything the system can do
  * testing focused on specific small components, where a unit test is more appropriate

GNOME modules will soon be able to have their own set of openQA end-to-end
tests, see the corresponding issue to track this work.

## See the tests in action

The tests run as part of gnome-build-meta's Gitlab CI pipelines.

Check the latest pipeline here. The 'test-s3-image' job is the openQA
end-to-end tests.

Use the helper script `utils/pipeline_report.py` to check test status
from the commandline.

## Run the tests locally

To develop new tests its useful to be able to run them locally. Here is
a quick start guide on how to do that. Other methods are available, see
the [full documentation](https://gitlab.gnome.org/GNOME/gnome-build-meta/-/wikis/openqa/OpenQA-for-GNOME-developers).

You will need a Linux computer with the following programs installed:

  * Git
  * Podman
  * The [`ssam_openqa` helper tool](https://gitlab.gnome.org/sthursfield/ssam_openqa/)

Fetch the tests, and the needles:

```
git clone https://gitlab.gnome.org/gnome/openqa-tests
cd openqa-tests && git clone https://gitlab.gnome.org/gnome/openqa-needles needles
```

Fetch and prepare the required test media (note: large files):

```
curl --get --location $(./utils/test_media_url.py --latest --kind iso) --output gnome_os_installer.iso
curl --get --location $(./utils/test_media_url.py --latest --kind disk) | unxz > gnome_os_disk.img
./utils/expand_disk.sh ./gnome_os_disk.img 12 GB
```

Download the openQA worker container image:

```
podman pull registry.opensuse.org/devel/openqa/containers15.5/openqa_worker:latest
```

Now run `ssam_openqa`, which will launch the openQA worker container and run the
test suite in a virtual machine that runs inside the container:

```
ssam_openqa run --hdd-path ./gnome_os_disk.img --iso-path ./gnome_os_installer.iso --tests-path . --output-path ./out
```

You should see a progress bar as the tests execute, and output from the
openQA test runner will appear in the `out/` directory, grouped by
each individual testsuite.

openQA and the `ssam_openqa` helper tool have a few features that help with
debugging and extending the testsuite.  See the README for `ssam_openqa` for
more details.

Running the tests locally requires KVM. See [VIRTUALIZATION.md](./VIRTUALIZATION.md) for more details and a troubleshooting guide. 

## Contributing to the tests

For information on how to contribute to these tests, see:
[CONTRIBUTING.md](./CONTRIBUTING.md).

## Licensing

Where not otherwise noted the tests are licensed under the MIT license.
