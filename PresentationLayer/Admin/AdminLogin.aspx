<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="PresentationLayer.Admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form runat="server">
    <div style="margin-left:33%; border:3px solid #F37036; width:400px;margin-top:150px">
            <h3 style="text-align:center;color:#F37036"> 
                <asp:Label ID="txtMessage" runat="server" ForeColor="Red"></asp:Label>
            </h3>
            <h3 style="text-align:center;color:#F37036"> Login as an Admin</h3>
            <table style="margin-left:30px;margin-top:20px;">
            <tr style="width:90%;margin-left:5%">
                <td class="title" style="width:20%"> Email: </td>
                <td> <asp:TextBox ID="txtEmail" runat="server" Width="100%"></asp:TextBox>  </td>
            </tr>
            <tr style="height:15px">
                <td></td>
            </tr>
            <tr style="width:90%;margin-left:5%">
                <td class="title" style="width:20%"> Password: </td>
                <td> <asp:TextBox ID="txtPassword" runat="server" Width="100%" TextMode="Password"></asp:TextBox>  </td>
            </tr>
        </table><br/>
        <div style="margin-left:100px; width:270px;height:25px;">
            <asp:Button Font-Bold="true"  ForeColor="#ffffff" BackColor="#F37036" Height="100%" Width="100%" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        </div><br/>
        </div>
    <h4 style="text-align:center">Don't have an account? Then you are not supposed to be here.</h4>
    <br/>
        </form>
</body>
</html>
