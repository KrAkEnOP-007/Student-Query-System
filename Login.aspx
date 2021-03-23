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
      
          .loginBox{
            align-content:center;
            justify-content:center;
            background-color:rgba(0, 0, 0, 0.8);
            box-shadow:8px 8px black;
            height:500px; 
            width: 400px;
            margin:auto;
            margin-bottom:20px;
            padding:25px;
        }
        #LoginLbl{
          
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            width: 160px;
            margin:auto;
            border:2px solid blue;
        }
        .loginLbl{
            
            position:relative;
            color:cyan;
            font-size:30px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            left:100px;
        }
        .BtnLogin{
            position:relative;
            width:70px;
            top:70px;
            left:30%;
            
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="loginNav">
        <asp:Button runat="server"  class="Navbuttons" ID="StudentloginBtn"  OnClick="StudentloginBtn_Click" Text="Student Login" />
        <asp:HyperLink runat="server" class="Navbuttons" ID="StudentRegister" NavigateUrl="~/StudentRegister.aspx" Text="Register Student"  />
        <asp:Button runat="server" class="Navbuttons" ID="AdminLoginbtn"  OnClick="AdminLoginbtn_Click" text="Admin Login" />
    </div>

            <div class="loginBox">
                <asp:Label runat="server" CssClass="loginLbl" ID="LoginLbl">Login</asp:Label>
                <div class="form-floating mb-3">
                    <asp:TextBox runat="server" type="Text" class="form-control bg-dark text-white border-3" ID="userText" placeholder="name@example.com" />
                    <label class="text-white" for="floatingInput">User Name</label>

                    </div>
                <div class="form-floating">
                    <asp:TextBox runat="server" type="password" class="form-control bg-dark text-white border-3" ID="PasswordTxt" placeholder="Password" />
                    <label class="text-white" for="floatingPassword">Password</label>
                    </div>
                <asp:Label ID="ErrorLoginTxt" runat="server" ForeColor="White"></asp:Label>
                <asp:Button runat="server" ID="LoginBtn" CssClass="btn btn-secondary BtnLogin" Text="Submit" Width="100px" OnClick="LoginBtn_Click" />


                
             </div>
   
        
</asp:Content>
