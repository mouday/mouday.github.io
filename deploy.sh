
yarn run build && \

git clone --depth 1 git@github.com:mouday/mouday.github.io.git site && \

cp -r ./dist/* ./site/ && cd site && \

git add . && git commit -m "auto add" && git push

cd .. && rm -rf site

echo "发布完成"
