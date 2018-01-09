<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" MasterPageFile="~/MainSite.Master" CodeBehind="Home.aspx.cs" Inherits="PresentationLayer.Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    Home
</asp:Content>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;height:300px">
              <tr>
                <td style="">
                 <asp:Image id="Image2" runat="server" AlternateText="Mobile Shop" ImageAlign="left" ImageUrl="images/banner.jpg" Height="100%" Width="100%"/>
                </td>
              </tr>
        </table>
    <br>
    <table style="width:100%;font-size:large">
        <tr>
            <td style="width:20%">
                <asp:ListView ID="ListView2" runat="server">
                    <ItemTemplate>
                <table style="width:100%">
                    <tr>
                        <td style="border-bottom:1px solid #808284;text-align:center">
                            <div style="width:100%;height:100%;background-color:">
                                <a href='BrandProducts.aspx?id=<%# Eval("MNAME") %>' style="text-decoration:none;color:#F37037">
                                    <b> <%# Eval("MNAME") %> </b>
                                </a>
                            </div>
                        </td>
                    </tr>
                </table>
                        </ItemTemplate>
                </asp:ListView>
            </td>
            <td style="width:80%;border-left:1px solid #818384;border-right:1px solid #818384">
                <table>
                    <tr>
                        <td  style="width:70%;font-size:medium">
                            <h2 style="color:#F27036;text-align:center;font-family:fantasy"> Online Mobile Shop</h2>
                            <p style="color:#808284;font-size:24px;font-family:fantasy">Largest mobile shop in bangladesh.This is the best place to buy brand new mobile phones of many brands.
                            Largest mobile shop in bangladesh.This is the best place to buy brand new mobile phones of many brands.
                            We offer you the best price in the market.Every Item we have comes with warranty.After ordering an item all you have to do is wait 48 hours
                            Your desired product will be delivered to your door step. You can pay cash on delivery.Please send us your important
                            Feedbacks.Happy Shopping.
 
                                </p>
                        </td>
                    </tr>

                </table>
            </td>
        </tr>
    </table>
            
    <br>
    <h2 style="text-align:center;color:#F37037;font-family:fantasy"><u> Our Products </u></h2><br>
        <table style="margin-left:70%">
            <tr style="height:40px;width:340px">
                <td style="height:100%;width:80%"><asp:TextBox ID="TextBox1" Height="100%" Width="100%" runat="server"></asp:TextBox></td>
                <td style="height:100%;width:20%"><asp:Button ForeColor="#F37037" ID="Button1" Height="100%" Font-Bold="true" Width="100%" runat="server" Text="Search" OnClick="Button1_Click1" /></td>
            </tr>
        </table>
    <br>
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
                <tr>
                    <td style="border:2px solid #F37037"> <a style="text-decoration:none;color:#F37037;" href='AddToCart.aspx?id=<%# Eval("ID") %>'> Add to Cart  </td>
                </tr>
            </table>
        </div> 
        </ItemTemplate>
    </asp:ListView>
    </div>
    <br/>
  <%--  <asp:DataPager ID="lvDataPager1" runat="server" PagedControlID="ListView1" PageSize="16">
            <Fields>
                <asp:NumericPagerField ButtonType="Link" />
            </Fields>
        </asp:DataPager>--%>
   

    </asp:Content>
