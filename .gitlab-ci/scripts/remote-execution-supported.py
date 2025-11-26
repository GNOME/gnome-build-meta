#!/usr/bin/env python

import sys
import grpc
from buildstream._protos.build.bazel.remote.execution.v2 import remote_execution_pb2, remote_execution_pb2_grpc

try:
  with grpc.insecure_channel(sys.argv[1]) as channel:
    stub = remote_execution_pb2_grpc.CapabilitiesStub(channel)
    response = stub.GetCapabilities(remote_execution_pb2.GetCapabilitiesRequest())
except Exception as e:
  exit(1)

if response.execution_capabilities.exec_enabled:
    exit(0)

exit(1)
