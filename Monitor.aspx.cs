using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Monitor : System.Web.UI.Page
{
    static string dpt1 = "CICPreportGD";
    static string dpt2 = "CICPreportDG";
    static string dpt3 = "CICPreportZS";
    static string dpt4 = "CICPreportZH";
    protected void Page_Load(object sender, EventArgs e)
    {
        Pro(dpt1);
        Pro(dpt2);
        Pro(dpt3);
        Pro(dpt4);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string pathstr = "D:\\CICPreport\\CICPreportGD.exe";
        ProcessStartInfo pro = new ProcessStartInfo();
        pro.FileName = pathstr;
        Process.Start(pro);
        Pro(dpt1);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Process[] processeslist = Process.GetProcessesByName("CICPreportGD");
        if (processeslist.Length > 0)
        {
            if (processeslist[0].ProcessName == "CICPreportGD")
            {
                Process process = new Process();
                process = processeslist[0];
                process.Kill();
                Label2.Text = "统计程序已结束";
            }
            else
            {
                Pro(dpt1);
            }
        }
        else
        {
            Pro(dpt1);
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string pathstr = "D:\\CICPreport\\CICPreportDG.exe";
        ProcessStartInfo pro = new ProcessStartInfo();
        pro.FileName = pathstr;
        Process.Start(pro);
        Pro(dpt2);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Process[] processeslist = Process.GetProcessesByName("CICPreportDG");
        if (processeslist.Length > 0)
        {
            if (processeslist[0].ProcessName == "CICPreportDG")
            {
                Process process = new Process();
                process = processeslist[0];
                process.Kill();
                Label3.Text = "统计程序已结束";
            }
            else
            {
                Pro(dpt2);
            }
        }
        else
        {
            Pro(dpt2);
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        string pathstr = "D:\\CICPreport\\CICPreportZS.exe";
        ProcessStartInfo pro = new ProcessStartInfo();
        pro.FileName = pathstr;
        Process.Start(pro);
        Pro(dpt3);
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Process[] processeslist = Process.GetProcessesByName("CICPreportZS");
        if (processeslist.Length > 0)
        {
            if (processeslist[0].ProcessName == "CICPreportZS")
            {
                Process process = new Process();
                process = processeslist[0];
                process.Kill();
                Label4.Text = "统计程序已结束";
            }
            else
            {
                Pro(dpt3);
            }
        }
        else
        {
            Pro(dpt3);
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        string pathstr = "D:\\CICPreport\\CICPreportZH.exe";
        ProcessStartInfo pro = new ProcessStartInfo();
        pro.FileName = pathstr;
        Process.Start(pro);
        Pro(dpt4);
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Process[] processeslist = Process.GetProcessesByName("CICPreportZH");
        if (processeslist.Length > 0)
        {
            if (processeslist[0].ProcessName == "CICPreportZH")
            {
                Process process = new Process();
                process = processeslist[0];
                process.Kill();
                Label1.Text = "统计程序已结束";
            }
            else
            {
                Pro(dpt4);
            }
        }
        else
        {
            Pro(dpt4);
        }
    }
    protected void Pro(string dpt)
    {
        String mark = "";
        Process[] processeslist = Process.GetProcesses();
        foreach (Process processes in processeslist)
        {
            if (processes.ProcessName == dpt)
            {
                mark = "Y";
            }
        }
        switch(dpt)
        {
            case "CICPreportGD":
                if (mark == "Y")
                {
                    Label2.Text = "统计程序运行中";
                }
                else
                {
                    Label2.Text = "程序没有运行";
                }
                break;
            case "CICPreportDG":
                if (mark == "Y")
                {
                    Label3.Text = "统计程序运行中";
                }
                else
                {
                    Label3.Text = "程序没有运行";
                }
                break;
            case "CICPreportZS":
                if (mark == "Y")
                {
                    Label4.Text = "统计程序运行中";
                }
                else
                {
                    Label4.Text = "程序没有运行";
                }
                break;
            case "CICPreportZH":
                if (mark == "Y")
                {
                    Label1.Text = "统计程序运行中";
                }
                else
                {
                    Label1.Text = "程序没有运行";
                }
                break;
        }
    }
}