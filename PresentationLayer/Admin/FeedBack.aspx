<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="FeedBack.aspx.cs" Inherits="PresentationLayer.Admin.FeedBack" %>

<asp:Content ContentPlaceHolderID="title" runat="server">
    User Feedback
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div style="margin-left:20%">
        <h2>User Feedbacks</h2>
        <hr/>
        <div style="margin-left:20%">
            <asp:GridView ID="GridView1"  Font-Size="Large"  runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="cname" HeaderText="Customer Name" SortExpression="cname" >
                    <HeaderStyle Height="50px" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="response" HeaderText="Feedback" SortExpression="response" />
                    <asp:BoundField DataField="fdate" HeaderText="Date and Time" SortExpression="fdate" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_MOBILE_SHOPConnectionString %>" SelectCommand="select c.cname,f.response,f.fdate from tbl_feedback f join TBL_CUSTOMER c on f.cid=c.id"></asp:SqlDataSource>
        </div>
   </div>

</asp:Content>
