



<p style="font-size: 90px;font-weight: bold;text-align: center;color: red;">带着问题学Pandas</p>
# <font color='red'>问题二十五：DataFrame高级统计函数有哪些？</font>

更多的统计函数如下：

1. `cumsum()`：计算数据的累计和
   - 这个函数会返回一个新的DataFrame，其中每个元素是原始DataFrame中对应位置之前所有元素的累计和。
   - 输出结果：一个与原始DataFrame相同大小的DataFrame。

   ```Python
   import pandas as pd
   # 创建示例DataFrame
   df = pd.DataFrame(np.random.randint(0,10,size = (10,3)),columns=['A','B','C'])
   # 计算数据的累计和
   df.cumsum()
   ```
   
2. `cummax()`：计算数据的累计最大值
   
   - 这个函数会返回一个新的DataFrame，其中每个元素是原始DataFrame中对应位置之前所有元素的累计最大值。
- 输出结果：一个与原始DataFrame相同大小的DataFrame。
   
3. `cummin()`：计算数据的累计最小值
   - 这个函数会返回一个新的DataFrame，其中每个元素是原始DataFrame中对应位置之前所有元素的累计最小值。
   - 输出结果：一个与原始DataFrame相同大小的DataFrame。

4. `cumprod()`：计算数据的累计乘积
   - 这个函数会返回一个新的DataFrame，其中每个元素是原始DataFrame中对应位置之前所有元素的累计乘积。
   - 输出结果：一个与原始DataFrame相同大小的DataFrame。

5. `diff()`方法：

   - `diff()`方法用于计算数据之间的差分。对于一个DataFrame或Series，`diff()`方法返回相邻元素之间的差异。
   - `diff()`方法计算的是当前元素与前一个元素之间的差值，可以用来检测数据的变化率或时间序列的一阶差分。
   - 该方法还可以通过传递`periods`参数来指定计算差分的步长，默认为1（与前一个元素的差分）。
   - 对于没有前一个元素的位置（如第一行），差分结果将为NaN。

   ```Python
   import pandas as pd
   data = {'A': [10, 20, 60, 40, 50]}
   df = pd.DataFrame(data)
   # 计算数据的差分
   df['diff_A'] = df['A'].diff()
   df
   ```

6. `pct_change()`方法：

   - `pct_change()`方法用于计算数据的百分比变化。对于一个DataFrame或Series，`pct_change()`方法返回相邻元素之间的百分比变化。
   - 百分比变化是当前元素与前一个元素之间的相对变化，通常用于计算数据的增长率或变化率。
   - 该方法还可以通过传递`periods`参数来指定计算百分比变化的步长，默认为1（与前一个元素的百分比变化）。
   - 对于没有前一个元素的位置（如第一行），百分比变化结果将为NaN。

   ```Python
   import pandas as pd
   
   data = {'A': [10, 20, 30, 40, 50]}
   df = pd.DataFrame(data)
   
   # 计算数据的百分比变化
   df['pct_change_A'] = df['A'].pct_change()
   df
   ```

希望以上对这些统计函数的说明和介绍能帮助你更好地理解它们的用法和输出结果。这些函数在数据分析和数据处理中非常有用，可以帮助我们更好地理解数据的变化和特征。