



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题六十七：pandas字符串更多操作有哪些？</font>

上个案例展示了如何使用 Pandas 的字符串处理方法来从电子邮件地址中提取域名部分。除了这个例子，你还可以使用字符串方法进行大小写转换、去除空格、替换文本等操作，以及更复杂的正则表达式匹配等处理。无论是数据清洗还是特征提取，Pandas 的字符串处理功能都能够帮助你更加高效地处理字符串数据。

这里结合学生数据,给出一个使用pandas字符串操作的示例:

```python
import pandas as pd

# 创建学生数据
data = {'name': [' John ', 'mary ', 'tom', 'Ada wong'], 
        'gender': ['m', 'f', 'm', 'f'],
        'score': [88, 90, 95, 92]}
students = pd.DataFrame(data)

# 名字列转换为大写并去空格
students['name'] = students['name'].str.upper().str.strip()

# 性别列将f替换为female, m替换为male
students['gender'] = students['gender'].replace({'f': 'female', 'm': 'male'})

# 成绩大于90的标记为excellent
students.loc[students['score']>90, 'level'] = 'excellent'

print(students)
```

输出:

```
   name  gender  score       level
0  JOHN    male     88         NaN
1  MARY  female     90         NaN
2   TOM    male     95  excellent
3  ADA WONG  female     92         NaN
```

这样通过str的vectorized字符串方法,结合replace以及条件判断,我们可以快速完成列的字符串处理和文本转换。

结合实际数据,pandas字符串函数提供了非常便捷的文本处理能力。