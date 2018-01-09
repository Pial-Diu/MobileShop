<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainSite.Master" CodeBehind="ProductDetails.aspx.cs" Inherits="PresentationLayer.ProductDetails" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    Product Details
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;height:300px">
              <tr>
                <td style="">
                 <asp:Image id="Image2" runat="server" AlternateText="Mobile Shop" ImageAlign="left" ImageUrl="images/banner.jpg" Height="100%" Width="100%"/>
                </td>
              </tr>
        </table>
    <br/>
    <div style="margin-left:22%">
         <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
        <div style="width:100%;height:auto;float:left;background-color:white;text-align:center;border:0px solid red;font-weight:bold">
            <table style="margin-left:90px;color:#0078D7">
                <tr>
                    <td style="color:#F27036;font-size:larger; font-weight:bold"><h2> <%# Eval("PBRAND") %> | <%# Eval("PMODEL") %> </h2></td>
                </tr>
                <tr>
                    <td>  <asp:Image ID="imgCover" Height="300px" Width="400px" runat="server" AlternateText="Image Cover" ImageUrl='<%# Eval("PIMAGE") %>' />       </td>
                </tr>
                
                
                <tr>
                    <td> Price: <%# Eval("PPrice", "{0:c}") %> BDT </td>
                </tr>

                <tr>
                    <td> RAM: <%# Eval("PRam") %> | ROM: <%# Eval("PRom") %> </td>
                </tr>

                <tr>
                    <td> Cameras: <%# Eval("PCamFront") %> &  <%# Eval("PCamBack") %> </td>
                </tr>
                <tr>
                    <td> OS: <%# Eval("Pos") %> </td>
                </tr>

                <tr>
                    <td> Processor: <%# Eval("PProcessor") %> </td>
                </tr>

                <tr>
                    <td> Battery: <%# Eval("PBattery") %> mAh </td>
                </tr>
                <tr>
                    <td> Display Size: <%# Eval("PDisplay") %>" </td>
                </tr>
                <tr>
                    <td> Warranty: <%# Eval("PWARRANTY") %> </td>
                </tr>
                <tr>
                    <td style="border:2px solid #F37037"> <a style="text-decoration:none;color:#F37037;" href='AddToCart.aspx?id=<%# Eval("ID") %>'> Add to Cart  </td>
                </tr>
            </table>
        </div>
        </ItemTemplate>
    </asp:ListView>
        <br><br>
    </div>


</asp:Content>