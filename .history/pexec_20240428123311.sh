#!/bin/bash

# 默认等待时间（秒）
wait_time=10
# 初始化重复执行次数
repeat_count=0

# 解析命令行参数
while getopts ":m:" opt; do
    case ${opt} in
        m )
            # 获取 -m 参数值
            wait_time=$OPTARG
            ;;
        \? )
            echo "无效的选项: -$OPTARG" 1>&2
            exit 1
            ;;
        : )
            echo "选项 -$OPTARG 需要一个参数" 1>&2
            exit 1
            ;;
    esac
done
shift $((OPTIND -1))

# 获取当前终端路径
current_dir=$(pwd)
echo "当前终端路径：$current_dir"

echo "当前的 shell：$SHELL "



# 加载 shell 配置文件以获取别名
source ~/.zshrc

# 输出即将执行的命令
echo "正在执行命令: $@"

# 执行命令
"$@"

# 检查命令执行结果
while [ $? -ne 0 ]; do
    # 如果命令执行失败，等待一段时间再次执行
    for (( i = $wait_time; i > 0; i-- )); do
        echo -ne "命令执行失败(失败次数：$(repeat_count + 1))，等待 $i 秒后尝试重新执行...\r"
        sleep 1
    done
    repeat_count=$((repeat_count + 1))
    echo ""
    echo "当前终端路径：$current_dir"
    echo "正在执行命令($repeat_count：次): $@"
    "$@"
done

# 如果命令执行成功，输出成功信息以及重复执行的次数
echo "命令执行成功，重复执行 $repeat_count 次"
