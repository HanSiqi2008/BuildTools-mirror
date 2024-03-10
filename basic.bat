::powershell -command ("wget -o ")


::Make dir there
mkdir mcpack
cd mcpack
set tempcd=%cd%
mkdir ".minecraft"
cd .\.minecraft\
mkdir versions
mkdir hmclJar
cd versions
mkdir 1.20.4
cd %tempcd%
 
::Actually,I could use (winget install Microsoft.OpenJDK.17) to install java,but not all pc can use winget,so i use wget there
title Download LibericaJRE17......
powershell -command ("wget -o jre17.zip https://download.bell-sw.com/java/17.0.10+13/bellsoft-jre17.0.10+13-windows-amd64.zip")
::Download unzip program and run it
title Download bandizip......
powershell -command ("wget -o ark.x64.dll https://github.ink/HanSiqi2008/bz.exe-mirror/raw/main/ark.x64.dll")
powershell -command ("wget -o bz.exe https://github.ink/HanSiqi2008/bz.exe-mirror/raw/main/bz.exe")
bz.exe x ./jre17.zip ./
del .\jre17.zip
del .\bz.exe
del .\ark.x64.dll
::Download Minecraft 1.20.4 and fabric installer, and run fabric installer
title Download Minecraft 1.20.4 and fabric......
powershell -command ("wget -o .\.minecraft\versions\1.20.4\1.20.4.jar https://piston-data.mojang.com/v1/objects/fd19469fed4a4b4c15b2d5133985f0e3e7816a8a/client.jar")
powershell -command ("wget -o .\.minecraft\versions\1.20.4\1.20.4.json https://piston-meta.mojang.com/v1/packages/e462f7cb66825ebc4b22f83011a027212c41cc73/1.20.4.json")
powershell -command ("wget -o fabric-installer.jar https://maven.fabricmc.net/net/fabricmc/fabric-installer/1.0.0/fabric-installer-1.0.0.jar")
powershell -command ("wget -o .\.minecraft\launcher_profiles.json https://github.ink/HanSiqi2008/something-mirror/raw/main/launcher_profiles.json")
::install fabric......
title Install Fabric-0.15.7......
".\jre-17.0.10\bin\java.exe" -Xmx512m -jar fabric-installer.jar client -mcversion 1.20.4 -loader 0.15.7 -dir "./.minecraft"

::Download Mods,ResourcePacks,ShaderPacks
title Download Mods,ResourcePacks,ShaderPacks......
cd .\.minecraft\versions\fabric-loader-0.15.7-1.20.4\
mkdir mods
mkdir resourcepacks
mkdir shaderpacks
set vercd=%cd%
cd mods
powershell -command ("wget -o fabricapi.jar https://cdn.modrinth.com/data/P7dR8mSH/versions/Ca6gRk94/fabric-api-0.96.3+1.20.4.jar")
powershell -command ("wget -o amecs.jar https://cdn.modrinth.com/data/rcLriA4v/versions/DvE3qJNM/amecs-1.3.11+mc.1.20.4.jar")
powershell -command ("wget -o appleskin.jar https://cdn.modrinth.com/data/EsAfCjCV/versions/pmFyu3Sz/appleskin-fabric-mc1.20.3-2.5.1.jar")
powershell -command ("wget -o cloth-config-api.jar https://cdn.modrinth.com/data/9s6osm5g/versions/eBZiZ9NS/cloth-config-13.0.121-fabric.jar")
powershell -command ("wget -o customskinloader.jar https://cdn.modrinth.com/data/idMHQ4n2/versions/DJ03lU4i/CustomSkinLoader_Fabric-14.19.1.jar")
powershell -command ("wget -o EMF.jar https://cdn.modrinth.com/data/4I1XuqiY/versions/S9HtDtJv/entity_model_features_fabric_1.20.4-1.2.3.jar")
powershell -command ("wget -o ETF.jar https://cdn.modrinth.com/data/BVzZfTc1/versions/qMoPCh9Z/entity_texture_features_fabric_1.20.4-5.2.3.jar")
powershell -command ("wget -o Jade.jar https://cdn.modrinth.com/data/nvQzSEkH/versions/fNHCa6bl/Jade-1.20.4-fabric-13.3.1.jar")
powershell -command ("wget -o Carpet.jar https://cdn.modrinth.com/data/TQTTVgYE/versions/yYzR60Xd/fabric-carpet-1.20.3-1.4.128+v231205.jar")
powershell -command ("wget -o Fabric-Lang-kotlin.jar https://cdn.modrinth.com/data/Ha28R6CL/versions/vlhvI5Li/fabric-language-kotlin-1.10.18+kotlin.1.9.22.jar")
powershell -command ("wget -o ForgeConfigAPI.jar https://cdn.modrinth.com/data/ohNO6lps/versions/xbVGsTLe/ForgeConfigAPIPort-v20.4.3-1.20.4-Fabric.jar")
powershell -command ("wget -o iris.jar https://cdn.modrinth.com/data/YL57xq9U/versions/kGdJ11Rt/iris-mc1.20.4-1.6.17.jar")
powershell -command ("wget -o JEI.jar https://cdn.modrinth.com/data/u6dRKJwZ/versions/HPR5ThoH/jei-1.20.4-fabric-17.3.0.49.jar")
powershell -command ("wget -o lithium.jar https://cdn.modrinth.com/data/gvQqBUqZ/versions/nMhjKWVE/lithium-fabric-mc1.20.4-0.12.1.jar")
powershell -command ("wget -o modmenu.jar https://cdn.modrinth.com/data/mOgUt4GM/versions/sjtVVlsA/modmenu-9.0.0.jar")
powershell -command ("wget -o nvidium-nvidia-sodium-fix.jar https://cdn.modrinth.com/data/SfMw2IZN/versions/J2fuM58R/nvidium-0.2.6-beta.jar")
powershell -command ("wget -o OPAC.jar https://cdn.modrinth.com/data/gF3BGWvG/versions/yTZcBgLb/open-parties-and-claims-fabric-1.20.4-0.20.4.jar")
powershell -command ("wget -o RSOptions.jar https://cdn.modrinth.com/data/Bh37bMuy/versions/fkLiGoHs/reeses_sodium_options-1.7.2+mc1.20.4-build.102.jar")
powershell -command ("wget -o sodium.jar https://cdn.modrinth.com/data/AANobbMI/versions/4GyXKCLd/sodium-fabric-0.5.8+mc1.20.4.jar")
powershell -command ("wget -o Sodium-Extra.jar https://cdn.modrinth.com/data/PtjYWJkn/versions/M0ndiav7/sodium-extra-0.5.4+mc1.20.4-build.116.jar")
powershell -command ("wget -o ViaFabricPlus.jar https://cdn.modrinth.com/data/rIC2XJV4/versions/Y8rSEWgC/viafabricplus-3.0.6.jar")
powershell -command ("wget -o ViveCraft-VRMC.jar https://cdn.modrinth.com/data/wGoQDPN5/versions/tc3tHRSS/vivecraft-1.20.4-1.1.6-fabric.jar")
powershell -command ("wget -o SimpleVoiceChat.jar https://cdn.modrinth.com/data/9eGKb6K1/versions/nUBzAUl1/voicechat-fabric-1.20.4-2.5.6.jar")
powershell -command ("wget -o XaeroMap.jar https://cdn.modrinth.com/data/JkSi2Fzx/versions/zQD90kCO/Xaeros_Minimap_FP23.9.6_Fabric_1.20.4.jar")
powershell -command ("wget -o YSM.jar.disabled https://cdn.modrinth.com/data/86xjpqqS/versions/WclHJJxj/yesstevemodel-1.20-fabric-release-1.1.5-hotfix-2.jar")

cd %vercd%
cd resourcepacks
powershell -command ("wget -o Sodium-Chinese.zip https://cdn.modrinth.com/data/yfDziwn1/versions/3dVpBxxu/SodiumTranslations.zip")
powershell -command ("wget -o Barebones.zip 'https://cdn.modrinth.com/data/rox3U8B6/versions/s3lwqPHV/Bare Bones 1.20.zip'")
powershell -command ("wget -o ADD-ON-THE-TOP-OF-THE-LIST-BarebonesXfreshanimation.zip 'https://cdn.modrinth.com/data/DCHWs5EF/versions/heubELUH/Bare Bones x Fresh Animations 1.9.zip'")
powershell -command ("wget -o Fresh-Animation.zip https://cdn.modrinth.com/data/50dA9Sha/versions/DimjJDVT/FreshAnimations_v1.9.zip")

cd %vercd%
cd shaderpacks
powershell -command ("wget -o AstraLex.zip https://github.ink/HanSiqi2008/something-mirror/raw/main/AstraLex-shader.zip")
powershell -command ("wget -o SuperDuperVanilla.zip https://cdn.modrinth.com/data/LMIZZNxZ/versions/By3oTltx/superDuperVanilla.zip")
powershell -command ("wget -o Solas.zip 'https://cdn.modrinth.com/data/EpQFjzrQ/versions/AvWzJIv6/Solas Shader V2.0 [BETA 0.6b].zip'")

::Download Hello Minecraft Launcher
cd %tempcd%
title Download HMCL......
powershell -command ("wget -o .\.minecraft\hmclJar\hmcl.jar https://ci.huangyuhui.net/job/HMCL/236/artifact/HMCL/build/libs/HMCL-3.5.5.236.jar")
powershell -command ("wget -o HMCL.exe https://ci.huangyuhui.net/job/HMCL/236/artifact/HMCL/build/libs/HMCL-3.5.5.236.exe")
echo ".\jre-17.0.10\bin\java.exe" -Xmx256m -jar .\.minecraft\hmclJar\hmcl.jar > HMCL.bat
powershell -command ("wget -o hmcl.json https://github.ink/HanSiqi2008/something-mirror/raw/main/hmcl.json")
powershell -command ("wget -o .\.minecraft\hmclJar\hmcl.json https://github.ink/HanSiqi2008/something-mirror/raw/main/hmcl.json")
