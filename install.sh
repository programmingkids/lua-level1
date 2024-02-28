#! /bin/bash

echo " -- Installing Lua -- "
sudo yum install -y lua
echo " -- Installed Lua -- "

cat << EOM >> ~/environment/.c9/runners/Lua.run
{
  "script": [
    "lua \$file"
  ],
  "info": "Lua Started \$project_path\$file_name",
  "env": {},
  "selector": "source.lua",
  "trackId": "Lua"
}
EOM

echo " -- Lua Runner Created -- "
echo " -- Lua Setting Completed -- "
