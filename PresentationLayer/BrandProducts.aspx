<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MainSite.Master" CodeBehind="BrandProducts.aspx.cs" Inherits="PresentationLayer.BrandProducts" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    Brands
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <h2 style="text-align:center;color:#F37037;"><u> <% Response.Write(Request.QueryString["id"]); %> Mobile Phones </u></h2>
        
       <div style="width:100%;height:auto;">
        <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
        <div style="width:25%;height:auto;float:left;background-color:white;text-align:center;border:0px solid red;font-weight:bold">
            <table style="margin-left:50px;color:#F37037">
                <tr>
                    <td>  <asp:Image ID="imgCover" Height="150px" Width="200px" runat="server" AlternateText="Image Cover" ImageUrl='<%# Eval("PIMAGE") %>' />       </td>
                </tr>
                
                <tr>
                    <td style="color:#445F9D"> <%# Eval("PBRAND") %> | <%# Eval("PMODEL") %> </td>
                </tr>
                <tr>
                    <td> Price: <%# Eval("PPrice" , "{0:c}") %> BDT </td>
                </tr>
                <tr>
                    <td> <a href='ProductDetails.aspx?id=<%# Eval("ID") %>'>Details</a> </td>
                </tr>
                <tr>
                    <td style="border:2px solid #F37037"> <a style="text-decoration:none;color:#F37037;" href='AddToCart.aspx?id=<%# Eval("ID") %>&name=<%# Eval("PBRAND") %>'> Add to Cart  </td>
                </tr>
            </table>
        </div>
        </ItemTemplate>
    </asp:ListView>
    </div>



</asp:Content>

