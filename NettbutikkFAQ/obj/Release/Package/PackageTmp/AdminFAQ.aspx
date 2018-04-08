<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminFAQ.aspx.cs" Inherits="NettbutikkFAQ.spørsmål" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>click demo</title>
  <style>
  p {
    color: red;
    margin: 5px;
    cursor: pointer;
  }
  p:hover {
    background: yellow;
  }
  </style>
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    
</head>
<body>
    <form id="form1" runat="server">
    <table style="height: 181px; width: 678px; margin-bottom: 18px;">
              <tr>
                  <td class="auto-style2">ID: </td>
                <td ><asp:TextBox ID="txtID" runat="server"></asp:TextBox></td>
               <!-- <td ><asp:RegularExpressionValidator ID="testnavn" runat="server" ErrorMessage="Må være tall"  ControlToValidate="txtID"></asp:RegularExpressionValidator></td>-->    
                </tr>

                <tr>
                <td class="auto-style2">Henvendelse: </td>
                <td class="auto-style1" ><asp:DropDownList ID="DDlhenv" runat="server" onselectedindexchanged="Henvendelselist1" AutoPostBack="true" Height="16px" >
                <asp:ListItem>Frakt</asp:ListItem>
                <asp:ListItem>Levering</asp:ListItem>
                <asp:ListItem>Betaling</asp:ListItem>
                <asp:ListItem>Retur</asp:ListItem>
                <asp:ListItem>Support</asp:ListItem>
                <asp:ListItem>Informasjon</asp:ListItem>
                <asp:ListItem>Generelt</asp:ListItem>
                </asp:DropDownList></td>
                
                </tr>

        <tr>
            <td class="auto-style2">Spørsmål: </td>
                <td ><asp:TextBox ID="txtSpørsmål" runat="server"></asp:TextBox></td>
               <!-- <td ><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Må være mer enn 2 tegn"  ControlToValidate="txtSpørsmål"></asp:RegularExpressionValidator></td>    -->
                </tr>
        <tr>
            <td class="auto-style2">Svar: </td>
                <td ><asp:TextBox ID="txtSvar" runat="server"></asp:TextBox></td>
          <!--      <td ><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Må være mer enn 2 tegn"  ControlToValidate="txtSvar"></asp:RegularExpressionValidator></td>    -->
                </tr>

          
         
                </table>
        <asp:button ID="Reg" runat="server" text="Registrer" OnClick="Registrer" />
       <asp:button ID="Visl" runat="server" text="Vis alle" OnClick="Vis" />
        
    <asp:Label ID="Utdata" runat="server" ></asp:Label>
    </form>
</body>
</html>

