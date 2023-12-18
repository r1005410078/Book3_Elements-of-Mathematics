



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题三十八：transform函数如何进行数据转变？</font>

在 Pandas 中，`transform()` 函数用于对数据进行转换，并返回具有相同形状的新数据，使得转换后的结果与原始数据保持对应的关系。 

```python
import numpy as np
import pandas as pd
df = pd.DataFrame(data = np.random.randint(0,10,size = (10,3)),
                  index = list('ABCDEFHIJK'),
                  columns=['Python','Math','Chinese'])
df.iloc[4,2] = None # 空数据

# 1、一列执行多项计算
df['Python'].transform([np.sqrt,np.exp]) # Series处理
def convert(x):
    if x.mean() > 5:
        x *= 10
    else:
        x *= -10
    return x
# 2、多列执行不同计算
df.apply({'Python':convert,'Math':np.sqrt,'Chinese':lambda x : x + 10}) # DataFrame处理
```
