<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="CreateAdmin.aspx.cs" Inherits="PresentationLayer.Admin.CreateAdmin" %>

<asp:Content ContentPlaceHolderID="title" runat="server">
    Create Admin
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="margin-left: 20%">


        <h2> Create Admin </h2>
        <hr />
        
        <div style="margin-left:150px; width:45%;height:500px;background-color:">
            <table style="color:#23527C;font-weight:bold">
                
                <%--<tr style="height:10px"> <td></td> </tr>--%>
                <tr>
                <td> Admin Name: 
                        </td>
                    <td> <asp:TextBox  ID="txtName" runat="server" Width="200px"></asp:TextBox> </td>
                </tr>
                <tr style="height:10px"> <td></td> </tr>
                <tr>
                <td> Email: 
                        </td>
                    <td> <asp:TextBox  ID="txtEmail" runat="server" Width="200px" TextMode="Email"></asp:TextBox> </td>
                </tr>
                <tr style="height:10px"> <td></td> </tr>
                <tr>
                <td> Password: 
                        </td>
                    <td> <asp:TextBox  ID="txtPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox> </td>
                </tr>
                <tr style="height:10px"> <td></td> </tr>
                
                </table>

            <asp:Button ID="Button1" Width="300px" runat="server" Text="Add Admin" OnClick="Button1_Click" />

                <br />
        </div>





    </div>


</asp:Content>
