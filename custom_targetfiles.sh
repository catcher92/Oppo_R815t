echo "in $0"

OUT_DIR=out/merged_target_files/

cp prebuilt/lib/libdefcontainer_jni.so $OUT_DIR/SYSTEM/lib/libdefcontainer_jni.so
cp prebuilt/app/Stats_12.apk $OUT_DIR/SYSTEM/framework/Stats_12.apk
