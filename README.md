# 激活姬
## 关于kms激活
kms,全称Key Management Service,是微软官方认可的一种批量系统激活方式
## 如何使用
### Windows激活
#### 1.下载文件
如果只激活Windows，请下载 激活姬.exe 和 key 文件夹  
如果还要激活office，请下载 激活姬.exe, bat文件夹 和 key 文件夹
#### 2.开始使用
##### 小白操作
如果您不知道Windows版本，如图所示，请点击导入系统版本，再点击导入密钥，确认无误后点击激活  
如果您知道Windows版本，请自行选择后导入密钥，确认无误后点击激活  
![这是图片](https://s1.328888.xyz/2022/08/31/asgMw.png  "step")
###### 遇到问题
1.由于只有家庭版，专业版和企业版三个版本可以被检测，如果导入系统版本后没有 要激活的版本没有显示  
方法一:自行选择版本(必须选择，否则无法导入密钥)  
方法二:不导入密钥，自行搜索 密钥 和 kms服务器,填入后点击激活  
2.若Windows版本未检出，可能是该版本不支持小白操作  
不导入密钥，自行搜索 密钥 和 kms服务器,填入后点击激活  
##### 我不是小白
填入密钥和服务器 后，点击激活（不必导入系统版本，不必导入密钥）
![这是图片](https://s1.328888.xyz/2022/08/31/aP55r.png  "step")
##### 我不想用这个软件
以管理员身份运行Windows PowerShell（cmd也可以）  
	slmgr.vbs /upk

这表示卸载密钥  
	slmgr /ipk xxxxx-xxxxx-xxxxx-xxxxx-xxxxx

这表示安装密钥，xxxxx-xxxxx-xxxxx-xxxxx-xxxxx为密钥  
	slmgr /skms xx.xx.xx

这表示设置kms服务器地址，xx.xx.xx为服务器地址  
    slmgr /ato

这表示立即激活  
### office激活（只测试了2019）
#### 1.下载office
推荐下载2019 vol版
#### 2.下载文件
如果只激活office，请下载 激活姬.exe, bat文件夹  
如果还要激活Windows，请下载 激活姬.exe, bat文件夹 和 key 文件夹
#### 3.转为批量化
当您的office不是批量化版本时，需要转为批量化，打开bat文件夹，再打开转为批量版文件夹，打开run2019.bat
#### 4.生成激活脚本
激活版本请选择2019（本来想做其他版本的，时间不够，就不做了，强行选择2019），输入密钥，再输入kms服务器的地址，点击一键生成激活脚本
![这是图片](https://s1.328888.xyz/2022/08/31/afnSg.png  "step")

#### 5.运行脚本
完成后会自动打开bat文件夹，点击runMe.bat  
当您看到complete时表示激活已完成  
## Q&A
### 打开office后提示  
方法一: 按照上面的链接取消勾选(来自https://zhuanlan.zhihu.com/p/386705938)  
方法二:   
改注册表（来自https://zhuanlan.zhihu.com/p/420319717）  
或者  
以管理员权限运行激活姬.exe,再打开office更新至企业通道  
方法三:  
其实也有可能是你的kms地址进了微软的黑名单，这样的话请更换kms服务器  
方法四:  
上网找工具吧  
## 文件说明
### 激活姬.exe
kms图形化软件
### key文件夹
存放着多个Windows激活密钥，由于版本众多，密钥没有尝试所以一些密钥可能无效
#### 密钥文件
win11key.ini-----存放Windows 11激活密钥  
win10key.ini-----存放Windows 10激活密钥  
win8.1key.ini----存放Windows 8.1激活密钥  
win8key.ini-------存放Windows 8激活密钥  
win7key.ini-------存放Windows 7激活密钥  
winvistakey.ini--存放Windows vista激活密钥  
winxpkey.ini-----存放Windows xp激活密钥  
##### 文件格式
[Enterprise]  
key1=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  
key2=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  
key3=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  
key4=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  
key5=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  

[Professional]  
key1=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  
key2=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  
key3=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  
key4=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  
key5=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  

[Home]  
key1=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  
key2=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  
key3=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  
key4=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  
key5=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  

[Enterprise]/[Professional]/[Home]:表示Windows版本  
[Enterprise]:企业版  
[Professional]:专业版  
[Home]:家庭版  
tip: 某些Windows版本没有企业版(如Windows xp)，则企业版填充的是其他版本密钥  
key1/key2/key3/key4/key5:以防万一，每个Windows版本填充5个密钥  
XXXXX-XXXXX-XXXXX-XXXXX-XXXXX:密钥  
### bat文件夹
存放脚本的文件夹
#### run2019.bat
将office2019 零售版转为批量激活版
#### runMe.bat
您的激活脚本  
密钥为用户自己输入  
kms除了用户自定义的外还内置了7个kms服务器地址  
