<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="Dashboard.aspx.cs" Inherits="PresentationLayer.Admin.Dashboard" %>

<asp:Content ContentPlaceHolderID="title" runat="server">
    Dashboard
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="margin-left: 20%">


        <h2> <%if (Convert.ToInt32(Session["AdminRole"]) == 1)
                 { %>Super <%} %>
            
            Admin Dashboard</h2>
        <hr />


    </div>


</asp:Content>
