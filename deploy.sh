
# 编译
yarn run build && \

# 推page分支
# git add . && git commit -m "auto add" && git push && \

# 克隆master分支
# git clone --depth 1 git@github.com:mouday/mouday.github.io.git site && \

# 删除原有资源文件
rm -rf ./site/css && \
rm -rf ./site/fonts && \
rm -rf ./site/js && \
rm -rf ./site/img && \
rm -f ./site/index.html && \

# 拷贝
cp -r ./dist/* ./site/ && cd site && \

# 添加push
git add . && git commit -m "auto add" && git push && \

# 删除
# cd .. && rm -rf site

echo "发布完成"
