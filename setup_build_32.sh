# Create an arm64 API 26 libc++ toolchain.
# export NDK=/home/exiahan/Applications/android-ndk/android-ndk-r17c
# $NDK/build/tools/make_standalone_toolchain.py \
#   --arch arm \
#   --api 22 \
#   --stl=libc++ \
#   --install-dir=/home/exiahan/Applications/android/ndktoolchain32

# Add the standalone toolchain to the search path.
export PATH=$PATH:/home/exiahan/Applications/android/ndktoolchain32/bin

# Tell configure what tools to use.
# If you want armeabi, just change target_host to
target_host=arm-linux-androideabi
#target_host=aarch64-linux-android
export AR=$target_host-ar
export AS=$target_host-as
export CC=$target_host-gcc
export CXX=$target_host-g++
export LD=$target_host-ld
export STRIP=$target_host-strip

# Tell configure what flags Android requires.
export CFLAGS="-fPIE -fPIC"
export LDFLAGS="-pie"
