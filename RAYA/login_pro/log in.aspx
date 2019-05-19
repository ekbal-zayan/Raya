<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    //protected void Button1_Click(object sender, EventArgs e)
    //{

    //}

    protected void btnLogIn_Click(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FOOD</title>
   
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <link href="Styles/jquery-ui-1.css" rel="stylesheet" type="text/css" />
    <link href="Styles/style.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        function Check() {
            var valid = true;
            var loginUser = $(".loginuser")[0];
            var loginPassword = $(".loginpassword")[0];
            if (loginUser.value != '') {
                if (loginPassword.value == '') {
                    loginPassword.focus();
                    valid = false;
                }
            }
            else {
                loginUser.focus();
                valid = false;
            }
            return valid;

        }
    </script>
    <style type="text/css">
        .style1
        {
            width: 910px;
            height: 550px;
        }
    </style>
</head>
<body style="">
    <form id="form1" runat="server">
    <table class="main" align="center" cellpadding="0" cellspacing="0">
        <tbody>
            <tr>
                <td valign="top">
                    <div style="padding-top: 50px ! important;" align="center">
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label">LogIN</asp:Label>
                        <br />
                        <br />
                        <br />
                        <table class="login_table">
                            <tbody>
                                <tr>
                                    <td>
                                        User Name:
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtUser" Width="150px" CssClass="loginuser" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Password:
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtPassword" CssClass="loginpassword" TextMode="Password"
                                            Width="150px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        </td>
                                </tr>
                            </tbody>
                        </table>
                        <br />
                        <br />
                        <asp:Button Text="Log In" runat="server" CssClass="login_button ui-button ui-widget ui-state-default ui-corner-all"
                            OnClientClick="javascript:return Check();" ID="btnLogIn" OnClick="btnLogIn_Click" />
                             
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
    <div style="text-align: center" runat="server" visible="true">
    </div>
    </form>
</body>
</html>
