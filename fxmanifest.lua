fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
games {'gta5'}

name 'adame_lib'
author 'Javi Adame'
version '1.0'
license 'GLP-3.0'
repository 'https://github.com/javiadaame/adame_lib'
description 'Library to use in other Adame resources.'

files {'init.lua', 'imports/**/client.lua', 'imports/**/shared.lua'}

shared_script 'src/init.lua'

shared_scripts {'src/**/shared.lua', 'src/**/shared/*.lua'}

client_scripts {'src/**/client.lua', 'src/**/client/*.lua'}

server_scripts {'src/**/server.lua', 'src/**/server/*.lua'}
