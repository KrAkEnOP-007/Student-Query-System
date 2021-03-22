<%@ Page Title="" Language="C#" MasterPageFile="~/studentView.Master" AutoEventWireup="true" CodeBehind="AllQueries.aspx.cs" Inherits="Student_Query_System.AllQueres" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .allQueries{
            width:80%;
            margin:auto;
            background-color: aqua;
            display:flex;
            justify-content:center;
            align-items:center;
            height:500px;
        }
        #Mainlbl{
            width:100px;
            margin:auto;
            background-color:forestgreen;
            color:chartreuse;
            font-size:30px;
            padding:5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="allQueries">
        <br /> 
        <asp:Label runat="server" ID="Mainlbl" Text="All Queries"></asp:Label>
        <br /> <br />
        <asp:GridView runat="server" ID="DataGrid" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" Width="467px" AutoGenerateColumns="False" BorderStyle="Solid" CellSpacing="2" DataKeyNames="QueryId" DataSourceID="AllQueries">
            <Columns>
                <asp:BoundField DataField="QueryId" HeaderText="QueryId" ReadOnly="True" SortExpression="QueryId" />
                <asp:BoundField DataField="QueryData" HeaderText="QueryData" SortExpression="QueryData" />
                <asp:BoundField DataField="QueryAnswer" HeaderText="QueryAnswer" SortExpression="QueryAnswer" />
                <asp:BoundField DataField="QueryAnswered" HeaderText="QueryAnswered" SortExpression="QueryAnswered" />
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
        <asp:SqlDataSource ID="AllQueries" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AllQueries] WHERE ([QueryAnswered] = @QueryAnswered)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Y" Name="QueryAnswered" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
