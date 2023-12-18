



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>



# <font color='red'>问题五：Series有哪些属性？</font>

在 Pandas 中，Series 是一种一维数据结构，它具有许多有用的属性和方法。以下是 Series 常用的属性：

1. `values`：返回 Series 中的数据值（元素）组成的数组（或 NumPy 数组）。
   示例：`series.values`

2. `index`：返回 Series 的索引（标签）组成的数组。
   示例：`series.index`

3. `dtype`：返回 Series 中数据的数据类型。
   示例：`series.dtype`

4. `size`：返回 Series 中元素的个数（长度）。
   示例：`series.size`

5. `shape`：返回表示 Series 维度的元组，通常是 `(n,)`，其中 `n` 是 Series 中元素的个数。
   示例：`series.shape`

6. `name`：返回 Series 的名称。Series 对象可以有一个名称，类似于列名。
   示例：`series.name`

8. `ndim`：返回 Series 的维度数，对于 Series 固定为 1。
   示例：`series.ndim`

这些属性可用于快速查看和了解 Series 的结构、属性和元数据。例如，可以使用 `values` 属性获取 Series 中的数据值，使用 `index` 属性获取 Series 的索引，以及使用 `dtype` 属性查看数据的数据类型。在进行数据处理和分析时，这些属性通常用于检查数据的基本信息和描述性统计。

示例：
```python
import pandas as pd

data = [10, 20, 30, 40, 50]
index = ['A', 'B', 'C', 'D', 'E']
series = pd.Series(data, index=index, name='MySeries')

print(series.values)  # 输出：[10 20 30 40 50]
print(series.index)   # 输出：Index(['A', 'B', 'C', 'D', 'E'], dtype='object')
print(series.dtype)   # 输出：int64
print(series.size)    # 输出：5
print(series.shape)   # 输出：(5,)
print(series.name)    # 输出：MySeries
print(series.ndim)    # 输出：1
```

这些属性提供了关于 Series 数据的基本信息，帮助我们更好地理解和操作 Series 对象。