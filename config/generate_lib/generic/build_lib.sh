FW_TARGETDIR=$(pwd)/firmware

BUILD_DIR=$FW_TARGETDIR/build

# macOS Intel
# ARCHIVE_COMMAND=/usr/local/opt/gcc-arm-none-eabi/bin/arm-none-eabi-ar
# RANLIB_COMMAND=/usr/local/opt/gcc-arm-none-eabi/bin/arm-none-eabi-ranlib
# macOS M1
ARCHIVE_COMMAND=/opt/homebrew/opt/gcc-arm-none-eabi-10-2020-q4-major/bin/arm-none-eabi-ar
RANLIB_COMMAND=/opt/homebrew/opt/gcc-arm-none-eabi-10-2020-q4-major/bin/arm-none-eabi-ranlib
# macOS Native
# ARCHIVE_COMMAND=/usr/bin/ar
# RANLIB_COMMAND=/usr/bin/ranlib

pushd $FW_TARGETDIR/mcu_ws >/dev/null

    mkdir -p $FW_TARGETDIR/libmicroros
    cd $FW_TARGETDIR/libmicroros
    for file in $(find $FW_TARGETDIR/mcu_ws/install/lib -name '*.a'); do
        echo file=$file
        folder=$(echo $file | sed -E "s/(.+)\/(.+).a/\2/");
        echo folder=$folder
        mkdir -p $folder
        cd $folder
        $ARCHIVE_COMMAND x $file
        for f in *.obj; do
            mv "$f" ../$folder-$f;
        done ;
        cd ..
        rm -rf $folder;
    done ;
    $ARCHIVE_COMMAND rc libmicroros.a $(ls *.o *.obj 2> /dev/null)
    rm -f *.o *.obj
    mkdir -p $BUILD_DIR
    cp libmicroros.a $BUILD_DIR
    $RANLIB_COMMAND $BUILD_DIR/libmicroros.a
    cp -R $FW_TARGETDIR/mcu_ws/install/include $BUILD_DIR
    cd ..
    rm -rf libmicroros

popd >/dev/null
