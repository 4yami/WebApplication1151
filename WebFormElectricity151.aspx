<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormElectricity151.aspx.cs" Inherits="WebApplication1151.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Electricity Bill Application</h1>
            <br />

            <asp:Label Text="Customer name: " runat="server" />
            <asp:TextBox ID="txtCustomerName" runat="server" />
            <br />
            <br />

            <asp:Label Text="Current unit reading: " runat="server" />
            <asp:TextBox ID="txtCurrentReading" runat="server" />
            <br />
            <br />

            <asp:Label Text="Previous unit reading: " runat="server" />
            <asp:TextBox ID="txtPreviousReading" runat="server" />
            <br />
            <br />

            <table border="1" cellpadding="5" cellspacing="0">
                <thead>
                    <tr>
                        <th>Tariff Block (kWh)</th>
                        <th>Units (kWh)</th>
                        <th>Rate (RM)</th>
                        <th>Amount (RM)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Block 1: 0 - 300</td>
                        <td>
                            <asp:Label ID="lblUnit1" runat="server" /></td>
                        <td>0.30</td>
                        <td>
                            <asp:Label ID="lblAmount1" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Block 2: 301 - 700</td>
                        <td>
                            <asp:Label ID="lblUnit2" runat="server" /></td>
                        <td>0.40</td>
                        <td>
                            <asp:Label ID="lblAmount2" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Block 3: > 700</td>
                        <td>
                            <asp:Label ID="lblUnit3" runat="server" /></td>
                        <td>0.50</td>
                        <td>
                            <asp:Label ID="lblAmount3" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Total</td>
                        <td>
                            <asp:Label ID="lblUnitTotal" runat="server" /></td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblAmountTotal" runat="server" /></td>
                    </tr>
                </tbody>
            </table>
            <br />
            <br />

            <asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="btnSubmit_Click" />
        </div>
    </form>

</body>
</html>
