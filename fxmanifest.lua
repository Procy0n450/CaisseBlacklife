fx_version 'cerulean'
game 'gta5'

client_scripts {
    '@eProtect/cl_wrapper.lua',
}

server_scripts {
    '@eProtect/sv_wrapper.lua',
	"@mysql-async/lib/MySQL.lua",
    'config/*.lua',
	'server/*.lua'
}
