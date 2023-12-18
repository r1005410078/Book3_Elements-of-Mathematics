



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>

# <font color='red'>问题七：如何创建DataFrame？</font>

在 Pandas 中，有多种方式可以创建 DataFrame。以下是常用的创建 DataFrame 的方法：

1. 从字典创建 DataFrame：
   可以使用 Python 字典来创建 DataFrame，其中字典的键将成为 DataFrame 的列名，而字典的值将成为 DataFrame 的列数据。

   示例：
   ```python
   import pandas as pd

   data = {
       'Name': ['Alice', 'Bob', 'Charlie'],
       'Age': [25, 30, 35],
       'City': ['New York', 'London', 'Paris']
   }

   df = pd.DataFrame(data)
   df
   ```
   
2. 从列表嵌套元组或列表的列表创建 DataFrame：
   可以使用包含元组或列表的列表来创建 DataFrame，其中每个元组或列表表示一行数据。

   示例：
   ```python
   import pandas as pd

   data = [('Alice', 25, 'New York'),
           ('Bob', 30, 'London'),
           ('Charlie', 35, 'Paris')]

   df = pd.DataFrame(data, columns=['Name', 'Age', 'City'])
   df
   ```
   
3. 从 NumPy 数组创建 DataFrame：
   可以使用 NumPy 数组来创建 DataFrame。

   示例：
   ```python
   import pandas as pd
   import numpy as np

   data = np.array([[10, 20, 30],
                    [40, 50, 60],
                    [70, 80, 90]])

   df = pd.DataFrame(data, columns=['A', 'B', 'C'])
   df
   ```
   

这些是常用的创建 DataFrame 的方法。根据数据来源和格式的不同，选择适合的方法来创建 DataFrame，然后就可以对数据进行灵活的操作和分析了。