<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="practice2020._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My first VS 2019 Application</title>
    <link href="css/practice.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 960px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 336px;
        }
        .auto-style4 {
            width: 336px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
            <h1>WELCOME TO MY APP</h1>
            <h2>IS 4880</h2>
                </header>
        </div>
        <h2>Hyperlinks - there are three types of hyperlinks in VB.NET</h2>
        <p>
            <a href="http://www.kennesaw.edu">This is a html hyperlink.</a></p>
        <p>
            Hyperlink Control</p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Contactus.aspx">Contact Us</asp:HyperLink>
        </p>
        <p>
            LinkButton or ImageButton</p>
        <asp:LinkButton ID="LinkButton1" runat="server">KSU</asp:LinkButton>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td colspan="2">Enter the following information</td>
            </tr>
            <tr>
                <td class="auto-style3">Name:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtName" runat="server" Width="322px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="nameValidate" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter a name." ForeColor="Red">*Please enter a name.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Zip:</td>
                <td>
                    <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="zipValidator" runat="server" ControlToValidate="txtZip" ErrorMessage="*Please enter a zip!!" ForeColor="Red" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Phone:</td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" Width="164px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="phoneValidator" runat="server" ControlToValidate="txtPhone" ErrorMessage="*Enter a proper phone number!!" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*Enter a proper phone number</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="323px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="emailValidator" runat="server" ControlToValidate="txtEmail" EnableTheming="True" ErrorMessage="*Enter an email." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Item:</td>
                <td>
                    <asp:DropDownList ID="ddlItem" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="$10">Basketball</asp:ListItem>
                        <asp:ListItem Value="$8">Soccer Ball</asp:ListItem>
                        <asp:ListItem Value="$1">Golf Ball</asp:ListItem>
                        <asp:ListItem Value="$2">Tennis Ball</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">How many?</td>
                <td>
                    <asp:TextBox ID="txtQuantity" runat="server" Width="108px"></asp:TextBox>
                    <asp:RangeValidator ID="manyRangeValidator" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Out of range!" ForeColor="Red" MaximumValue="10" MinimumValue="1" Type="Integer">Out of range!</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" Width="115px" />
&nbsp;<asp:Button ID="btnClear" runat="server" Text="Clear" Width="115px" CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#CCCCCC" BorderColor="Red" ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:ListBox ID="lstSummary" runat="server" Height="185px" Width="473px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
