<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="AddProduct.aspx.cs" Inherits="PresentationLayer.Admin.AddProduct" %>

<asp:Content ContentPlaceHolderID="title" runat="server">
    Add Product
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="margin-left: 20%">


        <h2>Add Product</h2>
        <hr />

        <div style="margin-left:150px; width:45%;height:500px;background-color:">
            <table style="color:#23527C;font-weight:bold">
                <tr>
                            <td> Brand: </td>
                            <td style="font-weight:normal"> <asp:DropDownList ID="ddlBrand" runat="server" OnSelectedIndexChanged="ddlBrand_SelectedIndexChanged">
                                </asp:DropDownList> </td>
                </tr>
                
                <tr style="height:10px"> <td></td> </tr>
                <tr>
                    <td> Model: 
                        </td>
                    <td> <asp:TextBox  ID="txtModel" runat="server" Width="200px"></asp:TextBox> </td>
                </tr>
                <tr style="height:10px"> <td></td> </tr>
                <tr>
                <td> Price: 
                        </td>
                    <td> <asp:TextBox  ID="txtPrice" runat="server" Width="200px" TextMode="Number"></asp:TextBox> </td>
                </tr>
                <tr style="height:10px"> <td></td> </tr>
                <tr>
                <td> Image: 
                       </td>
                    <td>  <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style2" Height="26px" Width="172px" />  </td>
                </tr>
                <tr style="height:10px"> <td></td> </tr>
                <tr>
                <td> Warranty: 
                        </td>
                    <td> 
                        <asp:RadioButtonList ForeColor="Black" id="warranty"  runat="server"  >
                                    <asp:ListItem Text="1 year" Value="1 Year" Selected="true" />
                                    <asp:ListItem Text="2 year" Value="2 Years" />
                                    <asp:ListItem Text="3 year" Value="3 Years" />
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <%--<tr style="height:10px"> <td></td> </tr>--%>
                <tr>
                <td> Front Camera: 
                        </td>
                    <td> <asp:TextBox  ID="txtFront" runat="server" Width="200px" TextMode="Number"></asp:TextBox> </td>
                </tr>
                <tr style="height:10px"> <td></td> </tr>
                <tr>
                <td> Back Camera: 
                        </td>
                    <td> <asp:TextBox  ID="txtBack" runat="server" Width="200px" TextMode="Number"></asp:TextBox> </td>
                </tr>
                <tr style="height:10px"> <td></td> </tr>
                <tr>
                <td> RAM: 
                        </td>
                    <td> <asp:TextBox  ID="txtRAM" runat="server" Width="200px"></asp:TextBox> </td>
                </tr>
                <tr style="height:10px"> <td></td> </tr>
                <tr>
                <td> ROM: 
                        </td>
                    <td> <asp:TextBox  ID="txtROM" runat="server" Width="200px"></asp:TextBox> </td>
                </tr>
                <tr style="height:10px"> <td></td> </tr>
                <tr>
                <td> Processor: 
                        </td>
                    <td> <asp:TextBox  ID="txtProcessor" runat="server" Width="200px"></asp:TextBox> </td>
                </tr>
                <tr style="height:10px"> <td></td> </tr>
                <tr>
                <td> OS: 
                        </td>
                    <td> <asp:TextBox  ID="txtOS" runat="server" Width="200px"></asp:TextBox> </td>
                </tr>
                <tr style="height:10px"> <td></td> </tr>
                <tr>
                <td> Battery: 
                        </td>
                    <td> <asp:TextBox  ID="txtBattery" runat="server" Width="200px" TextMode="Number"></asp:TextBox> </td>
                </tr>
                <tr style="height:10px"> <td></td> </tr>
                <tr>
                <td> Display Size: 
                        </td>
                    <td> <asp:TextBox  ID="txtDisplay" runat="server" Width="200px"></asp:TextBox> </td>
                </tr>
                </table>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Add Product" BackColor="#23527C" CssClass="auto-style1" Font-Bold="True" ForeColor="White" Height="40px" Width="302px" OnClick="Button1_Click" />    
        </div>

   
        <br/><br/>
    </div>
    <br/><br/>
</asp:Content>

