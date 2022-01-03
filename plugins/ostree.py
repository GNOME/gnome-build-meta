from buildstream import Element, ElementError
import os


class OstreeElement(Element):
    BST_MIN_VERSION = "2.0"

    BST_FORBID_RDEPENDS = True
    BST_FORBID_SOURCES = True
    BST_STRICT_REBUILD = True

    def preflight(self):
        pass

    def configure(self, node):
        node.validate_keys(["ostree-branch", "initial-commands"])

        self.branch = node.get_str("ostree-branch")
        self.initial_commands = node.get_str_list("initial-commands")

        self.env = []
        self.sysroot = []

    def configure_dependencies(self, dependencies):
        for dep in dependencies:
            if dep.config:
                dep.config.validate_keys(["sysroot"])

                if dep.config.get_bool("sysroot", False):
                    self.sysroot.append(dep.element)
                    continue

            self.env.append(dep.element)

    def get_unique_key(self):
        return {"branch": self.branch, "initial-commands": self.initial_commands}

    def configure_sandbox(self, sandbox):
        sandbox.mark_directory(self.get_variable("build-root"), artifact=True)
        sandbox.mark_directory(self.get_variable("install-root"))

        sandbox.set_environment(self.get_environment())

    def stage(self, sandbox):
        with self.timed_activity("Staging environment", silent_nested=True):
            self.stage_dependency_artifacts(sandbox, self.env)

        with self.timed_activity("Integrating sandbox", silent_nested=True):
            for dep in self.dependencies(self.env):
                dep.integrate(sandbox)

        with self.timed_activity("Staging sysroot", silent_nested=True):
            for dep in self.sysroot:
                self.stage_dependency_artifacts(sandbox, self.sysroot, path=self.get_variable("sysroot"))

    def assemble(self, sandbox):
        def run_command(*command):
            exitcode = sandbox.run(command, root_read_only=True)
            if exitcode != 0:
                raise ElementError(
                    "Command '{}' failed with exitcode {}".format(
                        " ".join(command), exitcode
                    )
                )

        sysroot = self.get_variable("sysroot")
        barerepopath = os.path.join(self.get_variable("build-root"), "barerepo")
        repopath = self.get_variable("install-root")

        with self.timed_activity("Running initial commands"):
            with sandbox.batch():
                for command in self.initial_commands:
                    sandbox.run(["sh", "-c", "-e", command])

        with self.timed_activity("Initial commit"), sandbox.batch(root_read_only=True):
            #sandbox.run(["ostree", "init", "--repo", barerepopath], SandboxFlags.NONE)
            sandbox.run(["ostree", "init", "--repo", repopath, "--mode", "archive"], root_read_only=True)
            sandbox.run([
                "ostree",
                "commit",
                "--repo",
                repopath,
                "--consume",
                sysroot,
                "--branch",
                self.branch,
                "--timestamp",
                "2011-11-11 11:11:11+00:00"
            ], root_read_only=True)

        #with self.timed_activity("Pull"), sandbox.batch(SandboxFlags.ROOT_READ_ONLY):
        #    sandbox.run(["ostree", "pull-local", "--repo", repopath, barerepopath], SandboxFlags.ROOT_READ_ONLY)

        return repopath


def setup():
    return OstreeElement
