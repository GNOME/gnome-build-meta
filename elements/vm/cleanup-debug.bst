kind: stack

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

public:
  bst:
    integration-commands:
    # we inherit fd.o sources
    - rm -r '%{sourcedir}'

    - rm -r '%{debugdir}%{libexecdir}/installed-tests'
    - rm -r '%{debugdir}%{libexecdir}/gcc'
    - rm -r '%{debugdir}%{libdir}/samba'
    - rm -r '%{debugdir}%{libdir}/sane'

    # gjs deps on mozjs91, polkit only deps on 78
    - rm '%{debugdir}%{libdir}/libmozjs-78.so.debug'

    - rm '%{debugdir}%{libdir}/libaom.so.3.2.0.debug'
    - rm '%{debugdir}%{libdir}/libVkLayer_khronos_validation.so.debug'
    - rm '%{debugdir}%{libdir}/libprotoc.so.26.0.8.debug'
    - rm '%{debugdir}%{libdir}/libprotobuf.so.26.0.8.debug'

    - rm '%{debugdir}%{bindir}/lto-dump.debug'
    - rm '%{debugdir}%{bindir}/gs.debug'
    - rm '%{debugdir}%{bindir}/gpcl6.debug'
    - rm '%{debugdir}%{bindir}/gxps.debug'
    - rm '%{debugdir}%{bindir}/fish_indent.debug'
    - rm '%{debugdir}%{bindir}/fish.debug'
    - rm '%{debugdir}%{bindir}/fish_key_reader.debug'
    - rm '%{debugdir}%{bindir}/smbtorture.debug'
    - rm '%{debugdir}%{bindir}/gen_binary_files.debug'

    # gtk-doc/html/{gio, glib, gobject, libxml2, orc} inherited from fd.o
    - rm -r '%{datadir}/gtk-doc/html'

    # development image related objects
    - rm -r '%{debugdir}%{libexecdir}/valgrind'

    - rm '%{debugdir}/usr/%{triplet}/bin/ld.gold.debug'
    - rm '%{debugdir}%{bindir}/ctest.debug'
    - rm '%{debugdir}%{bindir}/cpack.debug'
    - rm '%{debugdir}%{bindir}/cmake.debug'
    - rm '%{debugdir}%{bindir}/ccmake.debug'
    - rm '%{debugdir}%{bindir}/c-index-test.debug'
    - rm '%{debugdir}%{bindir}/llvm-exegesis.debug'
    - rm '%{debugdir}%{bindir}/gdb.debug'
    - rm '%{debugdir}%{bindir}/dwp.debug'
    - rm '%{debugdir}%{bindir}/ccache.debug'
    - rm '%{debugdir}%{libdir}/libLLVM-12.so.debug'
    - rm '%{debugdir}%{libdir}/libclang.so.12.debug'
    - rm '%{debugdir}%{libdir}/libclang-cpp.so.12.debug'
    - rm '%{debugdir}%{bindir}/doxygen.debug'
    - rm '%{debugdir}%{bindir}/podman.debug'
    - rm '%{debugdir}%{bindir}/podman-remote.debug'
    - rm '%{debugdir}%{bindir}/obj2yaml.debug'
    - rm '%{debugdir}%{bindir}/yaml2obj.debug'
    - rm '%{debugdir}%{bindir}/llvm-tblgen.debug'
    - rm '%{debugdir}%{bindir}/lli-child-target.debug'
    - rm '%{debugdir}%{bindir}/perf.debug'

    # might be good to have later once vulkan backends get going
    - rm '%{debugdir}%{libdir}/libSPIRV-Tools-opt.so.debug'
    - rm '%{debugdir}%{libdir}/libSPIRV-Tools-reduce.so.debug'
    - rm '%{debugdir}%{libdir}/libSPIRV-Tools-shared.so.debug'
    - rm '%{debugdir}%{libdir}/libSPIRV-Tools.so.debug'
    - rm '%{debugdir}%{libdir}/libSPIRV.so.debug'