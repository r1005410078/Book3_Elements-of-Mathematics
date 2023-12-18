



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题二十九：pandas如何填充空数据？</font>

在Pandas中，可以使用`fillna()`方法来填充DataFrame中的空数据（NaN）。填充空数据是数据预处理的一个重要步骤，可以根据不同的需求，使用特定的值、均值、中位数或其他方法来填充缺失的数据。

`fillna()`方法有几个参数，其中最常用的是`value`参数，用于指定要用来填充空数据的值。

下面是一个示例代码：

```python
import pandas as pd
import numpy as np

# 创建一个包含空数据的示例DataFrame
df = pd.DataFrame(np.random.randint(0,151,size = (100,3)),columns=['Python','Math','Chinese'])
df[df < 30] = np.nan
display(df)
# 打印原始DataFrame
print("原始DataFrame:")
print(df)

# 使用指定值来填充空数据
df_filled_with_value = df.fillna(0)

# 使用列的均值来填充空数据
df_filled_with_mean = df.fillna(df.mean())

print("\n使用指定值来填充空数据:")
print(df_filled_with_value)

print("\n使用列的均值来填充空数据:")
print(df_filled_with_mean)
```



在上述示例中，我们创建了一个包含空数据的DataFrame，然后使用`fillna()`方法填充了空数据。首先使用`fillna(0)`将空数据填充为0，然后使用`fillna(df.mean())`将空数据填充为每列的均值。注意，如果使用`fillna()`方法，它会返回一个填充后的新DataFrame，如果想在原始DataFrame上进行就地填充，可以使用`inplace=True`参数，如`df.fillna(0, inplace=True)`。