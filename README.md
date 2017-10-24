
![logo](pic/logo.png)

# 身份证号数据预处理函数

徐静

## 安装

`devtools::install_github('DataXujing/idprep',dependencies=TRUE)`

## 函数介绍

+ ages: 由身份证号计算年龄

+ genders： 由身份证号计算性别

+ vvply: 向量化函数操作

+ Province: 由身份证号计算省份

+ %d% 自定义中缀函数，广义除法运算，该运算使得分母是0的除法，带无穷的除法，带缺失值的除法，带非数字的除法有意义
