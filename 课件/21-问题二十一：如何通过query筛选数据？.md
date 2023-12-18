



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题二十一：如何通过query筛选数据？</font>

 `query()` 方法允许您使用类似 SQL 的表达式来筛选数据。 

```python
import pandas as pd

# 创建示例DataFrame
data = {'Name': ['Alice', 'Bob', 'Charlie', 'David'],
        'Age': [25, 30, 22, 28],
        'Salary': [50000, 60000, 45000, 70000]}
df = pd.DataFrame(data)
# 使用 .query() 筛选年龄大于等于 25 并且薪资大于等于 55000 的数据
df2 = df.query('Age >= 25 and Salary >= 55000')
df2
```



