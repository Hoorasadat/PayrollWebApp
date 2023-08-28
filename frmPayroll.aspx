<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPayroll.aspx.cs" Inherits="PayrollWebApp.frmPayroll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style/site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Payroll Calculation</h1>
            <img alt="" src="Assets/Payroll.jpg" />
            <table>
                <tr>
                    <td>Hours Worked</td>
                    <td>
                        <asp:TextBox ID="txtHours" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Hours worked is required!" Display="Dynamic" ControlToValidate="txtHours" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Hours between 0 and 100" Display="Dynamic" ControlToValidate="txtHours" ForeColor="Red" Type="Double" MaximumValue="100"></asp:RangeValidator>
                    </td>
                </tr>

                 <tr>
                     <td>Hourly Rate:</td>
                     <td>
                         <asp:TextBox ID="txtRates" runat="server"></asp:TextBox>
                     </td>
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Hourly rate is required!" Display="Dynamic" ControlToValidate="txtRates" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Rate should be between 0 and 1000" Display="Dynamic" ControlToValidate="txtRates" ForeColor="Red" Type="Double" MaximumValue="1000" MinimumValue="0"></asp:RangeValidator>
                     </td>
                 </tr>

                <tr>
                    <td>
                        <asp:Button ID="calcBtn" runat="server" Text="Calculate" OnClick="calcBtn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="clrBtn" runat="server" Text="Clear" OnClick="clrBtn_Click" CausesValidation="False" />
                    </td>
                </tr>

                <tr>
                    <td>
                        Pay amount:
                    </td>
                    <td>
                        <asp:Label ID="rsltLbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
