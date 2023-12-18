



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题十三：DataFrame多层索引如何行列转换？</font>

在Pandas中，DataFrame的多层索引行列转换可以使用`stack`和`unstack`方法实现。

`stack`用于将列索引转换为行索引，而`unstack`用于将行索引转换为列索引。

下面是一个示例来说明如何进行多层索引的行列转换：

假设有以下的多层索引DataFrame：

```python
import pandas as pd
import numpy as np
# 多层索引
multi_index = pd.MultiIndex.from_product(
    [['张三','李四','王五','赵六'], ['期中', '期末']],
    names=['Name', 'Term'])

df = pd.DataFrame(np.random.randint(0,151,size = (8,2)),
                  index=multi_index,
                  columns=['Python','Math'])
df
```

现在，我们来演示如何进行行列转换。

1. 将列索引转换为行索引，使用`stack`方法：

```python
# 将列索引转换为行索引
df_stacked = df.stack()
df_stacked
```

2. 将行索引转换为列索引，使用`unstack`方法：

```python
# 将行索引转换为列索引
df_unstacked = df_stacked.unstack()
print(df_unstacked)
```

通过`stack`和`unstack`方法，我们可以在多层索引的DataFrame中进行行列转换。这样的转换在数据处理和分析中非常有用，可以根据实际需求进行数据结构的调整。