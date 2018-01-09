<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainSite.Master"  CodeBehind="ContactUs.aspx.cs" Inherits="PresentationLayer.ContactUs" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    Contact Us
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;height:300px">
              <tr>
                <td style="">
                 <asp:Image id="Image2" runat="server" AlternateText="Mobile Shop" ImageAlign="left" ImageUrl="images/contactus2.jpg" Height="100%" Width="100%"/>
                </td>
              </tr>
        </table>

    <h2 style="color:#F26F36;text-align:center;margin-top:30px">Contact Information</h2>
    <div style="background-color:antiquewhite;color:#445F9D;text-align:center">
        <b>Anonymous Corp.</b><br/>
        <b>Dhaka-1207,Bangladesh.</b><br/>
        <b>anonymous.corp@hotmail.com</b><br/>
        <b>Cell: +8801711234567</b><br/>
    </div>
    <h2 style="color:#F26F36;text-align:center;margin-top:30px">Send us Feedback</h2>
    <div style="background-color:;color:#445F9D;text-align:center">
        <br/>
        <textarea id="TextArea1" name="S1" ></textarea><br/><br/>
        <asp:Button Height="30px" BackColor="#DA7244" Font-Bold="true" ID="Button1" runat="server" Text="Submit Your Response" OnClick="Button1_Click" />
    </div>
    

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="heads">
    <style type="text/css">
        #TextArea1 {
            height: 135px;
            width: 631px;
        }
    </style>
</asp:Content>
