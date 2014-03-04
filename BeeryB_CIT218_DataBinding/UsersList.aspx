<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsersList.aspx.cs" Inherits="BeeryB_CIT218_DataBinding.UsersList" %>

<asp:Content ID="Header" ContentPlaceHolderID="FeaturedContent" runat="server">
        <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>REGISTERED USERS.</h1>
                <h2>View a list of all currently registered users and their information.</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content ID="UserListContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView_ListUsers" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" Width="1084px" AllowPaging="True" AllowSorting="True">
    <Columns>
        <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:CheckBoxField DataField="IsAdmin" HeaderText="IsAdmin" SortExpression="IsAdmin" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuizBuilderConnectionString %>" SelectCommand="SELECT DISTINCT [FirstName], [LastName], [UserID], [UserName], [Password], [Email], [IsAdmin] FROM [Users]"></asp:SqlDataSource>

</asp:Content>
