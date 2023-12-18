



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题六十六：DataFrame邮箱如何提取域名？</font>

当涉及到对字符串数据进行处理时，Pandas 提供了丰富的字符串处理方法，可以让你更轻松地清洗、提取、转换和处理字符串数据。下面我将通过一个实际案例来说明如何在 Pandas 中进行字符串处理。

假设你有一个包含电子邮件地址的 DataFrame，并且你想从这些电子邮件地址中提取出域名部分。下面是一个示例：

```python
import pandas as pd

# 创建一个包含电子邮件地址的DataFrame
data = {'Email': ['user1@example.com', 'user2@gmail.com', 'user3@yahoo.com', 'user4@hotmail.com']}
df = pd.DataFrame(data)

# 提取域名部分
df['Domain'] = df['Email'].str.split('@').str.get(1)

df
```

这段代码的关键部分是使用了 Pandas 的字符串处理方法：

- `.str.split('@')`：这会将每个电子邮件地址拆分成两部分，返回一个包含两个元素的列表，其中第一个元素是用户名部分，第二个元素是域名部分。

- `.str.get(1)`：这会从拆分后的列表中获取第二个元素，即域名部分。

运行这段代码后，你会得到如下的 DataFrame：

```
               Email      Domain
0  user1@example.com    example.com
1   user2@gmail.com     gmail.com
2   user3@yahoo.com      yahoo.com
3  user4@hotmail.com  hotmail.com
```

这个例子展示了如何使用 Pandas 的字符串处理方法来从电子邮件地址中提取域名部分。除了这个例子，你还可以使用字符串方法进行大小写转换、去除空格、替换文本等操作，以及更复杂的正则表达式匹配等处理。无论是数据清洗还是特征提取，Pandas 的字符串处理功能都能够帮助你更加高效地处理字符串数据。