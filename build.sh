export GOOS=darwin       # 设置目标操作系统为 macOS
export GOARCH=arm64      # 设置目标处理器架构为 arm64
go build -o app-arm64    # 编译 M1 版本的二进制包
export GOARCH=amd64      # 设置目标处理器架构为 x86_64
go build -o app-x86_64   # 编译 Intel 版本的二进制包
lipo -create app-arm64 app-x86_64 -output qvh   # 将两个二进制包合并成一个通用包
