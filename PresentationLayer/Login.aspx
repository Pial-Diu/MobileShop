<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainSite.Master" CodeBehind="Login.aspx.cs" Inherits="PresentationLayer.Login" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <style>
        .title {
            color: #F27036;
        }


    </style>

        <div style="margin-left:30%; border:1px dashed #F37036; width:400px;">
            <h4 style="text-align:center;color:#F37036"> 
                <asp:Label ID="txtMessage" runat="server" ForeColor="Red"></asp:Label>
            </h4>

            <h3 style="text-align:center;color:#F37036"> Login as a Customer</h3>
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
        </div>
            <a href="http://www.google.com"><p style="text-align:right;color:#007ACC;margin-bottom:10px">Forgot your password?</p></a>
        </div>
    <h4 style="text-align:center">Don't have an account? Sign Up <a href="Register.aspx">here.</a></h4>
    <br/>
    <div style="width:300px;height:30px;margin-left:35%">
    <asp:Button Width="100%" Height="100%" Font-Bold="true" ForeColor="White" BackColor="#0033cc" ID="Button2" runat="server" Text="Admin Login" OnClick="Button2_Click" />
    </div>
</asp:Content>
