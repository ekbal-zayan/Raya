<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HW3.Noorkhzaimiah.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-weight: 700;
            font-size: xx-large;
        }
        .newStyle1 {
            font-family: "Gloucester MT Extra Condensed";
        }
        .auto-style2 {
            font-size: 75px;
        }
        .auto-style3 {}
        .auto-style4 {}
        .auto-style5 {
            font-weight: 700;
            font-size: large;
        }
    </style>
</head>
<body style ="background-color:thistle">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <span class="newStyle1"><span class="auto-style2">login</span><br />
        <br />
        <br />
        Email :
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" Height="32px" Width="178px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:<asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4" Height="28px" Width="168px" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [person] WHERE (([email] = @email) AND ([password] = @password))">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="email" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="password" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Height="49px" OnClick="Button1_Click" Text="login" Width="106px" />
        </span>
    
    </div>
    </form>
</body>
</html>
