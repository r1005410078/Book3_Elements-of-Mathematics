



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题二十四：DataFrame简单统计函数有哪些？</font>

在Pandas的DataFrame中，有许多简单统计函数可用于对数据进行快速汇总和计算。以下是一些常用的简单统计函数：

1. `mean()`：计算数据的平均值。
2. `median()`：计算数据的中位数。
3. `sum()`：计算数据的总和。
4. `min()`：找到数据的最小值。
5. `max()`：找到数据的最大值。
6. `std()`：计算数据的标准差。
7. `var()`：计算数据的方差。
8. `count()`：计算非缺失值的数量。
9. `quantile()`：计算数据的分位数。
10. `describe()`：生成数据的描述性统计信息，包括计数、均值、标准差、最小值、25%分位数、中位数、75%分位数和最大值。
11. `value_counts()`：计算每个唯一值出现的频次。
12. `idxmin()`：找到数据中最小值的索引位置。
13. `idxmax()`：找到数据中最大值的索引位置。

以下是一个示例，展示如何在Pandas的DataFrame上应用这些简单统计函数：

```python
import pandas as pd

# 创建示例DataFrame
df = pd.DataFrame(np.random.randint(0,20,size = (20,3)),
                  columns=['A','B','C'])

# 计算平均值
print("Mean:")
print(df.mean())

# 计算中位数
print("\nMedian:")
print(df.median())

# 计算总和
print("\nSum:")
print(df.sum())

# 找到最小值
print("\nMin:")
print(df.min())

# 找到最大值
print("\nMax:")
print(df.max())

# 计算标准差
print("\nStandard Deviation:")
print(df.std())

# 计算方差
print("\nVariance:")
print(df.var())

# 计算非缺失值数量
print("\nCount:")
print(df.count())

# 计算分位数
print("\nQuantile:")
print(df.quantile([0.25, 0.5, 0.75]))

# 生成描述性统计信息
print("\nDescribe:")
print(df.describe())

# 计算唯一值的频次
print("\nValue Counts:")
print(df['A'].value_counts())

# 找到最小值和最大值的索引位置
print("\nIndex of Min:")
print(df['B'].idxmin())

print("\nIndex of Max:")
print(df['C'].idxmax())
```

这些简单统计函数在Pandas中非常实用。