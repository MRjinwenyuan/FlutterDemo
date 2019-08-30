
# 要先给权限 sudo chmod 777 + 本文件路径

cd $(dirname $0)

flutter packages pub run build_runner clean

flutter packages pub run build_runner build --delete-conflicting-outputs