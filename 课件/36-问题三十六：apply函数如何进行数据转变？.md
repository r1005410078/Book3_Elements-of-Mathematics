



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题三十六：apply函数如何进行数据转变？</font>

在 Pandas 中，`apply()` 函数是用于 DataFrame 的方法，它可以用于数据转换和处理。`apply()` 方法接受一个函数作为参数，并将该函数应用到 DataFrame 中的每一行或每一列。

`apply()` 元素改变。既支持 Series，也支持 DataFrame

```Python
import numpy as np
import pandas as pd
df = pd.DataFrame(data = np.random.randint(0,10,size = (10,3)),
                  index = list('ABCDEFHIJK'),
                  columns=['Python','Math','Chinese'])
df.iloc[4,2] = None # 空数据
# 1、apply 应用方法数据转换，通用
# Series，其中x是Series中元素
df['Math'].apply(lambda x:True if x >5 else False) 
# DataFrame，其中的x是DataFrame中列或者行，是Series
df.apply(lambda x : x.median(),axis = 1) # 列的中位数
def convert(x): # 自定义方法
    return (x.mean().round(1),x.count())
df.apply(convert,axis = 1) # 行平均值，计数

# 2、applymap DataFrame专有
df.applymap(lambda x : x + 100) # 计算DataFrame中每个元素
```

以下是使用 `apply()` 函数进行数据转换的步骤：

1. 定义一个函数，该函数接受一行或一列作为参数，并根据需要进行数据处理，并返回处理后的结果。
2. 使用 `apply()` 方法，并将定义的函数作为参数传递给它。您需要指定 `axis` 参数来指定要应用函数的方向，`axis=0` 表示按列应用，`axis=1` 表示按行应用。

下面是一个示例代码，演示如何使用 `apply()` 函数来进行数据转换：

```python
import pandas as pd

# 示例数据，假设您有一个名为 "data" 的 DataFrame，包含两列数据 "A" 和 "B"。
data = pd.DataFrame({'A': [1, 2, 3, 4, 5], 'B': [10, 20, 30, 40, 50]})

# 定义一个函数，该函数将每一行的数据相加并返回结果
def sum_row(row):
    return row['A'] + row['B']

# 使用 apply() 方法按行应用自定义函数
data['Sum'] = data.apply(sum_row, axis=1)
```

在上述示例中，我们创建了一个 DataFrame `data`，包含两列数据 "A" 和 "B"，然后我们定义了一个自定义函数 `sum_row`，该函数将每一行的 "A" 列和 "B" 列数据相加，并返回结果。最后，我们使用 `apply()` 方法按行应用该自定义函数，并将处理后的结果赋值给新的列 "Sum"。

运行上述代码后，DataFrame `data` 将增加一列 "Sum"，其中的每个元素是对应行的 "A" 列和 "B" 列数据相加的结果。这样，您可以通过自定义函数方便地对 DataFrame 进行复杂的数据转换和处理。请注意，在实际使用时，自定义函数可以根据您的需求实现任意的数据转换逻辑，从而实现灵活的数据处理。