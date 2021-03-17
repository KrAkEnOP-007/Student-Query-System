<%@ Page Title="" Language="C#" MasterPageFile="~/studentView.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Student_Query_System.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    .ContactUs{
        width:70%;
        margin:auto;
        padding10px;
        background-color:bisque;
        display:flex;
        flex-direction:column;
      
    }
    .mainData{
      
    }
    .auto-style1 {
        height: 51px;
    }
    .auto-style2 {
        height: 43px;
    }
    .auto-style3 {
        height: 44px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ContactUs">
       <label style="width:100px; margin:auto; " >contact us</label><br /><br />
        <div class="mainData">
            <table style="width:70%;margin:auto;">
                <tr>
                    <td class="auto-style1">Address : </td>
                    <td class="auto-style1"><asp:Label runat="server" ID="addresslbl" Text="Address"></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style2">Phone No :</td>
                    <td class="auto-style2"><label>9898989898</label></td>
                </tr>
                <tr>
                    <td class="auto-style3">Email Id:</td>
                    <td class="auto-style3"><label>sample@gmail.com</label></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>

            </table>
        </div>
    </div>
</asp:Content>
