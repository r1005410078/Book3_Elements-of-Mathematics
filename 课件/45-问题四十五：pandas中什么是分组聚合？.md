



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题四十五：pandas中什么是分组聚合操作？</font>

在 Pandas 中，分组聚合操作是一种将数据根据某个标准进行分组，然后在每个分组上应用聚合函数（如求和、平均、最大值、最小值等）的操作。这种操作可以帮助你汇总数据并得出每个分组的统计摘要信息，从而更好地理解数据的特征和模式。

常见的分组聚合操作包括：

1. **聚合函数：** 对每个分组中的数据应用聚合函数，如求和、平均、中位数、最大值、最小值等。

2. **统计函数：** 计算每个分组的统计摘要信息，如总数、均值、标准差、分位数等。


Pandas 中的分组聚合操作主要使用 `.groupby()` 方法来实现。这个方法可以根据指定的列或多个列对数据进行分组，然后使用聚合函数来处理每个分组。例如：

```python
import numpy as np
import pandas as pd
# 准备数据
df = pd.DataFrame(data = {'sex':np.random.randint(0,2,size = 300), # 0男，1女
                          'class':np.random.randint(1,9,size = 300),#1~8八个班
                          'Python':np.random.randint(0,151,size = 300),#Python成绩
                          'Keras':np.random.randint(0,151,size =300),#Keras成绩
                          'Tensorflow':np.random.randint(0,151,size=300),
                          'Java':np.random.randint(0,151,size = 300),
                          'C++':np.random.randint(0,151,size = 300)})
df['sex'] = df['sex'].map({0:'男',1:'女'}) # 将0，1映射成男女
# 2、分组直接调用函数进行聚合
# 按照性别分组，其他列均值聚合
df.groupby(by = 'sex').mean().round(1) # 保留1位小数
# 按照班级和性别进行分组，Python、Keras的最大值聚合
df.groupby(by = ['class','sex'])[['Python','Keras']].max()
# 按照班级和性别进行分组，计数聚合。统计每个班，男女人数
df.groupby(by = ['class','sex']).size()
# 基本描述性统计聚合
df.groupby(by = ['class','sex']).describe()
```

分组聚合操作可以帮助你在数据分析和报告中对数据进行汇总和统计，从而更好地理解数据的分布和特征。



