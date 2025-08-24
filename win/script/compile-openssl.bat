rem Edit openssl-3/Configurations/10-main.conf and replace /MD with /MT

rem NOTE: 64-bit builds need to be done in the 64-bit command prompt
perl Configure VC-WIN64A shared --prefix=C:\src\openssl-3.5.2-inst-x64
nmake
nmake install_sw

rem NOTE: 32-bit builds need to be done in the 32 bit command prompt
perl Configure VC-WIN32 shared --prefix=C:\src\openssl-3.5.2-inst-x86
nmake
nmake install_sw