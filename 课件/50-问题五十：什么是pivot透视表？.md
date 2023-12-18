



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题五十：什么是pivot透视表？</font>

在 Pandas 中，透视表（Pivot Table）是一种数据汇总工具，它允许你根据一个或多个列对数据进行分组，并且可以对这些分组进行聚合操作，然后将聚合后的结果以一种易于理解的方式呈现出来。透视表常用于数据分析和汇总报告中，可以帮助你更好地理解数据的关系和模式。

**语法：**
```python
pivot_table(data, values=None, index=None, columns=None, aggfunc='mean', ...)
```

- `data`: 要进行透视表操作的数据框（DataFrame）。
- `values`: 需要聚合的列名。
- `index`: 透视表的行索引（用于分组的列名）。
- `columns`: 透视表的列索引（可选，用于分组的列名）。
- `aggfunc`: 聚合函数，用于计算每个分组的值（默认为 'mean'）。

以下是一个示例，展示如何使用透视表来分析销售数据：

```python
import pandas as pd

data = {
    'Category': ['A', 'B', 'A', 'B', 'A', 'B', 'A', 'A'],
    'Region': ['North', 'North', 'South', 'South', 'North', 'South', 'North', 'South'],
    'Revenue': [100, 200, 150, 250, 120, 180, 130, 110]
}

df = pd.DataFrame(data)

pivot_result = df.pivot_table(values='Revenue', index='Category', columns='Region', aggfunc='sum')
print(pivot_result)
```

在上述示例中，我们使用了 `pivot_table` 方法来生成一个透视表，其中：
- `values` 设置为 `'Revenue'`，表示要聚合的列是 `'Revenue'` 列。
- `index` 设置为 `'Category'`，表示透视表的行索引是 `'Category'` 列，即按照类别分组。
- `columns` 设置为 `'Region'`，表示透视表的列索引是 `'Region'` 列，即按照地区分组。
- `aggfunc` 设置为 `'sum'`，表示使用求和函数进行聚合。

这个透视表展示了每个类别在不同地区的收入总和。透视表可以在不同维度上对数据进行聚合和分析，帮助你更好地理解数据的特征和关系。

```Python
import numpy as np
import pandas as pd
# 准备数据
df = pd.DataFrame(data = {'sex':np.random.randint(0,2,size = 300), # 0男，1女
                          'class':np.random.randint(1,9,size = 300),#1~8八个班
                          'Python':np.random.randint(0,151,size = 300),#Python成绩
                          'Math':np.random.randint(0,151,size =300),#Keras成绩
                          'Chinese':np.random.randint(0,151,size=300)})
df['sex'] = df['sex'].map({0:'男',1:'女'}) # 将0，1映射成男女
# 透视表也是一种分组聚合运算
df.pivot_table(values=['Python','Math','Chinese'],# 要透视分组的值
               index=['class','sex'], # 分组透视指标
               aggfunc={'Python':[('最大值',np.max)], # 聚合运算
                        'Math':[('最小值',np.min),('中位数',np.median)],
                        'Chinese':[('最小值',np.min),('平均值',np.mean),('计数',pd.Series.count)]})
```

