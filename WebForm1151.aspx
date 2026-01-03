<%@ Page Title="151" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1151.aspx.cs" Inherits="WebApplication1151.WebForm1151" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <p>Hello World!</p>
        <p>
            Hello message 1:
            <asp:Label ID="lblMessage1" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnMalaysia" runat="server" Text="Malaysia" OnClick="btnMalaysia_Click" />
        </p>
        <p>
            <asp:Button ID="btnUniKL" runat="server" Text="UniKL" OnClick="btnUniKL_Click" />
        </p>


        <p>
            Hello message 2:
            <asp:Label ID="lblMessage2" runat="server" Text=""></asp:Label>
        </p>
        <p>
            Enter text:
            <asp:TextBox ID="txtMessage2" runat="server"> </asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnSomeone" runat="server" Text="Submit" OnClick="btnSomeone_Click" />
        </p>

</asp:Content>

