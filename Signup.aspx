<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up Now</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <form id="form1" runat="server">
    <div class="bg"></div>
	<div class="sign-up-form3">
		<div class="round"></div>
		<h2 class="heading">Sign Up Now</h2>
		<div class="input">	<label class="lbl">Student Name</label><br>
		<input type="text" class="input-box" placeholder="Student Name"><label class="lbl" ><br />
            Address</label><br>
            <asp:TextBox ID="TextAddress" runat="server" Height="100px" Width="290px"></asp:TextBox>
        </div>
		<div class="input"><label class="lbl">Age</label><br>
		    <asp:TextBox ID="TextAge" runat="server" Height="25px" Width="290px"></asp:TextBox>
        </div>
		
		<div class="input3g"><label class="lbl">Gender</label><span class="gender3"><input type="radio" name="gender" value="gender">Male
		<input  type="radio" name="gender" value="gender">Female<br></span></div>
		
		<div class="input">	<label class="lbl">Acadamic Details</label><br>
		    <asp:TextBox ID="TextAcadamicDetails" runat="server" Height="25px" 
                Width="290px"></asp:TextBox>
            <label class="lbl">
            <br />
            Cast</label><br>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="225px">
            </asp:DropDownList>
        </div>
		<div class="input">	<label class="lbl">Faculty Name</label><br>
		    <asp:TextBox ID="TextFacultyName" runat="server" Height="25px" Width="290px"></asp:TextBox>
        </div>

		<div class="input">	<label class="lbl">Program Name</label><br>
			<asp:DropDownList ID="txtSelectProgram" runat="server" Height="25px" 
                Width="295px" placeholder="Program Name">
                <asp:ListItem>Select Program</asp:ListItem>
                <asp:ListItem>PGDCA</asp:ListItem>
                <asp:ListItem>MSC</asp:ListItem>
            </asp:DropDownList>
        </div>

		<div class="input">	<label class="lbl">Admission Date</label><br>
		<input type="date" class="input-box" placeholder=""></div>

		<div class="input">	<label class="lbl">End Date</label><br>
		<input type="date" class="input-box" placeholder=""></div>

		<div class="signup-btns-group">                   			
			<asp:Button ID="textsubmit" runat="server" BackColor="#FF9900" Height="34px" 
                style="font-weight: 700" Text="Submit" Width="122px" 
                onclick="textsubmit_Click" />
        </div>
			
		</div>
    </form>
</body>
</html>
