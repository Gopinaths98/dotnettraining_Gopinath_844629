<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="asp_exercise.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Firstname"></asp:Label>
            <asp:TextBox ID="fnt" runat="server" OnTextChanged="fnt_TextChanged" style="width: 128px; height: 22px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fnt" ErrorMessage="Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
            <asp:TextBox ID="agetb" runat="server" OnTextChanged="TextBox2_TextChanged" style="height: 22px; width: 128px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="agetb" ErrorMessage="Age Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="agetb" ErrorMessage="Age must be greater than 15" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="15"></asp:CompareValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="LoginName"></asp:Label>
            <asp:TextBox ID="lntb" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lntb" ErrorMessage="Login Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="passtb" runat="server" OnTextChanged="passtb_TextChanged" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="passtb" ErrorMessage="Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="cpasstb" runat="server" OnTextChanged="TextBox5_TextChanged" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cpasstb" ErrorMessage="Confirm Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="passtb" ControlToValidate="cpasstb" ErrorMessage="*"></asp:CompareValidator>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Experience"></asp:Label>
            <asp:TextBox ID="exptb" runat="server" OnTextChanged="exptb_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="exptb" ErrorMessage="Experience Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="exptb" ErrorMessage="Experience should be between 5 and 10" MaximumValue="10" MinimumValue="5" Type="Integer"></asp:RangeValidator>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Salary Expected"></asp:Label>
            <asp:TextBox ID="saltb" runat="server" OnTextChanged="saltb_TextChanged" style="height: 22px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="saltb" ErrorMessage="Salary Expected Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="saltb" ErrorMessage="*" Operator="LessThanEqual" Type="Integer" ValueToCompare="400000"></asp:CompareValidator>
            <br />
            <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add New User" />
            <asp:Button ID="cancel" runat="server" Text="Cancel" />
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
