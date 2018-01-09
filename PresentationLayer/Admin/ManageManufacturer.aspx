<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="ManageManufacturer.aspx.cs" Inherits="PresentationLayer.Admin.ManageManufacturer" %>

<asp:Content ContentPlaceHolderID="title" runat="server">
    Manage Manufacturer
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="margin-left: 20%">
        


        <h2>Manage Manufacturer</h2>
        <hr />
        <div style="margin-left:20%">
            <asp:GridView ID="GridView1" Font-Size="Large" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="375px" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="MNAME" HeaderText="Brand Name" SortExpression="MNAME" />
                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" HorizontalAlign="Center"/>
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <br/>
             <asp:TextBox ID="txtManufacturer" runat="server" Width="209px"></asp:TextBox><br/>
            <asp:Button ID="Button1" runat="server" Text="Add Manufacturer" BackColor="#8DD28A" Font-Bold="True" OnClick="Button1_Click" Width="144px" />



            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_MOBILE_SHOPConnectionString6 %>" DeleteCommand="DELETE FROM MANUFACTURER WHERE ID=@ID" SelectCommand="SELECT * FROM MANUFACTURER" UpdateCommand="UPDATE MANUFACTURER SET MNAME =@MNAME WHERE ID=@ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MNAME" />
                    <asp:Parameter Name="ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
