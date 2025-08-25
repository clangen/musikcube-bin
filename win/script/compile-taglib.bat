rem 64 bit release ============================================================

rmdir /S /Q build

cmake -S . -B build -G "Visual Studio 17 2022" -A x64 ^
  -DBUILD_SHARED_LIBS=OFF ^
  -DWITH_ZLIB=OFF ^
  -DCMAKE_POLICY_DEFAULT_CMP0091=NEW ^
  -DCMAKE_INSTALL_PREFIX="c:/src/taglib-2.1.1-inst64" ^
  -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded$<$<CONFIG:Debug>:Debug>"

cmake --build build --config Release
cmake --install build --config Release

rem 64 bit debug ==============================================================

rmdir /S /Q build

cmake -S . -B build -G "Visual Studio 17 2022" -A x64 ^
  -DBUILD_SHARED_LIBS=OFF ^
  -DWITH_ZLIB=OFF ^
  -DCMAKE_POLICY_DEFAULT_CMP0091=NEW ^
  -DCMAKE_INSTALL_PREFIX="c:/src/taglib-2.1.1-inst64" ^
  -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded$<$<CONFIG:Debug>:Debug>" ^
  -DCMAKE_DEBUG_POSTFIX=D

cmake --build build --config Debug
cmake --install build --config Debug

rem 32 bit release ============================================================

rmdir /S /Q build

cmake -S . -B build -G "Visual Studio 17 2022" -A Win32 ^
  -DBUILD_SHARED_LIBS=OFF ^
  -DWITH_ZLIB=OFF ^
  -DCMAKE_POLICY_DEFAULT_CMP0091=NEW ^
  -DCMAKE_INSTALL_PREFIX="c:/src/taglib-2.1.1-inst32" ^
  -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded$<$<CONFIG:Debug>:Debug>"

cmake --build build --config Release
cmake --install build --config Release

rem 32 bit debug ==============================================================

rmdir /S /Q build

cmake -S . -B build -G "Visual Studio 17 2022" -A Win32 ^
  -DBUILD_SHARED_LIBS=OFF ^
  -DWITH_ZLIB=OFF ^
  -DCMAKE_POLICY_DEFAULT_CMP0091=NEW ^
  -DCMAKE_INSTALL_PREFIX="c:/src/taglib-2.1.1-inst32" ^
  -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded$<$<CONFIG:Debug>:Debug>" ^
  -DCMAKE_DEBUG_POSTFIX=D

cmake --build build --config Debug
cmake --install build --config Debug
