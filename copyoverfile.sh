#!/usr/bin/env bash

plugin_update_path='/home/thang/THANGSUBMISS/pluginupdate'

echo 'Input name of git repository : Example: educef'
declare -a arr;
while : ; do
    read a;
    echo "Press :q to submit";
    if [[ ${a} = ":q" ]]; then
        break;
    fi
    arr=( "${arr[@]}" "$a" );
done
if [[ ${#arr[@]} < 1  ]]; then
    arr=(jogy appexpo architect flexi grass hearty lawplus magiclean minimalist seogrow solabiz solala transera)
fi
        echo 'If something wrong press ctr + c. Press any key to submit';
        echo ${arr[@]};
read enter;

for git in ${arr[@]}; do
    for file in "$plugin_update_path"/*; do
        if [[ -d "/home/thang/solazu-git/${git}/code/theme/plugins/" ]]; then
                echo "cp "  ${file}  " to " /home/thang/solazu-git/${git}/code/theme/plugins/;
                cd /home/thang/solazu-git/${git}/
                git checkout develop
                cp -rf ${file} /home/thang/solazu-git/${git}/code/theme/plugins/
                git add .
                git commit -m "update plugin "$(basename ${file}) ;
            else
                echo /home/thang/solazu-git/${git}/code/theme/plugins/ "is not directory";
        fi
    done
done