



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题四十七：transform分组聚合如何操作？</font>

在Pandas中，`transform` 和 `apply` 都用于对分组数据进行操作，但它们有一些重要的区别。

`transform` 用于对每个分组内的数据进行转换，返回一个与原始数据相同大小的结果。这意味着经过 `transform` 后的结果会被广播回原始数据的相应位置。这使得 `transform` 在保持数据形状和索引的情况下进行分组计算非常有用。

```python
import pandas as pd

data = {
    'user_id': [1, 2, 3, 4, 5, 6],
    '渠道': ['Alipay', 'WeChat', 'Alipay', 'WeChat', 'Alipay', 'WeChat'],
    '金额': [100, 150, 120, 180, 90, 200]
}
df = pd.DataFrame(data)
df
```

然后，你可以使用`groupby`和`transform`来进行分组聚合操作：

```python
def calculate_payment(group):
    return group.mean().round(2)

result = df.groupby(by = '渠道').transform(calculate_payment)
result
```
