<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainSite.Master" CodeBehind="AddToCart.aspx.cs" Inherits="PresentationLayer.AddToCart" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    Shopping Cart
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <% //Response.Write(Request.QueryString["id"]);Response.Write(Request.QueryString["name"]);  %>
            
            <h1 style="text-align:center;color:#F37037;font-family:Ebrima"><u> Shopping Cart </u></h1>
            
            <br />
            <h4 style="text-align:center;color:#0078D7"> Currently
                <asp:Label ID="Label1" ForeColor="#F47037" runat="server" Text="Label"></asp:Label>
                iteams selected. <asp:Button ID="Button1" runat="server" Text="Continue Shopping" Font-Bold="true" ForeColor="#F37037" OnClick="Button1_Click" /> </h4>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" HorizontalAlign="Center" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="Sl. ">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="id" HeaderText="Product Id">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="pimage" HeaderText="Product image">
                        <ControlStyle Height="150px" Width="200px" />
                        <FooterStyle HorizontalAlign="Center" />
                        <ItemStyle Height="150px" HorizontalAlign="Center" Width="200px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="pbrand" HeaderText="Product Brand">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pmodel" HeaderText="Product Model">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pprice" HeaderText="Product Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Remove" HeaderText="Remove" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" Height="50px" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <table style="border:2px solid #A55129;margin-left:62%;color:#9B4610">
                <tr>
                    <td style="border:2px solid #A55129">Grand Total: </td>

                    <td><asp:Label ID="Label2" runat="server" Text="0"></asp:Label> BDT</td>
                </tr>
            </table>
            
            <br />
            <br />
            <br />
            <% if (Session["buyitems"] != null)
                { %>
            <h4 style="text-align:center;color:#A55129"> Your selected Mobile Phones will be delivered to your Address within 48 hrs.</h4>
            <h4 style="text-align:center;color:#A55129"> Address: <b style="color:#0078D7">

                <% Response.Write(address); %>

             </b></h4>
             <h4 style="text-align:center;color:#A55129"> Phone: <b style="color:#0078D7">

                <% Response.Write(phone); %>

             </b></h4>
            <h4 style="text-align:center;color:#A55129"> Payment Method: <b style="color:#0078D7">Cash-on-Delivery.</b></h4>
            
           <div style="text-align:center;width:120px;height:40px;margin-left:540px">
               <asp:Button ID="Button2" Height="100%" BackColor="" Width="100%" Font-Bold="true" ForeColor="#A55129" runat="server" Text="Confirm Order" OnClick="Button2_Click" />
           </div>
            
            <br />
            <br />
            <% } %>
           </asp:Content>

