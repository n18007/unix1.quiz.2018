#!/bin/bash

echo "1990年元旦からの曜日集計"
for day in $(cat ~/kadai/unix.2018/quiz.data/gantan)
do
	      echo $(date -d $day '+%u %a')
done | sort -n | uniq -c | awk '{print $3,$1"回"}'
