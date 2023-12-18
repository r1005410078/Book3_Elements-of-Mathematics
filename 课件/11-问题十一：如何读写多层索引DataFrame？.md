



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>



# <font color='red'>问题十一：如何读写多层索引DataFrame？</font>

在Pandas中，可以使用不同的方法读取和写入多层索引的DataFrame。

常见的文件格式包括CSV、Excel。我将分别展示如何读取和写入这些文件格式。 

文件写入：调用`to_`函数

```python
# 将多层索引的DataFrame写入文件
df.to_csv('multi_index.csv')
df.to_excel('multi_index.xlsx')
```

文件读取：调用`read_`函数，注意声明`index_col`参数

```python
# 读取CSV文件并指定多层索引的列名
df_csv = pd.read_csv('multi_index.csv', index_col=['Name', 'Exam'])
# 读取Excel文件并指定多层索引的列名
df_excel = pd.read_excel('multi_index.xlsx', index_col=['Name', 'Exam'])
```
