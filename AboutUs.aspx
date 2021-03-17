<%@ Page Title="" Language="C#" MasterPageFile="~/studentView.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Student_Query_System.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    .aboutus{
        width:80%;
        margin:auto;
        padding:5px;
        background-color:aliceblue;
        display:flex;
        justify-content:center;
        align-content:center;
    }
    .data{
        width:70%;
        margin:auto;
        background-color:darkgreen;
        color:aquamarine;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="aboutUs">
        <label style="font-size:50px;">About Us</label>
        <div class="Picture"> <asp:Image runat="server" ID="Mainpic" Height="98px" Width="100%"/></div><br />
        <div class="data"> This is About Section</div>
    </div>
</asp:Content>
