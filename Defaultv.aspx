<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Default.aspx.cs" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>中华广东保费统计</title>
    <link rel="shortcut icon" href="../flag.ico"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="4044px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="817px" style="margin-right: 0px" SizeToReportContent="True" ZoomMode="FullPage">
            <LocalReport ReportPath="Reportv.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="IncomQZS" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource4" Name="IncomQ" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="IncomGZH" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="IcomQZSTableAdapters.IncomeGZSTableAdapter"></asp:ObjectDataSource>
    
    </div>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="IncomGZHTableAdapters.IncomeGZHTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="IncomTableAdapters.IncomeQTableAdapter"></asp:ObjectDataSource>
    </form>
</body>
</html>
