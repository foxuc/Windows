
# IIS站点启停: 在CMD下执行如下命令：

#查看站点

c:\windows\system32\inetsrv\AppCmd.exe list site


#查看应用池

c:\windows\system32\inetsrv\AppCmd.exe list apppool


#停止站点

c:\windows\system32\inetsrv\AppCmd.exe stop site "wk.Fornt"

#启动站点：

c:\windows\system32\inetsrv\AppCmd.exe start site "wk.Fornt"

wk.Fornt就是IIS的网站名称 


# IIS 应用程序池启停: 在CMD下执行如下命令：
#单独启停应用程序池： 

c:\windows\system32\inetsrv\AppCmd.exe stop apppool /apppool.name:"wk.Fornt"

c:\windows\system32\inetsrv\AppCmd.exe start apppool /apppool.name:"wk.Fornt"

#单独回收应用程序池： 

c:\windows\system32\inetsrv\AppCmd.exe recycle apppool "wk.Fornt"

"wk.Fornt"就是IIS的应用程序池的名称 

# IIS7 无法启动计算机上的服务W3SVC如何修复

错误提示

启动iis7管理服务器提示:无法启动计算机上的服务W3SVC

启动Windows Process Activation Service服务,报错:6801 指定资源管理器中的事务支持未启动或已关闭 

启动world wide web publishing service服务,报错:1068：依赖服务或组无法启动



修复错误

运行命令提示符 fsutil resource setautoreset true c:\     

打开运行输入 services.msc     

启动Windows Process Activation Service服务     

再启动world wide web publishing service服务     

再启动iis7就可以了


# iis7 MIME类型,自动消失

```
.json   application/x-javascript

.apk    application/vnd.android.package-archive 

.ini    application/octet-stream

.MP4    application/octet-stream

.swf	  application/x-shockwave-flash

.ipa application/iphone-package-archive

.deb application/x-debian-package-archive



  <staticContent>
            <mimeMap fileExtension=".mp4" mimeType="video/mp4" />
            <mimeMap fileExtension=".m4v" mimeType="video/m4v" />
 </staticContent>
     
```
__但是如果要配置所有类型的支持的话就需要写很多<mimeMap>所有为了方便起见我们可以配置一个通用的MIME__  
```
<mimeMap fileExtension=".*" mimeType="application/octet-stream" />
```
 [比较全的列表MIME类](https://blog.csdn.net/xue251248603/article/details/52982263?utm_source=blogxgwz0)

# Win2k8_rsync_Client_Server安装包下载

[Win2k8_rsync_Client_Server安装包下载](https://github.com/foxuc/Windows/releases/ "安装包下载")

# Windows-iis安装后
!!! win2k8 iis安装后，

站点配置 cd c:\Windows\Microsoft.NET\Framework\v4.0.30319

                aspnet_regiis.exe -i
                
                
c:\Windows\Microsoft.NET\Framework\v4.0.30319>aspnet_regiis.exe -i

Microsoft (R) ASP.NET RegIIS 版本 4.0.30319.0

用于在本地计算机上安装和卸载 ASP.NET 的管理实用工具。

版权所有(C) Microsoft Corporation。保留所有权利。

开始安装 ASP.NET (4.0.30319.0)。

.......

ASP.NET (4.0.30319.0)安装完毕。

要重启下机器：

[回到顶部](#readme)

# iis7_err

运行时错误
说明: 服务器上出现应用程序错误。此应用程序的当前自定义错误设置禁止远程查看应用程序错误的详细信息(出于安全原因)。但可以通过在本地服务器计算机上运行的浏览器查看。 

详细信息: 若要使他人能够在远程计算机上查看此特定错误消息的详细信息，请在位于当前 Web 应用程序根目录下的“web.config”配置文件中创建一个 <customErrors> 标记。然后应将此 <customErrors> 标记的“mode”特性设置为“Off”。

```
<!-- Web.Config 配置文件 -->

<configuration>
    <system.web>
        <customErrors mode="Off"/>
    </system.web>
</configuration>
```

注释: 通过修改应用程序的 <customErrors> 配置标记的“defaultRedirect”特性，使之指向自定义错误页的 URL，可以用自定义错误页替换所看到的当前错误页。

```
<!-- Web.Config 配置文件 -->

<configuration>
    <system.web>
        <customErrors mode="RemoteOnly" defaultRedirect="mycustompage.htm"/>
    </system.web>
</configuration>
```
