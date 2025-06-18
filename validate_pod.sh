#!/bin/bash

# 清理环境
pod cache clean --all
rm -rf ~/Library/Developer/Xcode/DerivedData/*
rm -rf Pods

# 使用详细模式验证
pod lib lint --verbose --allow-warnings --skip-tests --skip-import-validation

# 如果失败，使用 no-clean 模式检查
if [ $? -ne 0 ]; then
  echo "首次验证失败，使用 --no-clean 模式检查详细错误"
  pod lib lint --no-clean --verbose
fi
