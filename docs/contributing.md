# Contributing to GNOME Build Metadata

## 1. Setting up the build environment

The content of this repository is a [BuildStream](https://www.buildstream.build/) project. For more information on BuildStream, check out its [user guide](https://docs.buildstream.build/2.7/main_using.html) and [reference documentation](https://docs.buildstream.build/2.7/main_core.html) for all available features and options.

If you're using GNOME OS as your developer workstation, you can set up all the tools and dependencies you need to build this repository by enabling the `devel` extension:

```shell
updatectl enable devel --now
```

Alternatively, you can use [Toolbox](https://containertoolbx.org/) to get a containerized build environment like so:

```shell
toolbox create -i registry.gitlab.com/freedesktop-sdk/infrastructure/freedesktop-sdk-docker-images/bst2
toolbox enter bst2
```

## 2. Forking and cloning the GNOME Build Metadata repository

First, create a fork of the repo in your account by visiting <https://gitlab.gnome.org/GNOME/gnome-build-meta/-/forks/new>. Please also see the [GNOME Project Handbook](https://handbook.gnome.org/development/change-submission.html) for a general GNOME GitLab usage guide. Then, clone the repository to a local directory on your workstation:

```shell
git clone git@ssh.gitlab.gnome.org:your-username/gnome-build-meta.git # Adjust your-username to your GNOME GitLab username
cd gnome-build-meta
```

By default this will clone the `master` branch of the repository. If you want to contribute a change to a different version, check out the branch for it:

```shell
$ git checkout gnome-50
```

Now create a branch to make your changes in:

```shell
$ git checkout -b my-intended-change
```

If you need help with your contributions, ask for help in [`#gnome-os:gnome.org` on Matrix](https://matrix.to/#/#gnome-os:gnome.org).

## 3. Making changes

You can find definitions for components, their build steps and dependencies under `elements/`. Elements can depend on other elements and be composed together to build complete targets like the ones in [published build outputs](./ci-outputs.md). Adding a new component or dependency generally means adding a new BuildStream element and modifying existing ones to include it in its list of dependencies.

We use the [Freedesktop SDK](https://freedesktop-sdk.io/) as a base for a lot of our components, using a [BuildStream junction](https://docs.buildstream.build/2.7/junctions/junction-elements.html). This means that some components are shared and changes to those components should be done upstream in the Freedesktop SDK. Such components are prefixed with `freedesktop-sdk.bst:` when listed as a dependency, so they are easy to spot.

The first build might take a while depending on your workstation's specs. On a 2025 workstation with a fast SSD, 32 GB of RAM, 24 cores, and a 1 Gb/s internet connection, the first build takes about 25 minutes and requires about 50 GB of disk space. Subsequent rebuilds are much faster and take about one minute from making a change to seeing the change running on the workstation.

First, create a workspace for the component you want to work on; for example for the Linux kernel:

```shell
bst workspace open freedesktop-sdk.bst:components/linux.bst --directory ../linux/
```

For [GNOME Shell](https://gitlab.gnome.org/GNOME/gnome-shell):

```shell
bst workspace open core/gnome-shell.bst --directory ../gnome-shell/
```

Or for [GNOME Settings](https://apps.gnome.org/Settings/):

```shell
bst workspace open core/gnome-control-center.bst --directory ../gnome-control-center/
```

Now make the changes you want to make in your workspace, for example in `../linux/` or `../gnome-control-center/`. BuildStream will pick up your changes from this workspace automatically after you make them.

How to build, deploy and test depends on which build output you're contributing to. Follow the dedicated guide for each:

- **GNOME OS**: see the [GNOME OS contribution guide](./contributing-os.md)
- **GNOME Flatpak runtimes**: see the [Flatpak runtimes contribution guide](./contributing-flatpak.md)
- **GNOME OCI images**: see the [OCI images contribution guide](./contributing-oci.md)

<details>
<summary>Expand instructions for advanced users wanting to speed up rebuilds by disabling strict mode</summary>

If you're in a tight development loop where you're rebuilding the same component repeatedly, you can significantly speed up rebuilds by disabling [strict mode](https://docs.buildstream.build/2.7/developing/strict-mode.html), which avoids rebuilding the whole dependency chain on the next build at the cost of potential correctness implications:

```shell
$ cat > ~/.config/buildstream.conf << 'EOT'
projects:
  gnome-build-meta:
    strict: false
EOT
```

> [!warning]
> Make sure to revert this configuration after you are done, as it can cause broken builds.

</details>

<details>
<summary>Expand instructions for advanced users wanting to speed up rebuilds by disabling remote cache lookups</summary>

If you notice that [remote cache](https://docs.buildstream.build/2.7/using_configuring_cache_server.html) lookups are taking a long time on subsequent builds, you can disable them:

```shell
$ cat >> ~/.config/buildstream.conf << 'EOT'
artifacts:
  override-project-caches: true
source-caches:
  override-project-caches: true
EOT
```

> [!warning]
> Make sure to revert this configuration when updating to a new upstream commit, as it can cause large rebuilds of the stack since it can not pull compiled cached artifacts.

By default, the local cache is stored in `~/.cache/buildstream`. Note that disabling the remote cache lookups will cause a slow fresh build from scratch without the caches the first time you run a `bst` command afterwards.

</details>

For individual elements, you can also build them and inspect the result, either by checking out the built artifact to a directory or by dropping into a runtime shell:

```shell
bst build core/gnome-shell.bst
bst artifact checkout core/gnome-shell.bst --directory ./gnome-shell-artifact
bst shell core/gnome-shell.bst
```

You can also get a build shell to inspect the environment. Note that only the specified dependencies are staged; if you need a utility for debugging (vim, strace, etc.) you will have to add them as build-dependencies:

```shell
bst shell --build core/gnome-shell.bst
```

It's also possible to build for another architecture using QEMU:

```shell
bst -o arch aarch64 build sdk/gjs.bst
bst -o arch aarch64 shell --build sdk/gjs.bst
```

## 4. Opening a merge request with your changes

Once you have carefully reviewed and tested your changes, you can contribute them upstream. Please also see the [GNOME Project Handbook](https://handbook.gnome.org/development/change-submission.html) for a general GNOME GitLab usage guide.

### 4.1 Option 1: Changes to an upstream component

How to do so depends on the individual project you've made changes to, since each project has its own contribution conventions and guidelines. For components such as the Linux kernel, GNOME Shell, or GNOME Settings, these are usually described in each project's repository. If you've used `bst workspace open`, you can find them in the workspace directory you checked out to (e.g. `../linux/` or `../gnome-control-center/`).

Once your change has been merged upstream and a new release has been created, the next [`update_refs`](.gitlab-ci.yml) job in CI/CD will usually automatically update the references to include the new upstream version with your changes. Once merged, CI/CD will build and deploy new prebuilt [published build outputs](./ci-outputs.md).

### 4.2 Option 2: Changes to GNOME Build Metadata itself

If you've made a change to GNOME Build Metadata itself, such as adding or modifying a BuildStream element, configuration, or board, you can `git add` your changes, `git commit` them, `git push` them to your fork, and open a merge request by visiting <https://gitlab.gnome.org/your-username/gnome-build-meta/-/merge_requests/new?merge_request%5Bsource_branch%5D=my-intended-change> (adjust `your-username` to your GNOME GitLab username and `my-intended-change` to your branch name).

Be sure to select the correct target branch; the default is `master`, so if you're contributing a change to a different version, switch it to that version's branch, e.g. `gnome-50`. Fill out the merge request description (it might be helpful to look at [recently merged MRs](https://gitlab.gnome.org/GNOME/gnome-build-meta/-/merge_requests/?sort=created_date&state=merged&first_page_size=20) for inspiration), submit it, and someone will review it for you.

Once approved, CI/CD will build your MR and run the automated integration tests to make sure nothing breaks. Once merged, either directly or via an upstream release picked up by [`update_refs`](.gitlab-ci.yml), CI/CD will build and deploy new prebuilt [published build outputs](./ci-outputs.md).
