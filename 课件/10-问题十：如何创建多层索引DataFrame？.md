



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>


# <font color='red'>问题十：DataFrame如何创建多层索引？</font>

在Pandas中，可以使用多种方法创建多层索引的DataFrame。下面介绍几种常见的方法：

方法一：使用`pd.MultiIndex.from_tuples`创建多层索引

```python
import pandas as pd

# 创建一个元组列表作为多层索引的标签
index_labels = [('张三', '期中'), ('张三', '期末'), ('李四', '期中'), ('李四', '期末')]

# 使用pd.MultiIndex.from_tuples创建多层索引
multi_index = pd.MultiIndex.from_tuples(index_labels, names=['Name', 'Exam'])

# 创建DataFrame
data = {
    'Python': [98, 149, 130, 147],
    'Math': [88, 136, 117, 100]}

df = pd.DataFrame(data, index=multi_index)
display(df)
```

方法二：使用`pd.MultiIndex.from_arrays`创建多层索引

```python
import pandas as pd

# 创建多维数组作为多层索引的标签
index_labels = [['张三', '张三', '李四', '李四'], ['期中', '期末', '期中', '期末']]

# 使用pd.MultiIndex.from_arrays创建多层索引
multi_index = pd.MultiIndex.from_arrays(index_labels, names=['Name', 'Exam'])

# 创建DataFrame
data = {
    'Python': [98, 149, 130, 147],
    'Math': [88, 136, 117, 100]}

df = pd.DataFrame(data, index=multi_index)
display(df)
```

方法三：使用`pd.MultiIndex.from_product`创建多层索引

```python
import pandas as pd
import numpy as np

# 创建多层索引的标签的笛卡尔积
index_labels = pd.MultiIndex.from_product([['张三', '李四','王五','赵六'], 
                                           ['期中', '期末']],names=['Name','Exam'])

# 创建DataFrame
df = pd.DataFrame(data = np.random.randint(80,151,size = (8,2)),
                  index=index_labels,columns=['Python','Math'])
display(df)
```

无论使用哪种方法，你都将得到一个拥有多层索引的DataFrame。多层索引使得可以更灵活地对数据进行分组和查询。在上述示例中，第一级索引是'Name'，第二级索引是'Exam'，你可以根据需要替换这些名称。