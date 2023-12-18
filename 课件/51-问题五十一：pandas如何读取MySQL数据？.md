



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题五十一：pandas如何读取MySQL数据？</font>

要使用 Pandas 读取 MySQL 数据，你可以使用 Pandas 提供的 `read_sql()` 函数。以下是一个基本的示例，演示如何使用 Pandas 读取 MySQL 数据库中的表数据：

首先，确保已经安装了相应的 MySQL 驱动，你可以通过以下命令来安装：

```python
pip install sqlalchemy -i https://pypi.tuna.tsinghua.edu.cn/simple
pip install pymysql -i https://pypi.tuna.tsinghua.edu.cn/simple
```

以下是一个示例，展示如何读取MySQL数据：

```python
import pandas as pd
from sqlalchemy import create_engine
# 建立数据库连接
engine = create_engine('mysql+pymysql://root:root@localhost/data')
# 要执行的 SQL 查询
query = "SELECT * FROM order_info_utf"
# 使用 Pandas 读取数据
df = pd.read_sql(query, con=engine)
# 打印读取到的数据
display(df)
# # 关闭数据库连接
engine.dispose()
```



