<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            height: 21px;
            width: 251px;
            margin-left: 25px;
        }
        #Name {
            height: 24px;
            margin-top: 16px;
        }
    </style>
</head>
<body style="height: 313px; width: 887px">
    <form id="form1" runat="server">
        <div>
            <p>
                Name&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="t4" runat="server" ToolTip="Enter Your Name" Width="195px"></asp:TextBox>
            </p>
        </div>
        <p>
&nbsp;Gender&nbsp;
            <asp:RadioButton ID="R1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Male" ToolTip="choose your gender" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="R2" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Female" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="R3" runat="server" Text="Other" />

        </p>
        <p>
            DOB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" style="margin-left: 61px" Width="252px" OnSelectionChanged="Calendar1_SelectionChanged" ToolTip="Enter your DOB">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>

        </p>
        <p>
            Interset&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:CheckBox ID="C1" runat="server" Text="Football" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="C2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" Text="Cricket" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="C3" runat="server" Text="Hockey" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="C4" runat="server" OnCheckedChanged="CheckBox4_CheckedChanged" Text="Basketball" />
        </p>
        
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 128px" Text="Submit" Width="73px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    </form>
    <p>
         <asp:Label ID="userInput" runat="server"></asp:Label>  

        <asp:Label runat="server" Id="genderId"></asp:Label>  
                <asp:Label runat="server" ID="ShowDate" ></asp:Label>  
                 <asp:Label runat="server" ID="ShowInterset"></asp:Label>  



</p>
</body>
</html>
