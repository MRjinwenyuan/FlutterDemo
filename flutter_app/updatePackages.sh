
# 要先给权限 sudo chmod 777 + 本文件路径
cd $(dirname $0)

export PUB_HOSTED_URL=https://pub.flutter-io.cn

export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

flutter packages upgrade