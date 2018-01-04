<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainSite.Master" CodeBehind="Home.aspx.cs" Inherits="PresentationLayer.Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <h1>This is home page.</h1>
     <div style="width:70%;margin-left:15%">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" Width="100%" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" ForeColor="Black" AllowPaging="True" AllowSorting="True">
        <Columns>
             <asp:TemplateField HeaderText="SL.">
                <ItemTemplate>
                     <%#Container.DataItemIndex+1 %>
                </ItemTemplate>
             </asp:TemplateField>
            <asp:TemplateField HeaderText="Image" SortExpression="PIMAGE">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PIMAGE") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image3" runat="server" Height="150px" ImageUrl='<%# Eval("PIMAGE") %>' Width="200px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="PBRAND" HeaderText="Brand" SortExpression="PBRAND" />
            <asp:BoundField DataField="PMODEL" HeaderText="Model" SortExpression="PMODEL" />
            <asp:BoundField DataField="PPRICE" HeaderText="Price in BDT" SortExpression="PPRICE" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="#F37037" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" HorizontalAlign="Center" Font-Size="Medium"/>
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_MOBILE_SHOPConnectionString %>" SelectCommand="SELECT [PBRAND], [PMODEL], [PIMAGE], [PPRICE] FROM [PRODUCT]"></asp:SqlDataSource>
        <%--<% Response.Write(pial); %>--%>
    <br/>
    <%--<div style="width:100%;height:500px;background-color:blueviolet">
        <% 
            foreach (DataRow in dt.Rows)
            {%>
        <div style="width:33%;height:auto;float:left;background-color:white;text-align:center;border:1px solid red;font-weight:bold">
            <table style="margin-left:90px;color:#F37037">
                <tr>
                    <td>      <asp:Image ID="Image1" runat="server" Height="150px" Width="200px" ImageUrl="images/logo.png" />        </td>
                </tr>
                <tr>
                    <td> <% r["PBRAND"] %> </td>
                </tr>
                <tr>
                    <td style="color:#445F9D"> Model: N-70 </td>
                </tr>
                <tr>
                    <td style="color:#445F9D"> Price: 10000 taka </td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" Text="Details" /> <asp:Button ID="Button2" runat="server" Text="Add to Cart" />
        </div>
        <%}; %>
    </div>--%>


    
    


    

    </asp:Content>
