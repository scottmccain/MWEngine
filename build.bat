%ECHO OFF
REM custom to your machine : Android NDK library location
REM SET ANDROID_NDK_ROOT=C:\dev\tools\android-ndk-r9

REM the input folders for the C++ sources
SET INPUT="-I.\jni .\jni\events .\jni\processors"

rm -rf src\nl\igorski\lib\audio\nativeaudio
mkdir src\nl\igorski\lib\audio\nativeaudio

C:\dev\tools\swigwin-3.0.2\swig -java -package nl.igorski.lib.audio.nativeaudio -DNO_RTIO -c++ -lcarrays.i -verbose -outdir src\nl\igorski\lib\audio\nativeaudio %INPUT% -o jni\java_interface_wrap_test.cpp jni\mwengine.i

ndk-build TARGET_PLATFORM=android-14 V=1




