#!/bin/bash

# 默认等待时间（秒）
wait_time=10

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

# 输出即将执行的命令
echo "正在执行命令: $@"

# 切换到当前终端路径
echo "切换到当前终端路径：$(dirname "$0"):"
cd "$(dirname "$0")"

# 执行命令
"$@"

# 检查命令执行结果
if [ $? -ne 0 ]; then
    # 如果命令执行失败，等待一段时间再次执行
    echo "命令执行失败，等待 $wait_time 秒后尝试重新执行..."
    sleep $wait_time
    "$@"
else
    # 如果命令执行成功，输出成功信息
    echo "命令执行成功"
fi
