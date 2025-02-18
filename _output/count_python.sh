#!/bin/bash

# 指定 CSV 文件路径
Files = [
    "/home/ubuntu/assignment-01-Bruce11151/stackoverflow/questions.csv",
    "/home/ubuntu/assignment-01-Bruce11151/stackoverflow/question_tags.csv" ]

# 检查 CSV 文件是否存在
if [ -f "$CSV_FILE" ]; then
    # 统计包含 "python" 的行数（忽略大小写）
    count=$(grep -i "python" "$CSV_FILE" | wc -l)
    echo "Number of lines containing 'python': $count"
else
    echo "Error: CSV file not found at $CSV_FILE"
