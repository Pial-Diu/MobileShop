<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="PresentationLayer.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border:1px solid red">
            <% for (int i = 0; i < 5; i++)
                { %>
                <tr style="width:400px">
                    <td style="width:50%"> This is </td>
                    <td> <% Response.Write(i); %> </td>
                </tr>
            <% }; %>
           </table>

        </div>
    </form>
</body>
</html>
