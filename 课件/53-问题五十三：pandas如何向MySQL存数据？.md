



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题五十三：pandas如何向MySQL存数据？</font>

要使用 Pandas 将数据写入 MySQL 数据库，包括中文字符，你可以使用 Pandas 提供的 `to_sql()` 函数。

以下是一个示例代码，演示如何将数据写入 MySQL 数据库： 

```python
import pandas as pd
from sqlalchemy import create_engine

# 数据示例，包含中文字符
data = {'ID': [1, 2, 3], 'Name': ['张三', '李四', '王五']}

# 创建 DataFrame
df = pd.DataFrame(data)

# 建立数据库连接
engine = create_engine('mysql+pymysql://root:root@localhost/data')

# 将 DataFrame 写入数据库表
table_name = 'names'
df.to_sql(table_name, con=engine, if_exists='replace', index=False)

# 关闭数据库连接
engine.dispose()
```

结合chunksize批量处理数据，并保存。

```Python
import pandas as pd
from sqlalchemy import create_engine
# 建立数据库连接
engine = create_engine('mysql+pymysql://root:root@localhost/data')
# 要执行的 SQL 查询
query = "SELECT * FROM order_info_utf"
# 使用 Pandas 读取数据
chunks = pd.read_sql(query, con=engine,chunksize = 100000)
# 逐个处理每个分块数据
table_name = 'orders'
for chunk in chunks:
    # 进行你的处理
    cond = chunk.isPaid == '已支付'
    res = chunk[cond]
    res.to_sql(table_name,con = engine,if_exists='append',index = False)
    print(f'保存成功！处理前数据量：{len(chunk)}，处理后数据量是：{len(res)}')
# 关闭数据库连接
engine.dispose()
```

