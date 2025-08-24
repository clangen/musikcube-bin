rem Release & Debug share one build tree; generator expr picks /MT vs /MTd

rem x64
cmake -S . -B build-x64 -G "Visual Studio 17 2022" -A x64 ^
  -DBUILD_SHARED_LIBS=ON ^
  -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded$<$<CONFIG:Debug>:Debug>" ^
  -DCURL_USE_SCHANNEL=ON ^
  -DCURL_USE_OPENSSL=OFF ^
  -DCURL_USE_LIBPSL=OFF

cmake --build build-x64 --config Release
cmake --build build-x64 --config Debug

rem x86
cmake -S . -B build-Win32 -G "Visual Studio 17 2022" -A Win32 ^
  -DBUILD_SHARED_LIBS=ON ^
  -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded$<$<CONFIG:Debug>:Debug>" ^
  -DCURL_USE_SCHANNEL=ON ^
  -DCURL_USE_OPENSSL=OFF ^
  -DCURL_USE_LIBPSL=OFF

cmake --build build-Win32 --config Release
cmake --build build-Win32 --config Debug
