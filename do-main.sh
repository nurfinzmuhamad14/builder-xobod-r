#! /bin/bash
branch="injectorx"
LVibration="1"
CODENAME="X01BD"
BuilderKernel="00000"

if [ "$BuilderKernel" != "proton" ] && [ "$BuilderKernel" != "dtc" ] && [ "$BuilderKernel" != "gcc" ] && [ "$BuilderKernel" != "storm" ] && [ "$BuilderKernel" != "strix" ] && [ "$BuilderKernel" != "yuki" ] && [ "$BuilderKernel" != "sdclang" ] ;then
    exit;
fi

FolderUp="BrokenNucleus"
TypeBuild="RELEASE"
if [ "$branch" = "injectorx-eas" ];then
TypeBuildTag="EAS"
TypeScript="EAS Advanced Configuration"
AKbranch="injectorx-eas"
	if [ "$CODENAME" == "X00TD" ];then
	spectrumFile="eas-x00t.rc"
	else
	spectrumFile="eas.rc"
	fi
else
TypeBuildTag="HMP"
TypeScript="Spectrum"
AKbranch="injectorx"
	if [ "$CODENAME" == "X00TD" ];then
	spectrumFile="ryuu-x00t.rc"
	else
	spectrumFile="ryuu.rc"
	fi
fi
. main.sh 'initial' 'full'

getInfo ">> Building kernel . . . . <<"

CompileKernel
# CompileKernel "65"
# CompileKernel "68"
# CompileKernel "71"
# CompileKernel "72"

SwitchOFI

CompileKernel
# CompileKernel "65"
# CompileKernel "68"
# CompileKernel "71"
# CompileKernel "72"
