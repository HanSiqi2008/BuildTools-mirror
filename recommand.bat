cd mcpack
::   powershell -command ("wget -o ")

::download and install neoforge
title install neoforge......
powershell -command ("wget -o neoforge.jar https://maven.neoforged.net/releases/net/neoforged/neoforge/20.4.196/neoforge-20.4.196-installer.jar")
".\Java\jre-17.0.10\bin\java.exe" -Xmx512M -Xms512m -jar neoforge.jar --installClient .\.minecraft\
del neoforge.jar
del installer.log

::download mods,resourcepacks
title download mods......
cd .\.minecraft\versions\
set acd=%cd%
cd .\neoforge-20.4.196\
mkdir mods
mkdir resourcepacks
set vercd=%cd%
cd mods
powershell -command ("wget -o appleskin.jar https://cdn.modrinth.com/data/EsAfCjCV/versions/FupqKtcB/appleskin-neoforge-mc1.20.4-2.5.1.jar")
powershell -command ("wget -o cloth-config-api.jar https://cdn.modrinth.com/data/9s6osm5g/versions/hUXzyFVO/cloth-config-13.0.121-neoforge.jar")
powershell -command ("wget -o csl.jar https://cdn.modrinth.com/data/idMHQ4n2/versions/dvl8hhBz/CustomSkinLoader_ForgeActive-14.19.1.jar")
powershell -command ("wget -o emf.jar https://cdn.modrinth.com/data/4I1XuqiY/versions/4vJjL6YG/entity_model_features_neoforge_1.20.4-1.3.jar")
powershell -command ("wget -o etf.jar https://cdn.modrinth.com/data/BVzZfTc1/versions/YddGVt6V/entity_texture_features_neoforge_1.20.4-5.2.3.jar")
powershell -command ("wget -o jade.jar https://cdn.modrinth.com/data/nvQzSEkH/versions/9rrZAORZ/Jade-1.20.4-neoforge-13.3.1.jar")
powershell -command ("wget -o jei.jar https://cdn.modrinth.com/data/u6dRKJwZ/versions/RHAv6XOz/jei-1.20.4-neoforge-17.3.0.49.jar")
powershell -command ("wget -o embeddium.jar https://cdn.modrinth.com/data/sk9rgfiA/versions/M27NTeQi/embeddium-0.3.8+mc1.20.4.jar")
powershell -command ("wget -o embeddium-extra.jar https://cdn.modrinth.com/data/oY2B1pjg/versions/pxLydQhu/rubidium-extra-0.5.4+mc1.20.4-build.115.jar")
powershell -command ("wget -o TEOption.jar https://cdn.modrinth.com/data/S1tndFDa/versions/BuBgZSzF/textrues_embeddium_options-0.1.2+mc1.20.4.jar")
powershell -command ("wget -o OPAC.jar https://cdn.modrinth.com/data/gF3BGWvG/versions/LiYWBSOi/open-parties-and-claims-forge-1.20.4-0.20.4.jar")
powershell -command ("wget -o XaeroMap.jar https://cdn.modrinth.com/data/JkSi2Fzx/versions/CvcO3Xjd/Xaeros_Minimap_FP23.9.6_Forge_1.20.4.jar")
powershell -command ("wget -o SVC.jar https://cdn.modrinth.com/data/9eGKb6K1/versions/3xVYsX8K/voicechat-neoforge-1.20.4-2.5.8.jar")
powershell -command ("wget -o Vivecraft-VRMC.jar https://cdn.modrinth.com/data/wGoQDPN5/versions/uIpbfFvX/vivecraft-1.20.4-1.1.8-neoforge.jar")
powershell -command ("wget -o kotlin.jar https://cdn.modrinth.com/data/ordsPcFz/versions/9j6YaPp2/kotlinforforge-4.10.0-all.jar")

cd %acd%
copy .\fabric-loader-0.15.7-1.20.4\resourcepacks\* .\neoforge-20.4.196\

mce.bat
