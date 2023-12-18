



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题三十一：pandas如何删除异常值？</font>

在Pandas中，处理异常值是数据清洗和预处理过程中非常重要的一部分。异常值（Outliers）是与其余数据点明显不同的值，它们可能是由于数据收集错误、测量误差或其他异常情况引起的。处理异常值的目标是使数据更加准确、可靠，并且适合用于后续的数据分析和建模。

一般来说，处理异常值的方法可以分为以下几种：

1.  **3σ法则**：计算数据的均值和标准差，然后根据3σ法则，将位于均值±3倍标准差之外的数据视为异常值。 
2.  **箱线图（IQR方法）**：绘制箱线图，根据数据的四分位数（Q1、Q3）和四分位距（IQR=Q3-Q1），将位于Q1-1.5*IQR和Q3+1.5*IQR之外的数据视为异常值。 
3.  **领域知识**：根据数据的领域知识和业务规则来确定异常值，例如在某个业务场景下，超过一定范围的数据可能被视为异常。 

```Python
import pandas as pd

# 创建一个包含异常值的示例Series
data = pd.Series(np.random.randint(0,100,size = 300))

data.iloc[-1] = 300

# 计算均值和标准差
mean = data.mean()
std = data.std()

# 计算上限和下限
upper_limit = mean + 3 * std
lower_limit = mean - 3 * std

# 检测异常值
cond = (data > upper_limit) | (data < lower_limit)
outliers = data[cond]

print("原始数据:")
print(data)

print("\n异常值:")
print(outliers)
```

删除异常值

```Python
# 方式一
data[~cond] 
# 方式二
index = data[cond].index
data.drop(index)
```

