<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="ManageState.aspx.cs" Inherits="PresentationLayer.Admin.ManageState" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="margin-left: 20%">


        <h2>Manage State</h2>
        <hr />
        <div style="margin-left:20%">
        <asp:GridView ID="GridView1" Font-Size="Large" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" Width="486px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="Expr1" HeaderText="Country" SortExpression="Expr1" />
                <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_MOBILE_SHOPConnectionString3 %>" DeleteCommand="DELETE FROM [STATE] WHERE ID=@STATE" SelectCommand="SELECT STATE.ID,STATE.NAME, COUNTRY.NAME AS Expr1 FROM STATE INNER JOIN COUNTRY ON STATE.COUNTRYID = COUNTRY.ID" UpdateCommand="UPDATE STATE SET NAME = @NAME WHERE (ID = @STATE)">
            <DeleteParameters>
                <asp:Parameter Name="STATE" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" />
                <asp:Parameter Name="STATE" />
            </UpdateParameters>
        </asp:SqlDataSource>
            <br />
            </div>
    </div>
    

</asp:Content>
