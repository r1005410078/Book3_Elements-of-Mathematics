



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题四十八：agg分组聚合如何操作？</font>

在 Pandas 中，`agg` 是用于分组聚合操作的方法，它允许你对数据进行分组，并在每个分组内应用一个或多个聚合函数，以生成汇总信息。这对于数据分析和汇总统计非常有用。使用示例： 

```python
import numpy as np
import pandas as pd
# 准备数据
df = pd.DataFrame(data = {'sex':np.random.randint(0,2,size = 300), # 0男，1女
                          'class':np.random.randint(1,9,size = 300),#1~8八个班
                          'Python':np.random.randint(0,151,size = 300),#Python成绩
                          'Math':np.random.randint(0,151,size =300),#Keras成绩
                          'Chinese':np.random.randint(0,151,size=300)})
df['sex'] = df['sex'].map({0:'男',1:'女'}) # 将0，1映射成男女
df
```

 我们可以对 `class` 列进行分组，然后使用 `agg` 计算每个班级Python的平均分和中位数： 

```python
df.groupby(by = 'class')['Python'].agg([np.mean,np.median]).round(2)
```

 此外，你还可以传递自定义的聚合函数： 

```Python
def delta(item):
    return item.max() - item.min()
df2 = df.groupby(by = ['class','sex']).agg({'Math': [('最大差值',delta),('平均分',np.mean)],
                                                          'Python':[('最大值',np.max)]}).round(2)
df2
```

