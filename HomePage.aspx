<%@ Page Title="" Language="C#" MasterPageFile="~/studentView.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Student_Query_System.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Myheading{
            font-size:60px;
            text-align:center;
            color:chocolate;
            text-shadow:10px 5px 10px black;
            padding-top:50px;
        }
        .main{
            display:flex;
            align-content:center;
            justify-content:center;
            height:200px;
            background-color:darkmagenta;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="main">  <p class="Myheading">welcome to Student Query System</p> </div>
</asp:Content>
