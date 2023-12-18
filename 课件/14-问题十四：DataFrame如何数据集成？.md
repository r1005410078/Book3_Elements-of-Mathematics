



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题十四：DataFrame如何数据集成？</font>

在Pandas中，可以使用多种方法将多个DataFrame进行合并。常见的合并操作包括`concat`、`merge`和`join`。这些方法可以根据不同的需求进行不同类型的合并。

下面首先介绍concat函数使用

1. 使用`concat`进行行或列合并：

`concat`方法用于将多个DataFrame按行或列方向进行合并。默认情况下，是按行方向进行合并。

```python
import pandas as pd
# 一班考试成绩
df1 = pd.DataFrame(np.random.randint(0,151,size = (51,2)),columns=['Python','Math'])
# 二班考试成绩
df2 = pd.DataFrame(np.random.randint(0,151,size = (49,2)),columns=['Python','Math'])

# 按行方向合并
df = pd.concat([df1, df2])
df
```

如果需要按列方向合并，可以设置`axis=1`参数：

```python
import pandas as pd
# 一班文化课考试成绩
df1 = pd.DataFrame(np.random.randint(0,151,size = (51,2)),columns=['Python','Math'])
# 一班体育考试成绩
df2 = pd.DataFrame(np.random.randint(0,151,size = (51,2)),columns=['篮球','足球'])

# 按列方向合并
df = pd.concat([df1, df2],axis = 1)
df
```

合并能够让你将不同的数据源整合在一起，方便数据处理和分析。