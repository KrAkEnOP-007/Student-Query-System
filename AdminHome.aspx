<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Student_Query_System.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .AdmLbl{
            font-size:70px;
            color: aqua;
            text-shadow: 5px 5px 7px yellow;
            text-align:center;
        }
        .mainDiv{
            background-color:darkmagenta;
            display:flex;
            justify-content:center;
            align-content:center;
            align-items:center;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mainDiv">
<asp:Label ID="Label1" runat="server" Text="Welcome Admin" CssClass="shadow-lg AdmLbl"></asp:Label>
    </div>
    
</asp:Content>
