<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3151.aspx.cs" Inherits="WebApplication1151.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Name:
            <asp:TextBox ID="txtName" runat="server" />
        </p>
        <p>
            Test (/25):
            <asp:TextBox ID="txtTest" runat="server" />
        </p>
        <p>
            Assignment (/50):
            <asp:TextBox ID="txtAssignment" runat="server" />
        </p>
        <p>
            Project (/75):
            <asp:TextBox ID="txtProject" runat="server" />
        </p>
        <p>
            Final Exam (/100):
            <asp:TextBox ID="txtFinalExam" runat="server" />
        </p>
        <p>
            <asp:Button ID="btnCalculate" Text="Calculate" runat="server" OnClick="btnCalculate_Click" />
        </p>
        <p>
            Overall mark (/100):
            <asp:Label ID="lblOverallMark" Text="" runat="server" />
        </p>
        <p>
            Grade:
            <asp:Label ID="lblGrade" Text="" runat="server" />
        </p>
    </form>
</body>
</html>
