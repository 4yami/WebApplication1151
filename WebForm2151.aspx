<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2151.aspx.cs" Inherits="WebApplication1151.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>Convert Temperature</h3>

        <p>
            Enter temperature in Celsius:&nbsp;&nbsp;
            <asp:TextBox ID="txtCelsius" runat="server" />
            &nbsp;&nbsp;
            <asp:Button ID="btnConvert" runat="server" Text="Convert" OnClick="btnConvert_Click" />
        </p>

        <p>
            Temperature in Fahrenheit:&nbsp;&nbsp;
            <asp:Label ID="lblResult" runat="server" Text="" />
        </p>

        <p>
            Body temperature status:&nbsp;&nbsp;
            <asp:Label ID="lblStatus" runat="server" Text="" />
        </p>
        <p>
            Weather temperature status:&nbsp;&nbsp;
            <asp:Label ID="lblWeather" runat="server" Text="" />
        </p>

    </form>
</body>
</html>
