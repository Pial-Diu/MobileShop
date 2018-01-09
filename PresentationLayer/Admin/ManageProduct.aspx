<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="ManageProduct.aspx.cs" Inherits="PresentationLayer.Admin.ManageProduct" %>

<asp:Content ContentPlaceHolderID="title" runat="server">
    Manage Products
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="margin-left: 20%">


        <h2>Manage Product</h2>
        <hr />

        <div style="margin-left:0%">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="Black" AllowPaging="True" AllowSorting="True" Width="993px" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="PBRAND" HeaderText="Brand" SortExpression="PBRAND" />
                    <asp:BoundField DataField="PMODEL" HeaderText="Model" SortExpression="PMODEL" />
                    <asp:BoundField DataField="PPRICE" HeaderText="Price" SortExpression="PPRICE" />
                    <asp:BoundField DataField="PCAMBACK" HeaderText="Camera I" SortExpression="PCAMBACK" />
                    <asp:BoundField DataField="PCAMFRONT" HeaderText="Camera II" SortExpression="PCAMFRONT" />
                    <asp:BoundField DataField="PRAM" HeaderText="RAM" SortExpression="PRAM" />
                    <asp:BoundField DataField="PROM" HeaderText="ROM" SortExpression="PROM" />
                    <asp:BoundField DataField="PPROCESSOR" HeaderText="Processor" SortExpression="PPROCESSOR" />
                    <asp:BoundField DataField="POS" HeaderText="OS" SortExpression="POS" />
                    <asp:BoundField DataField="PBATTERY" HeaderText="Battery" SortExpression="PBATTERY" />
                    <asp:BoundField DataField="PDISPLAY" HeaderText="Display" SortExpression="PDISPLAY" />
                    <asp:BoundField DataField="PWARRANTY" HeaderText="Warranty" SortExpression="PWARRANTY" />
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_MOBILE_SHOPConnectionString7 %>" SelectCommand="SELECT [ID], [PBRAND], [PMODEL], [PWARRANTY], [PPRICE], [PDATE], [PCAMBACK], [PCAMFRONT], [PRAM], [PROM], [PPROCESSOR], [POS], [PBATTERY], [PDISPLAY] FROM [PRODUCT]" DeleteCommand="DELETE FROM PRODUCT where ID=@ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" />
                </DeleteParameters>
            </asp:SqlDataSource>

        </div>
    </div>


</asp:Content>
