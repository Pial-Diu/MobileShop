<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="ManageCountry.aspx.cs" Inherits="PresentationLayer.Admin.ManageCountry" %>

<asp:Content ContentPlaceHolderID="title" runat="server">
    Manage Country
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div style="margin-left: 20%">
        <h2>Manage Country</h2>
        <hr/>
        <div style="margin-left:20%">
            <asp:GridView ID="GridView1" Font-Size="Large" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="319px" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="NAME" HeaderText="Country Name" SortExpression="NAME" />
                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" HorizontalAlign="Center" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" HorizontalAlign="Center"/>
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <br />

            <asp:TextBox ID="txtCountryName" runat="server" Width="209px"></asp:TextBox><br/>
            <asp:Button ID="Button1" runat="server" Text="Add Country" BackColor="#8DD28A" Font-Bold="True" OnClick="Button1_Click" Width="128px" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_MOBILE_SHOPConnectionString2 %>" DeleteCommand="DELETE FROM COUNTRY WHERE ID=@ID" SelectCommand="SELECT COUNTRY.* FROM COUNTRY" UpdateCommand="UPDATE COUNTRY SET NAME =@NAME WHERE ID=@ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NAME" />
                    <asp:Parameter Name="ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="PresentationLayer.LinqDataContext" EntityTypeName="" TableName="COUNTRies">
            </asp:LinqDataSource>
        </div>

    </div>

</asp:Content>
