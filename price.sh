#########################################################################
# File Name: price.sh
# Author: cuixl
# mail: cuixl@centec.com
# Created Time: Wed 04 May 2022 04:53:56 PM CST
#########################################################################
#!/bin/bash

FONT_RED="\033[31m"
FONT_BLUE="\033[34m"
FONT_END="\033[0m"

sender="253948849@qq.com"
receiver="xinglong.cui@hotmail.com"
sleepSeconds=10 #10 seconds
tryCnt=1
file="wgetOutput"

declare -a foundArray
declare -a titleArray
declare -a searchKeyArray
declare -a urlArray
titleArray=("MacbookAir(8+256) is found" 
            "P2423DE(2K) is found" 
            "U2720(4K) is found"
            "U2723(4K) is found"
            "S2721QS(4K) is found"
            "P2723DE(4K) is found")
urlArray=("https://www.apple.com.cn/shop/refurbished/mac" 
          "https://www.dell.com/zh-cn/outlet/shop/monitors/refurbished-monitors" 
          "https://www.dell.com/zh-cn/outlet/shop/monitors/refurbished-monitors" 
          "https://www.dell.com/zh-cn/outlet/shop/monitors/refurbished-monitors" 
          "https://www.dell.com/zh-cn/outlet/shop/monitors/refurbished-monitors" 
          "https://www.dell.com/zh-cn/outlet/shop/monitors/refurbished-monitors")
searchKeyArray=("6799" 
                "P2423DE" 
                "U2720" 
                "U2723" 
                "S2721QS" 
                "P2723DE")
foundArray=("n" 
            "n" 
            "n" 
            "n" 
            "n" 
            "n")

length=${#titleArray[*]}
indexMax=`expr $length - 1`

while true;do
    echo -e $FONT_BLUE "##########TRY $tryCnt times##########" $FONT_END
    for i in $(seq 0 $indexMax)
    do
        title=${titleArray[$i]}
        url=${urlArray[$i]}
        searchKey=${searchKeyArray[$i]}

        wget $url -O $file
        result=`cat $file | grep $searchKey`
        if [ "$result" != "" ];then
            echo -e $FONT_RED $title $FONT_END
            if [ "${foundArray[$i]}" == "n" ]; then
                echo -e $FONT_RED "send mail to $receiver" $FONT_END
                echo $url | mail -s $title $receiver -aFrom:$sender
            fi
            foundArray[$i]="y"
        else
            echo -e $FONT_BLUE "$searchKey is not found" $FONT_END
            foundArray[$i]="u"
        fi

    done
    
    read -t $sleepSeconds -p "continue(y/n):" cmd
    if [ "$cmd" == "n" ];then
        echo "exit"
        exit
    fi

    tryCnt=`expr $tryCnt + 1` 
done

