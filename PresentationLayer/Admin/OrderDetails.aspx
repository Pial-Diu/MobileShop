<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="OrderDetails.aspx.cs" Inherits="PresentationLayer.Admin.OrderDetails" %>


<asp:Content ContentPlaceHolderID="title" runat="server">
    Order Details
</asp:Content>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div style="margin-left:20%">
        <h2>Order History (<% Response.Write(Request.QueryString["id"]); %>)</h2>
        <hr/>
        <h4>  </h4>

       <table style="margin-left:17%;border:3px solid black;font-size:large;text-align:center;width:55%">
           <tr style="font-weight:bold">
                <%--<td style="border:1px solid black"> Order Id </td>--%>
                <td style="border:3px solid black"> Customer Name </td>
                <td style="border:3px solid black"> Order Amount</td>
                <td style="border:3px solid black"> Date</td>
            </tr>
           <asp:ListView ID="ListView2" runat="server">
                    <ItemTemplate>
                        <tr>
                            <%--<td style="border:1px solid black"> <%# Eval("id") %> </td>--%>
                            <td style="border:3px solid black"> <%# Eval("cname") %> </td>
                            <td style="border:3px solid black"> <%# Eval("oamount" , "{0:c}") %></td>
                            <td style="border:3px solid black"> <%# Eval("odate", "{0:d}") %></td>
                        </tr>
                    </ItemTemplate>
            </asp:ListView>
        </table>

       <br>
       <h2 style="margin-left:37%"> Order Details</h2>

       <table style="margin-left:17%;border:1px solid black;font-size:large;text-align:center;width:55%">
           <tr style="font-weight:bold">
                <td style="border:1px solid black"> Product Id </td>
                <td style="border:1px solid black"> Product Image </td>
                <td style="border:1px solid black"> Brand </td>
                <td style="border:1px solid black"> Model</td>
                <td style="border:1px solid black"> Price </td>
            </tr>
           <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <tr>
                      <td style="border:1px solid black"> <%# Eval("id") %> </td>
                            <td style="border:1px solid black"> 
                             <asp:Image ID="imgCover" Height="150px" Width="200px" runat="server" AlternateText="Image Cover" ImageUrl='<%# Eval("PIMAGE") %>' />       </td>
                            </td>
                            <td style="border:1px solid black"> <%# Eval("pbrand") %> </td>
                            <td style="border:1px solid black"> <%# Eval("pmodel") %> </td>
                            <td style="border:1px solid black"> <%# Eval("pprice" , "{0:c}") %></td>
                            </tr>
                    </ItemTemplate>
            </asp:ListView>
           
        </table>



   </div>
    <br><br><br>
</asp:Content>

