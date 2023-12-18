



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题九：Pandas如何向Excel中写入多个表单？</font>

要将多个 Pandas DataFrame 写入到一个 Excel 文件中，可以使用 Pandas 的 `ExcelWriter` 对象。`ExcelWriter` 允许你将多个 DataFrame 写入到同一个 Excel 文件的不同 sheet 中。下面是实现这一功能的步骤：

1. 创建多个 DataFrame；
2. 创建一个 `ExcelWriter` 对象，并将要写入的 Excel 文件名作为参数传递；
3. 使用 `to_excel()` 方法将每个 DataFrame 写入到不同的 sheet 中；

示例代码：

```python
import pandas as pd

# 假设有两个 DataFrame
data1 = {'Name': ['Alice', 'Bob', 'Charlie'],
         'Age': [25, 30, 35],
         'City': ['New York', 'London', 'Paris']}
df1 = pd.DataFrame(data1)

data2 = {'Product': ['A', 'B', 'C'],
         'Price': [10, 20, 30],
         'Quantity': [100, 200, 300]}
df2 = pd.DataFrame(data2)

# 创建一个 ExcelWriter 对象，并指定要写入的 Excel 文件名
with pd.ExcelWriter('多表.xlsx', engine='openpyxl') as ew:
    # 将每个 DataFrame 写入到不同的 sheet 中
    df1.to_excel(ew, sheet_name='Sheet1', index=False)
    df2.to_excel(ew, sheet_name='Sheet2', index=False)
```

在上述示例中，我们首先创建了两个 DataFrame `df1` 和 `df2`，然后使用 with 语法创建 `ew` 的 `ExcelWriter` 对象，并将输出文件名 `'多表.xlsx'` 传递给它。接着，我们使用 `to_excel()` 方法将每个 DataFrame 写入到一个不同的 sheet 中，分别命名为 `'Sheet1'` 和 `'Sheet2'`。with语法结束，文件自动保存。

运行这段代码后，`多表.xlsx` 文件将包含两个不同的 sheet，每个 sheet 分别对应一个 DataFrame 的数据。