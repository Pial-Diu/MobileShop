<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="OrderHistory.aspx.cs" Inherits="PresentationLayer.Admin.OrderHistory" %>

<asp:Content ContentPlaceHolderID="title" runat="server">
    Order History
</asp:Content>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div style="margin-left:20%">
        <h2>Order History</h2>
        <hr/>
        
       <table style="margin-left:17%;border:1px solid black;font-size:large;text-align:center;width:55%">
           <tr style="font-weight:bold">
                <td style="border:1px solid black"> Order Id </td>
                <td style="border:1px solid black"> Customer Name </td>
                <td style="border:1px solid black"> Order Amount</td>
                <td style="border:1px solid black"> Date</td>
                <td style="border:1px solid black"> Details</td>
            </tr>
           <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td style="border:1px solid black"> <%# Eval("id") %> </td>
                            <td style="border:1px solid black"> <%# Eval("ocustomer") %> </td>
                            <td style="border:1px solid black"> <%# Eval("oamount" , "{0:c}") %></td>
                            <td style="border:1px solid black"> <%# Eval("odate", "{0:d}") %></td>
                            <td></td>
                        </tr>

                    </ItemTemplate>
            </asp:ListView>
        </table>



   </div>

</asp:Content>
