<%@ Page Title="" Language="C#" MasterPageFile="~/studentView.Master" AutoEventWireup="true" CodeBehind="AllQueries.aspx.cs" Inherits="Student_Query_System.AllQueres" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .allQueries{
            width:80%;
            margin:auto;
            background-color:blueviolet;
            
            justify-content:center;
            align-items:center;
            height:500px;
        }
        .Mainlbl{
            width:auto;
            margin-left:30%;
            padding:5px;
            text-shadow:3px 5px 7px yellow;
            color:darkblue;
            font-size:50px;
            padding:5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="allQueries">
        <br /> 
        <asp:Label runat="server" ID="Mainlbl" CssClass="Mainlbl" Text="All Queries"></asp:Label>
        <br />
        <br /> <br />
        <asp:GridView runat="server" ID="DataGrid" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" Width="100%" AutoGenerateColumns="False" BorderStyle="Solid" CellSpacing="2"  DataKeyNames="QueryId" DataSourceID="AllQueries" AllowPaging="True" AllowSorting="True" PageSize="5">
            <Columns>
                <asp:BoundField DataField="QueryId" HeaderText="QueryId" ReadOnly="True" SortExpression="QueryId" />
                <asp:BoundField DataField="QueryData" HeaderText="QueryData" SortExpression="QueryData" />
                <asp:BoundField DataField="QueryAnswer" HeaderText="QueryAnswer" SortExpression="QueryAnswer" />
                <asp:BoundField DataField="QueryBy" HeaderText="QueryBy" SortExpression="QueryBy" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="AllQueries" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [QueryId], [QueryData], [QueryAnswer], [QueryBy] FROM [AllQueries] WHERE ([QueryAnswered] = @QueryAnswered) ORDER BY [QueryId]" DeleteCommand="DELETE FROM [AllQueries] WHERE [QueryId] = @QueryId" InsertCommand="INSERT INTO [AllQueries] ([QueryId], [QueryData], [QueryAnswer], [QueryBy]) VALUES (@QueryId, @QueryData, @QueryAnswer, @QueryBy)" UpdateCommand="UPDATE [AllQueries] SET [QueryData] = @QueryData, [QueryAnswer] = @QueryAnswer, [QueryBy] = @QueryBy WHERE [QueryId] = @QueryId">
            <DeleteParameters>
                <asp:Parameter Name="QueryId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="QueryId" Type="Int32" />
                <asp:Parameter Name="QueryData" Type="String" />
                <asp:Parameter Name="QueryAnswer" Type="String" />
                <asp:Parameter Name="QueryBy" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="Y" Name="QueryAnswered" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="QueryData" Type="String" />
                <asp:Parameter Name="QueryAnswer" Type="String" />
                <asp:Parameter Name="QueryBy" Type="String" />
                <asp:Parameter Name="QueryId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
