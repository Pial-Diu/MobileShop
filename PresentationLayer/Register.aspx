<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainSite.Master" CodeBehind="Register.aspx.cs" Inherits="PresentationLayer.Register" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style type="text/css">
        #TextArea1 {
            width: 229px;
        }

         .auto-style1 {
             margin-left: 0px;
         }

         .auto-style2 {
             width: 224px;
         }

    </style>
     <h2 style="text-align:center;color:#ED8154;margin-top:30px">
                Registration Form
            </h2>
    <table style="height:auto;width:100%;border:0px solid;color:#F26F36">
            <tr>
                <td style="width:30%;"> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="None" ErrorMessage="Please enter a valid Email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" Display="None" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password mismatch"></asp:CompareValidator>
                    <br />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDOB" Display="None" ErrorMessage="Please enter Date of Birth"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhone" Display="None" ErrorMessage="Please enter Phone Number"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <div style="width:50%;color:#4066B1;border-bottom:2px dashed #808284;font-weight:bolder;">
                        Basic Information
                        
                    </div><br/>
                    <table style="">
                        <tr>
                            <td> Name: 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter your name" ForeColor="Red" style="z-index: 1; left: 891px; top: 605px; position: absolute" Display="None"></asp:RequiredFieldValidator>
                            </td>
                            <td> <asp:TextBox  ID="txtName" runat="server" Width="200px"></asp:TextBox> </td>
                            <td>  </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                </asp:ToolkitScriptManager>
                            </td>
                        </tr>
                        <tr>
                            <td> Email: </td>
                            <td> <asp:TextBox ID="txtEmail" runat="server" Width="200px" TextMode="Email"></asp:TextBox> </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td> Password: 
                            <td> <asp:TextBox ID="txtPassword" runat="server" Width="180px" TextMode="Password"></asp:TextBox> </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td> Confirm Password: </td>
                            <td> <asp:TextBox ID="txtConfirmPassword" runat="server"  Width="180px" TextMode="Password"></asp:TextBox> </td>
                        </tr>
                    </table><br/>
                    <div style="width:50%;color:#4066B1;border-bottom:2px dashed #808284;font-weight:bolder;">
                        Personal Information
                    </div><br/>

                    <table style="">
                        <tr>
                            <td> Gender :</td>
                            <td>
                                <asp:RadioButtonList ForeColor="Black" id="gender"  runat="server"  >
                                    <asp:ListItem Text="Male" Value="Male" Selected="true" />
                                    <asp:ListItem Text="Female" Value="Female" />
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr>
                            <td> Date of Birth: </td>
                            <td> <asp:TextBox ID="txtDOB" runat="server" Width="200px"></asp:TextBox> 
                                
                                <asp:CalendarExtender ID="txtDOB_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtDOB">
                                </asp:CalendarExtender>
                                
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr>
                            <td> Phone: </td>
                            <td> <asp:TextBox ID="txtPhone" runat="server" Width="200px" OnTextChanged="TextBox5_TextChanged"></asp:TextBox> 
                            </td>
                        </tr>
                    </table><br/>
                    <div style="width:50%;color:#4066B1;border-bottom:2px dashed #808284;font-weight:bolder;">
                        Address Information
                    </div><br/>

                    <table>
                    <tr>
                            <td> Country: </td>
                            <td> <asp:DropDownList ID="ddlCountry" runat="server" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList> </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr>
                            <td> State: </td>
                            <td> <asp:DropDownList ID="ddlState" runat="server" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                                </asp:DropDownList> </td>
                        </tr>
                        <tr>
                            <td>
                             </td>
                        </tr>
                        <tr>
                            <td> Address: </td>
                            <td> <textarea id="TextArea1" name="S1" rows="4"></textarea> </td>
                        </tr>
                       </table><br/>
                    <div style="width:50%;color:#4066B1;border-bottom:2px dashed #808284;font-weight:bolder;">
                        Recovery Options
                    </div><br/>
                    <table>
                        <tr>
                            <td> Security Question: </td>
                            <td> <textarea id="TextArea2" name="S2" rows="2" class="auto-style2"></textarea> </td>
                        </tr>
                        <tr>
                            <td>  </td>
                        </tr>
                        <tr>
                            <td> Your Answer: </td>
                            <td> <asp:TextBox ID="txtAnswer" runat="server" Width="226px" Height="16px"></asp:TextBox> </td>
                        </tr>
                        
                    </table>
                </td>
            </tr>
        </table>

        <br/>

     <div style="margin-left:40%">
         <asp:Button Height="40px" Font-Bold="true" Width="200px" BackColor="#F26F36" ForeColor="" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />

     &nbsp;<br />

         <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Height="90px" Width="218px" CssClass="auto-style1" />

     </div>
        

</asp:Content>