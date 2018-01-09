<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainSite.Master" CodeBehind="CustomSearch.aspx.cs" Inherits="PresentationLayer.CustomSearch" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    Custom Search
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 style="text-align:center;color:#F37037;font-family:Ebrima"><u> Custom Search </u></h1><br />

    <table style="margin-left:35%;text-align:center;font-weight:bolder;color:#F37037;font-size:larger">
        <tr style="border:1px solid black">
            <td>
                Brand
            </td>
            <td>
               Budget
            </td>
            <td>Model/Brand</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="ddlBrand" runat="server" Font-Bold="True" ForeColor="#007ACC"></asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" ForeColor="#007ACC">
                    <asp:ListItem Text="5,000 BDT" Value="5000"/>
                    <asp:ListItem Text="10,000 BDT" Value="10000" />
                    <asp:ListItem Text="15,000 BDT" Value="15000" />
                    <asp:ListItem Text="20,000 BDT" Value="20000" />
                    <asp:ListItem Text="25,000 BDT" Value="25000" />
                    <asp:ListItem Text="30,000 BDT" Value="30000" />
                    <asp:ListItem Text="40,000 BDT" Value="40000" />
                    <asp:ListItem Text="50,000 BDT" Value="50000" />
                    <asp:ListItem Text="75,000 BDT" Value="75000" />
                    <asp:ListItem Text="1,00,000 BDT" Value="100000" />
                    <asp:ListItem Text="1,00,000+ BDT" Value="10000000" />
                </asp:DropDownList>
            </td>
            <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <div style="margin-left:35%">
        <asp:Button ID="Button1" Width="345px" Height="30px" runat="server" Text="Search" Font-Bold="True" Font-Size="Large" ForeColor="#F37037" OnClick="Button1_Click" />
    </div>
    <br>


    <div style="width:100%;height:auto;">
        <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
        <div style="width:25%;height:auto;float:left;background-color:white;text-align:center;border:0px solid red;font-weight:bold">
            <table style="margin-left:50px;color:#F37037;margin-bottom:50px;text-align:center">
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



    <br /><br /><br />
</asp:Content>
