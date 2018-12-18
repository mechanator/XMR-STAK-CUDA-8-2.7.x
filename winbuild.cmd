mkdir build
cd build

set CMAKE_PREFIX_PATH=C:\xmr-stak-dep\hwloc;C:\xmr-stak-dep\libmicrohttpd;C:\xmr-stak-dep\openssl
rem cmake -G "Visual Studio 15 2017 Win64" -T v140,host=x64 -DMICROHTTPD_ENABLE=OFF -DOpenSSL_ENABLE=OFF  -DOpenCL_ENABLE=ON -DCMAKE_LINK_STATIC=ON ..
cmake -G "Visual Studio 15 2017 Win64" -T v140,host=x64 ..
cmake --build . --config Release --target install



cd bin\Release
copy C:\xmr-stak-dep\openssl\bin\* .