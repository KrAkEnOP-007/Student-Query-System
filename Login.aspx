<%@ Page Title="" Language="C#" MasterPageFile="~/studentView.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Student_Query_System.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .loginNav{
            width:80%;
            margin:auto;
            padding:10px;
            display:flex;
            background-color:rgba(0,0,0,0.8);
            justify-content:space-evenly;
            align-items:center;
        }
        .Navbuttons{
            margin:5px;
            border: 0px;
            background-color:transparent;
            color:cyan;
            font-size:25px;
            width:fit-content();
            border-radius:6px;
            padding:7px;
        }
        .Navbuttons:hover{
            background-color:green;
            color:cadetblue;
            transition:all ease-in-out 0.7s;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="loginNav">
        <asp:Button runat="server" class="Navbuttons" ID="StudentloginBtn" Text="Student Login"  />
        <asp:Button runat="server" class="Navbuttons" ID="StudentRegisterBtn" Text="Register Student" />
        <asp:Button runat="server" class="Navbuttons" ID="AdminLoginbtn" Text="Admin Login" />
    </div>
    
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="StudentLogin" runat="server"></asp:View>
        <asp:View ID="StudentRegister" runat="server"></asp:View>
        <asp:View ID="AdminLogin" runat="server"></asp:View>

    </asp:MultiView>
</asp:Content>
