<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhv.aspx.cs" Inherits="zhongzhi_zh_zhv" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>中华广东保费统计-珠海中支</title>
    <link rel="shortcut icon" href="../../../flag.ico"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="IncomTableAdapters.IncomeQTableAdapter"></asp:ObjectDataSource>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="853px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1901px" Style="margin-right: 0px" SizeToReportContent="True" ZoomMode="FullPage" InteractivityPostBackMode="AlwaysSynchronous">
            <LocalReport ReportPath="zhongzhi\zh\zhv.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    
    </div>
    </form>
</body>
</html>
