# mk_vsmeta

## 使用条件
只限Windows上GBK编码的Powershell/CMD

## 目的
ysy大佬的代码转换在windows上用会有GBK和UTF-8编码问题，win11的Powershell/CMD的编码我实在搞不定了就加了个编码转换模块。

## 编译
需要用到g++进行编译，参考Makefile

## 使用
./mk_vsmeta.exe -s [季编号] -e [集编号] -t [剧名] -n [集名] [生成文件名]

## 配合bat使用
* 1.把mk_vsmeta.exe与把mk_vsmeta.bat都放在剧集目录下。
* 2.把剧集名字改成形如： [剧名].[S01].[E01].[集名].mp4
* 3.点击把mk_vsmeta.bat执行

## 生成vsmeta代码参考自
[ysy/mk_vsmeta](https://github.com/ysy/mk_vsmeta)