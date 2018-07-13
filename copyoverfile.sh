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
        echo 'If something wrong press ctr + c. Press any key to submit';
        echo ${arr[@]};
read enter;

for git in ${arr[@]}; do
    for file in "$plugin_update_path"/*; do
        if [[ -d "/home/thang/solazu-git/${git}/code/theme/plugins/" ]]; then
            cp -rf ${file} /home/thang/solazu-git/${git}/code/theme/plugins/
            cd /home/thang/solazu-git/${git}/
            git commit -am "update plugin "$(basename ${file}) ;
            #echo "cp "  ${file}  " to " /home/thang/solazu-git/${git}/code/theme/plugins/;
            else
            echo /home/thang/solazu-git/${git}/code/theme/plugins/ "is not directory";
        fi
    done
done