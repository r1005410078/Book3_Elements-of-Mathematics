



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题三十七：apply函数如何传递参数【高级】？</font>

`apply()` 函数的 `args` 参数用于传递额外的参数给自定义函数，从而实现更加灵活的数据处理。当自定义函数需要使用除了行或列数据之外的其他参数时，可以使用 `args` 参数将这些参数传递给函数。

下面是一个高级使用的示例，演示如何使用 `apply()` 函数的 `args` 参数：

```Python
import pandas as pd

# 示例数据，假设您有一个名为 "grades" 的 DataFrame，包含三列数据 "name"、"Python" 和 "Math"。
data = {
    'name': ['Alice', 'Bob', 'Charlie', 'David', 'Eva'],
    'Python': [85, 78, 92, 65, 80],
    'Math': [90, 85, 78, 88, 92]
}
grades = pd.DataFrame(data)

# 定义一个自定义函数，用于计算加权平均分
def convert(row, w1, w2):
    return row['Python'] * w1 + row['Math'] * w2

# 使用 apply() 方法按行应用自定义函数，并传递额外的参数 args=(0.6, 0.4)
grades['加权平均'] = grades.apply(convert,axis=1,args=(0.6,0.4))

grades
```

