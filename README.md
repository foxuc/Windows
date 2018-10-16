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

# iis7
.json   application/x-javascript

.apk    application/vnd.android.package-archive 

[回到顶部](#readme)

# iis7_err

运行时错误
说明: 服务器上出现应用程序错误。此应用程序的当前自定义错误设置禁止远程查看应用程序错误的详细信息(出于安全原因)。但可以通过在本地服务器计算机上运行的浏览器查看。 

详细信息: 若要使他人能够在远程计算机上查看此特定错误消息的详细信息，请在位于当前 Web 应用程序根目录下的“web.config”配置文件中创建一个 <customErrors> 标记。然后应将此 <customErrors> 标记的“mode”特性设置为“Off”。


<!-- Web.Config 配置文件 -->

<configuration>
    <system.web>
        <customErrors mode="Off"/>
    </system.web>
</configuration>

注释: 通过修改应用程序的 <customErrors> 配置标记的“defaultRedirect”特性，使之指向自定义错误页的 URL，可以用自定义错误页替换所看到的当前错误页。


<!-- Web.Config 配置文件 -->

<configuration>
    <system.web>
        <customErrors mode="RemoteOnly" defaultRedirect="mycustompage.htm"/>
    </system.web>
</configuration>
