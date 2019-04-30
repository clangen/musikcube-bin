* open Visual Studio Command Prompt
* mkdir build-vs2017
* cd build-vs2017
* cmake -DLIBRESSL_APPS=OFF -DLIBRESSL_TESTS=OFF -DENABLE_EXTRATESTS=OFF -DBUILD_SHARED_LIBS=ON -G"Visual Studio 15 2017" ..
* open the projects and change the CRT to MT and MTd
