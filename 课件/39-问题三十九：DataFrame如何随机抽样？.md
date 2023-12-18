



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题三十九：DataFrame如何随机抽样？</font>

在 Pandas 中，可以使用 `sample()` 方法对 DataFrame 进行随机抽样。`sample()` 方法可以从 DataFrame 中随机选择指定数量的行或列，并返回一个新的 DataFrame。

以下是 `sample()` 方法的常用参数和用法：

```python
import pandas as pd

# 示例数据，假设您有一个名为 "df" 的 DataFrame
data = {
    'A': [1, 2, 3, 4, 5],
    'B': [10, 20, 30, 40, 50],
    'C': [100, 200, 300, 400, 500]
}
df = pd.DataFrame(data)

# 对 DataFrame 进行随机抽样，默认抽取1行
sampled_df = df.sample()

# 指定抽取的行数（比例），例如抽取50%的行
sampled_df = df.sample(frac=0.5)

# 指定抽取的行数（具体数量），例如抽取2行
sampled_df = df.sample(n=2)

# 抽取指定列的数据，例如抽取列 'A' 和 'B'
sampled_df = df[['A', 'B']].sample()

print(sampled_df)
```

在上述示例中，我们首先创建了一个 DataFrame `df`，包含三列数据 'A'、'B' 和 'C'。然后，我们使用 `sample()` 方法对 DataFrame 进行不同类型的随机抽样：

1. 默认情况下，`sample()` 方法将随机抽取1行，并返回一个新的 DataFrame。
2. 通过设置 `frac` 参数，可以指定抽取的行数比例，例如抽取50%的行。
3. 通过设置 `n` 参数，可以指定抽取的行数具体数量，例如抽取2行。
4. 通过传递列名列表，可以指定抽取指定列的数据。

您可以根据需要选择适合您情况的抽样方式，并在实际应用中灵活使用 `sample()` 方法。

