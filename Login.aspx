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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="loginNav">
        <asp:Button runat="server" class="Navbuttons" ID="StudentloginBtn" Text="Student Login"  />
        <asp:Button runat="server" class="Navbuttons" ID="StudentRegisterBtn" Text="Register Student" />
        <asp:Button runat="server" class="Navbuttons" ID="AdminLoginbtn" Text="Admin Login" />
    </div>
    
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1">
        <asp:View ID="StudentLogin" runat="server"></asp:View>
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
        <asp:View ID="AdminLogin" runat="server"></asp:View>

    </asp:MultiView>
</asp:Content>
