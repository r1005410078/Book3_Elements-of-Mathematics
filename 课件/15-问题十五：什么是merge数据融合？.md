



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题十五：什么是merge数据融合？</font>

在Pandas中，`merge`函数用于将两个DataFrame根据共同的列进行数据融合。

这是一种基于列的合并操作，可以将两个DataFrame中的数据按照指定的共同列进行连接，类似于SQL中的JOIN操作。 

```Python
import numpy as np
import pandas as pd
data1 = {
    'ID': [1, 2, 3],
    'Name': ['Alice', 'Bob', 'Charlie']
}

data2 = {
    'ID': [2, 3, 4],
    'Age': [25, 30, 22]}

df1 = pd.DataFrame(data1)
df2 = pd.DataFrame(data2)

# 基于'ID'列合并
df = pd.merge(df1, df2, on='ID')
df
```

基于行索引，进行数据融合

```Python
import numpy as np
import pandas as pd
df1 = pd.DataFrame(np.random.randint(0,151,size = (50,2)),columns=['Python','Math'])

# 求考试平均分
df2 = df1.mean(axis = 1)
# 转变为DataFrame
df2 = df2.to_frame(name = '平均分') 
# 根据行索引，数据融合
df = pd.merge(df1,df2,left_index=True,right_index=True)
df
```

