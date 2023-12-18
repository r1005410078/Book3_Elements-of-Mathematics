



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题二十二：如何修改DataFrame数据？</font>

 先筛选数据，然后将筛选的数据，进行赋值修改。

```python
import pandas as pd
import numpy as np
df = pd.DataFrame(data = np.random.randint(0,150,size = [10,3]),# 计算机科目的考试成绩
                  index = list('ABCDEFGHIJ'),# 行标签，用户
                  columns=['Python','Tensorflow','Keras']) # 考试科目
s = pd.Series(data = np.random.randint(0,150,size = 9),index=list('BCDEFGHIJ'),name = 'PyTorch')
df['PyTorch'] = s # 增加一列，DataFrame行索引自动对齐
df.loc['A','Python'] = 256 # 按标签赋值
df.iloc[3,2] = 512 # 按位置赋值
df.loc[:,'Python'] = 128 # 多值修改
df['Tensorflow'] += 10 # Tensorflow这一列每个值增加10
df[df >= 128] = -df # 大于等于128变成原来的负数，否则不变
df
```



