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
        <asp:GridView runat="server" ID="DataGrid" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="467px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    </div>
</asp:Content>
