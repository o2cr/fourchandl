#!/bin/bash
fourchan () {
        if ["${1}" == "help" && "${2}" == "pls"]; then
        printf "Usage: fourchan <page URL> <folder name>\n"
            return 1;
        fi
        mkdir ${2} && cd ${2} && $(curl -s ${1} | grep -o -i 'File: <a href="//i.   4cdn.org\/[a-z]*\/src\/[0-9]*\.[a-z]\{3\}' | sed -r 's/File: <a href="\/\///'   |xargs wget) && cd ..
}
