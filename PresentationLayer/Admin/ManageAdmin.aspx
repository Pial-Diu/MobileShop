<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="ManageAdmin.aspx.cs" Inherits="PresentationLayer.Admin.ManageAdmin" %>

<asp:Content ContentPlaceHolderID="title" runat="server">
    Manage Admin
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="margin-left: 20%">


        <h2> Manage Admin </h2>
        <hr />
        <table style="margin-left:17%;border:1px solid black;font-size:large;text-align:center;width:55%">
           <tr style="font-weight:bold">
                <td style="border:1px solid black"> Admin Id </td>
                <td style="border:1px solid black"> Admin Name </td>
                <td style="border:1px solid black"> Admin Email</td>
                <td style="border:1px solid black"> Admin Role</td>
            </tr>
           <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td style="border:1px solid black"> <%# Eval("id") %> </td>
                            <td style="border:1px solid black"> <%# Eval("aname") %> </td>
                            <td style="border:1px solid black"> <%# Eval("aemail") %></td>
                            
                            <td runat="server" visible='<%# Convert.ToInt32(Eval("arole")) != Role %>' style="border:1px solid black;color:green"> Admin </td>
                           
                            <td runat="server" visible='<%# Convert.ToInt32(Eval("arole")) == Role %>' style="border:1px solid black;color:orange"> Super Admin </td>
                            
                        </tr>

                    </ItemTemplate>
            </asp:ListView>
        </table>



    </div>


</asp:Content>
