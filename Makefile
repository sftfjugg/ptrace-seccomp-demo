all:
	clang++ -target aarch64-linux-android21 arm64_seccomp.cpp -o tuziseccomp -static-libstdc++
	adb push tuziseccomp /data/local/tmp
	adb shell chmod 777 /data/local/tmp/tuziseccomp