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
        .studReg{
            background-color:gray;
            width:80%;
            margin:auto;
            display:flex;
            justify-content:center;
            align-items:center;
            flex-direction:column;
        }
        .auto-style1 {
            width: 224px;
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
            font-size:45px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            left:120px;
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
        <asp:Button runat="server" class="Navbuttons" ID="StudentloginBtn" Text="Student Login" OnClick="StudentloginBtn_Click"  />
        <asp:Button runat="server" class="Navbuttons" ID="StudentRegisterBtn" Text="Register Student" OnClick="StudentRegisterBtn_Click" />
        <asp:Button runat="server" class="Navbuttons" ID="AdminLoginbtn" Text="Admin Login" OnClick="AdminLoginbtn_Click" />
    </div>
    
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1">
        <asp:View ID="StudentLogin" runat="server">


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
                <asp:Button runat="server" ID="LoginBtn" CssClass="btn btn-secondary BtnLogin" Text="Submit" Width="100px" OnClick="LoginBtn_Click" />


                <asp:Label ID="ErrorLoginTxt" runat="server" ForeColor="Red"> </asp:Label>
                </div>
        </asp:View>
        <asp:View ID="StudentRegister" runat="server">
            <div class="container studReg">
              <table style="width:100%; margin:5px; padding:5px;">
                  
                  <tbody>
                      <tr>
                          <td colspan="3"><h1>Student Registration</h1></td>
                         
                      </tr>
                      <tr>
                          <td class="auto-style1">Name: -</td>
                          <td>
                              <div class="form-floating mb-3">
                                  <asp:TextBox runat="server" type="email" class="form-control" ID="Name" placeholder=""></asp:TextBox>
                                  <label for="Name">Name</label>
                              </div>
                          </td>
                          <td></td>
                      </tr>
                      <tr>
                          <td class="auto-style1">Username:-</td>
                          <td>
                              <div class="form-floating mb-3">
                                  <asp:TextBox runat="server" type="email" class="form-control" id="floatingEmail" placeholder="name@example.com"></asp:TextBox>
                                  <label for="floatingEmail">Email address</label>
                              </div>
                          </td>
                          <td></td>
                      </tr>
                      <tr>
                          <td class="auto-style1">Password:-</td>
                          <td>
                              <div class="form-floating">
                                  <asp:TextBox runat="server" type="password" class="form-control" id="floatingPassword" placeholder="Password"></asp:TextBox>
                                  <label for="floatingPassword">Password</label>
                              </div>
                          </td>
                          <td></td>
                      </tr>
                      <tr>
                          <td class="auto-style1"></td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td colspan="3" style="display:flex; justify-content:center;">
                              <asp:Button runat="server" ID="Signupbtn" Text="Sign Up" CssClass="btn btn-primary"/>
                          </td>
                      </tr>

                  </tbody>
              </table>
            </div>
        </asp:View>

    </asp:MultiView>
</asp:Content>
