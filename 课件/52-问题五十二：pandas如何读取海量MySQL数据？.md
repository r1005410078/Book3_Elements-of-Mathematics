



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题五十二：pandas如何读取海量MySQL数据？</font>

[数据库引擎配置](https://docs.sqlalchemy.org/en/13/core/engines.html)

当需要读取大量的 MySQL 数据时，使用 Pandas 通常仍然是一个不错的选择。然而，读取大量数据时需要注意一些性能和内存方面的问题。以下是一些在 Pandas 中处理大量 MySQL 数据时的建议：

**使用 `read_sql()` 的分块读取：** 通过设置 `chunksize` 参数，你可以使用 Pandas 的 `read_sql()` 函数来分块读取数据，从而避免一次性将全部数据加载到内存中。

以下是一个示例，展示如何分块读取MySQL数据：

```python
import pandas as pd
from sqlalchemy import create_engine
# 建立数据库连接
engine = create_engine('mysql+pymysql://root:root@localhost/data')
# 要执行的 SQL 查询
query = "SELECT * FROM order_info_utf"
# 使用 Pandas 读取数据
chunks = pd.read_sql(query, con=engine,chunksize = 10000)
# 逐个处理每个分块数据
for chunk in chunks:
    # 进行你的处理
    display(chunk.shape)
# 关闭数据库连接
engine.dispose()
```



