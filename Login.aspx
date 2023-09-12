<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>MSU</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <div class="bg"></div>
    <div class="sign-up-form">
      <div class="round"><img class="logo" /></div>
      <h2 class="heading">MS UNIVERSITY</h2>
          <div>
          <form id="form1" runat="server">
          <div>
              <asp:DropDownList ID="drpusertype" runat="server" style="text-align: center" 
                  BackColor="#FF9900" Height="30px" Width="100px">
                  <asp:ListItem>Admin</asp:ListItem>
                  <asp:ListItem>Clerk</asp:ListItem>
                  <asp:ListItem>Teacher</asp:ListItem>
              </asp:DropDownList>
         </div>
          <div class="input">
           <label class="lbl" id="UserName"> User Name </label>
              <asp:TextBox ID="txtusername" runat="server" Height="25px" Width="290px"></asp:TextBox>
          </div>         
            <div class="input" ><label class="lbl" id="User Password">User Password</label>
                <asp:TextBox ID="txtpassword" runat="server" Height="25px" Width="290px"></asp:TextBox>
          </div>
        <div class="signup-btns-group">                   
            <asp:Button ID="btnSubmit" runat="server" BackColor="#FF9900" Height="32px" 
                style="font-weight: 700" Text="Submit" Width="141px" 
                onclick="Submit_Click" />
          </div>
          </form>
    </div>
</body>
</html>
