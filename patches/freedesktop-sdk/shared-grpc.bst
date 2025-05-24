diff --git a/elements/components/grpc.bst b/elements/components/grpc.bst
index 8038bae..f6bf067 100644
--- a/elements/components/grpc.bst
+++ b/elements/components/grpc.bst
@@ -11,6 +11,7 @@ depends:
 
 variables:
   cmake-local: >-
+    -DBUILD_SHARED_LIBS=ON
     -DgRPC_SSL_PROVIDER=package
     -DgRPC_PROTOBUF_PROVIDER=package
     -DgRPC_ZLIB_PROVIDER=package
