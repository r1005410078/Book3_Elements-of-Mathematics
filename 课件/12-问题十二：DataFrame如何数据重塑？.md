



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>

# <font color='red'>问题十二：DataFrame如何数据重塑？</font>

在Pandas中，数据重塑是指将DataFrame在行列之间进行转换，使得数据的结构重新组织。

常见的数据重塑操作包括转置、行列互换、以及使用`melt`和`pivot`等方法进行长宽表转换。

以下是常见的数据重塑方法：

1. 转置：使用`.T`属性将DataFrame进行转置，即将行和列进行交换。

```python
import pandas as pd

# 示例数据
data = {
    'Name': ['张三', '李四', '王五'],
    'Math': [90, 85, 78],
    'English': [85, 80, 92]
}

df = pd.DataFrame(data)

# 转置DataFrame
df_transposed = df.T
display(df_transposed)
```

2. 使用`melt`进行长表转换：将宽表转换为长表，即将列名转换为数据中的值。

```python
# 示例数据
data = {
    'Name': ['张三', '李四', '王五'],
    'Math': [90, 85, 78],
    'English': [85, 80, 92]
}

df = pd.DataFrame(data)

# 使用melt方法进行长表转换
df_melted = df.melt(id_vars='Name', var_name='Subject', value_name='Score')
display(df_melted)
```

3. 使用`pivot`进行宽表转换：将长表转换为宽表，即将某一列的值作为列名（melt函数反向操作）。

```python
# 示例数据
data = {
    'Name': ['张三', '张三', '李四', '李四', '王五', '王五'],
    'Subject': ['Math', 'English', 'Math', 'English', 'Math', 'English'],
    'Score': [90, 85, 85, 80, 78, 92]
}

df = pd.DataFrame(data)

# 使用pivot方法进行宽表转换
df_pivoted = df.pivot(index='Name', columns='Subject', values='Score')
display(df_pivoted)
```

这些是常见的数据重塑方法，你可以根据实际需求选择适合的方法进行数据重塑。这些操作对于数据透视和整理数据结构非常有用。

