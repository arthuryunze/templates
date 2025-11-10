# 换国内apt源
RUN rm -rf /etc/apt/sources.list.d/*
RUN rm -rf /etc/apt/sources.list

# 创建新的 sources.list 文件，仅使用 USTC 镜像
RUN echo "deb http://mirrors.ustc.edu.cn/debian bookworm main contrib non-free non-free-firmware\n\
deb http://mirrors.ustc.edu.cn/debian bookworm-updates main contrib non-free non-free-firmware\n\
deb http://mirrors.ustc.edu.cn/debian-security bookworm-security main contrib non-free non-free-firmware" > /etc/apt/sources.list

