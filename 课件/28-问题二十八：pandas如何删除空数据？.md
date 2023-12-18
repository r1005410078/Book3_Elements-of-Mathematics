



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题二十八：pandas如何删除空数据？</font>

在Pandas中，可以使用`dropna()`方法删除包含空数据（NaN）的行或列。空数据可能是由于数据缺失或未定义的情况导致的，在数据分析和预处理过程中，删除这些空数据可以使数据更加干净和可靠。

`dropna()`方法有几个参数，但常用的是`axis`和`how`：

- `axis`：指定删除行（axis=0，默认）还是删除列（axis=1）中包含空数据的部分。
- `how`：指定删除包含空数据的行或列的方式。
  - `any`：只要该行或列中包含一个空数据，就删除该行或列（默认）。
  - `all`：只有当该行或列的所有数据都为空时，才删除该行或列。

下面是一个示例代码：

```python
import pandas as pd
import numpy as np

# 创建一个包含空数据的示例DataFrame
data = {
    'A': [1, 2, np.nan, 4],
    'B': [5, np.nan, 7, 8],
    'C': [9, 10, 11, 12]
}
df = pd.DataFrame(data)

# 打印原始DataFrame
print("原始DataFrame:")
print(df)

# 删除包含空数据的行
df_cleaned_rows = df.dropna()

# 删除包含空数据的列
df_cleaned_cols = df.dropna(axis=1)

print("\n删除包含空数据的行:")
print(df_cleaned_rows)

print("\n删除包含空数据的列:")
print(df_cleaned_cols)
```

在上述示例中，我们创建了一个包含空数据的DataFrame，然后使用`dropna()`方法删除了包含空数据的行和列。在删除行时，默认是`how='any'`，只要行中包含一个空数据，就会被删除；而在删除列时，默认是`how='any'`，只要列中包含一个空数据，就会被删除。