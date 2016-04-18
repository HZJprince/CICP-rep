<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Monitor.aspx.cs" Inherits="Monitor" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>中华广东保费统计监控页</title>
    <link rel="shortcut icon" href="../flag.ico"/>
    <style type="text/css">
        .auto-style4 {
            height: 40px;
        }
        .auto-style7 {
            font-size: xx-large;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            text-align: left;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                &nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ErrrecordTableAdapters.errrecordTableAdapter"></asp:ObjectDataSource>
                <asp:Timer ID="Timer1" runat="server" OnTick="Page_Load" Interval="5000">
                </asp:Timer>
                <table style="width: 100%; height: 97px; margin-top: 0px;">
                    <tr>
                        <td class="auto-style9"> <span class="auto-style7"><strong style="text-align: justify">统计监控页面 </strong></span></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <table runat="server" cellpadding="1" cellspacing="1" enabletheming="True" gridlines="Both">
                               <tr>
                                   <td width="10%" height="24"><strong>统计程序名称</strong></td>
                                   <td width="10%" height="24"><strong>统计程序运行状态</strong></td>
                                   <td width="10%" height="24"><strong>操作1</strong></td>
                                   <td width="10%" height="24"><strong>操作2</strong></td>
                               </tr>
                               <tr>
                                   <td>
                                       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">广东分公司</asp:HyperLink>
                                   </td>
                                   <td><asp:Label ID="Label2" runat="server" Font-Size="X-Large" style="font-weight: 700; color: #FF0000" Text="程序没有运行"></asp:Label></td>
                                   <td><asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="启动" Width="80px" /></td>
                                   <td><asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="结束" Width="80px" /></td>
                               </tr>
                                <tr>
                                    <td>
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/zhongzhi/dg/dg.aspx">东莞中支</asp:HyperLink>
                                    </td>
                                    <td><asp:Label ID="Label3" runat="server" Font-Size="X-Large" style="font-weight: 700; color: #FF0000" Text="程序没有运行"></asp:Label></td>
                                    <td><asp:Button ID="Button3" runat="server" Height="30px" Text="启动" Width="80px" OnClick="Button3_Click" /></td>
                                    <td><asp:Button ID="Button4" runat="server" Height="30px" Text="结束" Width="80px" OnClick="Button4_Click" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/zhongzhi/zs/zs.aspx">中山中支</asp:HyperLink>
                                    </td>
                                    <td><asp:Label ID="Label4" runat="server" Font-Size="X-Large" style="font-weight: 700; color: #FF0000" Text="程序没有运行"></asp:Label></td>
                                    <td><asp:Button ID="Button5" runat="server" Height="30px" Text="启动" Width="80px" OnClick="Button5_Click" /></td>
                                    <td><asp:Button ID="Button6" runat="server" Height="30px" Text="结束" Width="80px" OnClick="Button6_Click" /></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="auto-style10">统计报文报错信息：</td>
                    </tr>
                </table>
                &nbsp;<br />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger  ControlID="Button1" />
                <asp:AsyncPostBackTrigger  ControlID="Button2" />
                <asp:AsyncPostBackTrigger  ControlID="Button3" />
                <asp:AsyncPostBackTrigger  ControlID="Button4" />
                <asp:AsyncPostBackTrigger  ControlID="Button5" />
                <asp:AsyncPostBackTrigger  ControlID="Button6" />
            </Triggers>
        </asp:UpdatePanel>
    
    </div>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%" ZoomMode="PageWidth">
            <LocalReport ReportPath="Report1.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="Errrecord" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    </form>
</body>
</html>
