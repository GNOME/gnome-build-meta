from buildstream import BuildElement


class CargoElement(BuildElement):
    BST_MIN_VERSION = "2.0"


def setup():
    return CargoElement
