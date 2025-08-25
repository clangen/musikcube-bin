REM Win32 Debug -> static .lib, /MTd, output to .\out32\
mkdir out32
mkdir out32\obj
msbuild w32\VS2022\libmicrohttpd.sln ^
  /t:Build ^
  /p:Configuration=Release-static ^
  /p:Platform=Win32 ^
  /p:ConfigurationType=StaticLibrary ^
  /p:RuntimeLibrary=MultiThreadedRelease ^
  /p:OutDir=%cd%\out32\ ^
  /p:IntDir=%cd%\out32\obj\

REM x64 Release -> static .lib, /MT, output to .\out64\
mkdir out64
mkdir out64\obj
msbuild w32\VS2022\libmicrohttpd.sln ^
  /t:Build ^
  /p:Configuration=Release-static ^
  /p:Platform=x64 ^
  /p:ConfigurationType=StaticLibrary ^
  /p:RuntimeLibrary=MultiThreaded ^
  /p:OutDir=%cd%\out64\ ^
  /p:IntDir=%cd%\out64\obj\