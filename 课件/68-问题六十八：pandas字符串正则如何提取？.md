



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题六十八：pandas字符串正则如何提取？</font>

假设你有一个包含销售数据的 DataFrame，其中产品名称包含了一些额外的信息，例如产品类别和规格。你希望从产品名称中提取出产品类别和规格信息。以下是一个从这些列中提取信息的示例：

```python
import pandas as pd

data = {'Product': ['Widget - CategoryA - Large', 'Gadget - CategoryB - Small', 'Device - CategoryA - Medium']}
df = pd.DataFrame(data)

# 使用正则表达式从 Product 列中提取产品类别和规格
df[['Name','Category', 'Size']] = df['Product'].str.extract(r'^(.*?) - (.*?) - (.*)$')

df
```

在这个示例中，我们使用正则表达式来从 `Product` 列中提取产品类别和规格：

- `^(.*?) - (.*?) - (.*)$` 是一个正则表达式，其中 `^` 表示匹配字符串的开头，`$` 表示匹配字符串的结尾。`(.*?)` 是非贪婪匹配，用于依次提取产品名称、类别和规格。

运行这段代码后，你会得到以下 DataFrame：

```
Product	Name	Category	Size
0	Widget - CategoryA - Large	Widget	CategoryA	Large
1	Gadget - CategoryB - Small	Gadget	CategoryB	Small
2	Device - CategoryA - Medium	Device	CategoryA	Medium
```

在实际销售数据分析中，你可以运用类似的技巧从字符串中提取出各种重要信息，帮助你更好地理解和分析销售数据。请注意，实际数据的格式可能有所不同，你需要根据实际情况调整正则表达式以及提取方式。