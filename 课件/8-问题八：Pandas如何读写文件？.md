



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题八：Pandas如何读写文件？</font>

Pandas 提供了各种方法来读取和写入不同格式的文件。下面分别介绍如何使用 Pandas 读取和写入文件：
1. 写入文件：
   使用 Pandas 的 `to_` 开头的方法可以将 DataFrame 数据写入到文件中，常见的包括 CSV、Excel、JSON、SQL 数据库等。

   - 写入 CSV 文件：
   ```python
   import pandas as pd
import numpy as np
   df = pd.DataFrame(np.random.randint(0,151,size = (100,3)), 
                     columns=['Python', 'Math', 'En'])
   df.to_csv('output.csv', index=False)  # index=False 表示不写入行索引
```
   
   - 写入 Excel 文件：
   ```python
import pandas as pd
   import numpy as np
   df = pd.DataFrame(np.random.randint(0,151,size = (100,3)), 
                     columns=['Python', 'Math', 'En'])
df.to_excel('output.xlsx', index=False)  # index=False 表示不写入行索引
   ```
   
   - 写入 JSON 文件：
```python
   import pandas as pd
   import numpy as np
   df = pd.DataFrame(np.random.randint(0,151,size = (100,3)), 
                     columns=['Python', 'Math', 'En'])
   df.to_json('output.json', orient='records')
   ```
2. 读取文件：
   使用 Pandas 的 `read_` 开头的函数可以读取各种文件格式，常见的包括 CSV、Excel、JSON、SQL 数据库等。

   - 读取 CSV 文件：
   ```python
   import pandas as pd

   # 读取 CSV 文件并创建 DataFrame
   df = pd.read_csv('output.csv')
   ```

   - 读取 Excel 文件：
   ```python
   import pandas as pd

   # 读取 Excel 文件并创建 DataFrame，默认读取第一个 sheet
   df = pd.read_excel('output.xlsx')
   ```

   - 读取 JSON 文件：
   ```python
   import pandas as pd

   # 读取 JSON 文件并创建 DataFrame
   df = pd.read_json('output.json')
   ```

在使用这些方法时，确保文件的路径正确，并且 DataFrame 的数据结构与文件格式相匹配。Pandas 提供了丰富的功能，使得数据的读取和写入非常方便，适用于各种数据处理和分析任务。