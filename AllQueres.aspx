<%@ Page Title="" Language="C#" MasterPageFile="~/studentView.Master" AutoEventWireup="true" CodeBehind="AllQueres.aspx.cs" Inherits="Student_Query_System.AllQueres" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .allQueries{
            width:50%;
            margin:auto;
            background-color: aqua;
            display:flex;
            justify-content:center;
            align-items:center;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="allQueries">
        <asp:Label runat="server" ID="Mainlbl" Text="All Queries"></asp:Label>
        <asp:GridView runat="server" ID="DataGrid"></asp:GridView>
    </div>
</asp:Content>
