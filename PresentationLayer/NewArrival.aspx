<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainSite.Master" CodeBehind="NewArrival.aspx.cs" Inherits="PresentationLayer.NewArrival" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    New Arrival
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--    <table style="width:100%;height:300px">
              <tr>
                <td style="">
                 <asp:Image id="Image2" runat="server" AlternateText="Mobile Shop" ImageAlign="left" ImageUrl="images/new.png" Height="100%" Width="100%"/>
                </td>
              </tr>
    </table>--%>

    <h2 style="text-align:center;color:#F37037;font-family:fantasy"><u> New Arrival </u></h2><br>
    <div style="width:100%;height:auto;">
        <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
        <div style="width:25%;height:auto;float:left;background-color:white;text-align:center;border:0px solid red;font-weight:bold">
            <table style="margin-left:50px;color:#F37037;margin-bottom:50px">
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
                    <td> <a href='ProductDetails.aspx?id=<%# Eval("ID") %>'>Details</a>  </td>
                </tr>
                <%--<tr>
                    <td><asp:ImageButton ID="ImageButton1" CommandName="addtocart" runat="server" Height="30px" Width="100px" ImageUrl="~/images/Add-to-Cart-Button.png" CommandArgument='<%# Eval("ID") %>' /> </td>
                </tr>--%>
                <tr>
                    <td style="border:2px solid #F37037"> <a style="text-decoration:none;color:#F37037;" href='AddToCart.aspx?id=<%# Eval("ID") %>'> Add to Cart  </td>
                </tr>
            </table>
        </div> 
        </ItemTemplate>
    </asp:ListView>
    </div>
    <br/>


</asp:Content>
