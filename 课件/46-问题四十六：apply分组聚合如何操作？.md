



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题四十六：apply分组聚合如何操作？</font>

在Pandas中，你可以使用`groupby`方法将数据按照某些列的值进行分组，然后通过`apply`函数对每个分组应用自定义的函数进行聚合操作。这可以帮助你进行更复杂的数据处理和分析。下面是一个简单的示例，展示了如何使用`groupby`和`apply`来进行分组聚合操作：

假设你有一个电力用户缴费的数据集，其中包含用户ID、缴费渠道、缴费金额等信息，你想要按照不同的缴费渠道，计算每种缴费渠道的平均缴费金额。

首先，导入必要的库和创建一个示例数据集：

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

然后，你可以使用`groupby`和`apply`来进行分组聚合操作：

```python
# 使用groupby按缴费渠道分组，并使用apply应用自定义的聚合函数
def calculate_mean_payment(group):
    return group['金额'].mean().round(2)

result = df.groupby('渠道').apply(calculate_mean_payment)
result.to_frame(name = '平均值')
```

在这个示例中，`calculate_mean_payment`函数被应用在每个分组上，计算每个缴费渠道的平均缴费金额。输出结果会显示每个缴费渠道对应的平均缴费金额。

这只是一个简单的示例，实际中你可以根据需要编写更复杂的聚合函数，并结合`apply`来进行更多的数据处理和分析操作。