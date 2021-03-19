<%@ Page Title="" Language="C#" MasterPageFile="~/studentView.Master" AutoEventWireup="true" CodeBehind="NewQuery.aspx.cs" Inherits="Student_Query_System.NewQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .query{
            height:400px;
            width:500px;
            margin: 20px auto;
            background-color:rgb(0 ,0 ,0,0.5);
            padding:30px;           
            color:burlywood;
            font-size:25px;

        }
        .mainLbl{
            border: 2px;
            border-radius:8px;
            margin-left:25%;
            margin-top:50px;
            padding:5px;
            background-color:darkgreen;
            color:azure;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="query">
            <asp:Label  runat="server" CssClass="mainLbl" ID="mainLbl" Text="Enter Your Query"></asp:Label><br />
            <br />
            <div class="form-floating">
                <asp:TextBox runat="server" TextMode="MultiLine" class="form-control bg-dark text-white" Rows="5" MaxLength="200" placeholder="Leave a comment here" id="floatingTextarea2" Height="136px"></asp:TextBox>
                <label for="floatingTextarea2">Your Query</label>
            </div>
            <br />
            <asp:Button runat="server" ID="SubmitBtn" CssClass="btn btn-primary" Text="Submit Query" OnClick="SubmitBtn_Click" />
        </div>
    </div>
</asp:Content>
