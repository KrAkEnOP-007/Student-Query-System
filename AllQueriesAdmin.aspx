<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AllQueriesAdmin.aspx.cs" Inherits="Student_Query_System.AllQueriesAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       .AllQueriesA{
           width:70%;
           margin:auto;
           background-color:darkturquoise;
           color:darkslategrey;
           justify-content:center;
           align-items:center;
       }
        .auto-style4 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="AllQueriesA">
        <asp:Label ID="MainLbl" runat="server" Text="All Queries"></asp:Label><br />
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" Height="346px" Width="655px" AllowPaging="True" DataKeyNames="QueryId" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" DefaultMode="Edit">
            <EditItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Query Id:</td>
                        <td>
                            <asp:Label ID="QueryIdLabel1" runat="server" Text='<%# Eval("QueryId") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Query Data:</td>
                        <td>
                            <asp:TextBox ID="QueryDataTextBox" runat="server" Text='<%# Bind("QueryData") %>' TextMode="MultiLine" />
                        </td>
                    </tr>
                    <tr>
                        <td>Query Answer:</td>
                        <td>
                            <asp:TextBox ID="QueryAnswerTextBox" runat="server" Text='<%# Bind("QueryAnswer") %>' TextMode="MultiLine" />
                        </td>
                    </tr>
                    <tr>
                        <td>Query Answered:</td>
                        <td>
                            <asp:TextBox ID="QueryAnsweredTextBox" runat="server" Text='<%# Bind("QueryAnswered") %>' MaxLength="1" />
                        </td>
                    </tr>
                    <tr>
                        <td>Query By:</td>
                        <td>
                            <asp:TextBox ID="QueryByTextBox" runat="server" Text='<%# Bind("QueryBy") %>' Enabled="False" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                QueryId:
                <asp:TextBox ID="QueryIdTextBox" runat="server" Text='<%# Bind("QueryId") %>' />
                <br />
                QueryData:
                <asp:TextBox ID="QueryDataTextBox" runat="server" Text='<%# Bind("QueryData") %>' />
                <br />
                QueryAnswer:
                <asp:TextBox ID="QueryAnswerTextBox" runat="server" Text='<%# Bind("QueryAnswer") %>' />
                <br />
                QueryAnswered:
                <asp:TextBox ID="QueryAnsweredTextBox" runat="server" Text='<%# Bind("QueryAnswered") %>' />
                <br />
                QueryBy:
                <asp:TextBox ID="QueryByTextBox" runat="server" Text='<%# Bind("QueryBy") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                QueryId:
                <asp:Label ID="QueryIdLabel" runat="server" Text='<%# Eval("QueryId") %>' />
                <br />
                QueryData:
                <asp:Label ID="QueryDataLabel" runat="server" Text='<%# Bind("QueryData") %>' />
                <br />
                QueryAnswer:
                <asp:Label ID="QueryAnswerLabel" runat="server" Text='<%# Bind("QueryAnswer") %>' />
                <br />
                QueryAnswered:
                <asp:Label ID="QueryAnsweredLabel" runat="server" Text='<%# Bind("QueryAnswered") %>' />
                <br />
                QueryBy:
                <asp:Label ID="QueryByLabel" runat="server" Text='<%# Bind("QueryBy") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [AllQueries] WHERE [QueryId] = @original_QueryId AND [QueryData] = @original_QueryData AND [QueryAnswer] = @original_QueryAnswer AND [QueryAnswered] = @original_QueryAnswered AND [QueryBy] = @original_QueryBy" InsertCommand="INSERT INTO [AllQueries] ([QueryId], [QueryData], [QueryAnswer], [QueryAnswered], [QueryBy]) VALUES (@QueryId, @QueryData, @QueryAnswer, @QueryAnswered, @QueryBy)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [AllQueries] ORDER BY [QueryId]" UpdateCommand="UPDATE [AllQueries] SET [QueryData] = @QueryData, [QueryAnswer] = @QueryAnswer, [QueryAnswered] = @QueryAnswered, [QueryBy] = @QueryBy WHERE [QueryId] = @original_QueryId AND [QueryData] = @original_QueryData AND [QueryAnswer] = @original_QueryAnswer AND [QueryAnswered] = @original_QueryAnswered AND [QueryBy] = @original_QueryBy">
            <DeleteParameters>
                <asp:Parameter Name="original_QueryId" Type="Int32" />
                <asp:Parameter Name="original_QueryData" Type="String" />
                <asp:Parameter Name="original_QueryAnswer" Type="String" />
                <asp:Parameter Name="original_QueryAnswered" Type="String" />
                <asp:Parameter Name="original_QueryBy" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="QueryId" Type="Int32" />
                <asp:Parameter Name="QueryData" Type="String" />
                <asp:Parameter Name="QueryAnswer" Type="String" />
                <asp:Parameter Name="QueryAnswered" Type="String" />
                <asp:Parameter Name="QueryBy" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="QueryData" Type="String" />
                <asp:Parameter Name="QueryAnswer" Type="String" />
                <asp:Parameter Name="QueryAnswered" Type="String" />
                <asp:Parameter Name="QueryBy" Type="String" />
                <asp:Parameter Name="original_QueryId" Type="Int32" />
                <asp:Parameter Name="original_QueryData" Type="String" />
                <asp:Parameter Name="original_QueryAnswer" Type="String" />
                <asp:Parameter Name="original_QueryAnswered" Type="String" />
                <asp:Parameter Name="original_QueryBy" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />


    </div>
</asp:Content>
