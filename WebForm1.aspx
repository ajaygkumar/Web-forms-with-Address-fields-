<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Web_Forms_Example.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            width: 348px;
            height: 29px;
            text-align: left;
        }
        .auto-style5 {
            height: 56px;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style9 {
            height: 29px;
            text-align: left;
            width: 166px;
        }
        .auto-style10 {
            width: 348px;
            text-align: left;
        }
        .auto-style11 {
            width: 348px;
            height: 56px;
            text-align: left;
        }
        .auto-style12 {
            text-align: justify;
            width: 166px;
        }
        .auto-style13 {
            height: 56px;
            text-align: left;
        }
        .auto-style14 {
            text-align: left;
            width: 166px;
        }
        .auto-style15 {
            height: 56px;
            text-align: left;
            width: 166px;
        }
        .auto-style16 {
            text-align: left;
            width: 166px;
            height: 51px;
        }
        .auto-style17 {
            width: 348px;
            text-align: left;
            height: 51px;
        }
        .auto-style18 {
            text-align: left;
            height: 51px;
        }
        .auto-style19 {
            text-align: left;
            width: 166px;
            height: 34px;
        }
        .auto-style20 {
            width: 348px;
            text-align: left;
            height: 34px;
        }
        .auto-style21 {
            text-align: left;
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style8">
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style10">Student Details</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">First Name</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter full Name">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">Last Name</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Last Name">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">Select Gender</td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="164px">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" InitialValue="Select Gender" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Choose Gender">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">E-Mail ID</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Valid E-Mail ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style19">Password</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Password has to be 8-12 letters with one special character and one Upper case" ValidationExpression="([a-zA-Z0-9@#$%^&+=*]{8,12})"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style16">Confirm Password</td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Password not matched" TextMode="Password">*</asp:CompareValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Password not matched" ControlToValidate="TextBox5" ValidationExpression="([a-zA-Z0-9@#$%^&+=*]{8,12})"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style15">Date of Birth</td>
                <td class="auto-style11">
                    &nbsp;<asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>

<asp:RangeValidator ID="valrDate" runat="server" ControlToValidate="TextBox6" MinimumValue="12/31/1950" MaximumValue="1/1/2100" Type="Date" text="*" Display="Dynamic"/>


                    <asp:CompareValidator ErrorMessage="(mm/dd/yyyy)" Display="Dynamic" ID="valcDate" ControlToValidate="TextBox6" Operator="DataTypeCheck" Type="Date" runat="server"></asp:CompareValidator>           


                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style15">Phone Number</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox12" ErrorMessage="Enter valid Phone Number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator>


                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Address1</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter Address">*</asp:RequiredFieldValidator>


                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Address2</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter Address">*</asp:RequiredFieldValidator>


                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">CIty</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9" ErrorMessage="Enter City">*</asp:RequiredFieldValidator>


                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">State</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox10" ErrorMessage="Enter State">*</asp:RequiredFieldValidator>


                </td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style15">Zip Code </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox11" ErrorMessage="Enter Zip">*</asp:RequiredFieldValidator>


                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox11" ErrorMessage="Enter valid Zip Code" ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$"></asp:RegularExpressionValidator>


                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
                <td class="auto-style10">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
