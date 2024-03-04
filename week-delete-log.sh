#!/bin/bash


# 삭제할 디렉토리 지정
log_dir="/var/log/"

# 7일전의 날짜
date=$(date --date="7 days ago" +%Y-%m-%d)

# 7일 이상 전에 마지막으로 수정한 모든 로그 파일 제거

find $log_dir -type f -name "*.log" -mtime +7 -exec rm {} \;

#7일 이상 전에 생성된 .gz 로그 파일 제거

find $log_dir -type f -name "*.gz" -mtime +7 -exec rm {} \;
