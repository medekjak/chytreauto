<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BootstrapAspNetApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
    <script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ol3/3.7.0/ol.css" type="text/css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ol3/3.7.0/ol.js"></script>
<body>

   
    <div class="container">
	<div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Přihlašte se</h3>
                </div>
                <div class="panel-body">
                    <form id="form2" class="form-signin" runat="server">

                            <div class="form-group">
                            <asp:Login ID="Login2" runat="server" TextBoxStyle-CssClass="form-control" CheckBoxStyle-CssClass="checkbox" LoginButtonStyle-CssClass="btn btn-success btn-block" CssClass="form-group" LoginButtonText="Přilásit" PasswordLabelText="Heslo:  " RememberMeText="Pamatuj mě" PasswordRequiredErrorMessage="Heslo musí být vyplněno." UserNameRequiredErrorMessage="Uživatel musí být vyplněn." FailureText="Přihlášení nebylo úspěšné" UserNameLabelText="Uživatel: " TitleText=" ">
                            </asp:Login>
                            </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%--    <div class="wrapper">
    <form id="form1" class="form-signin" runat="server">
    <div>
    
        <h2 class="form-signin-heading">Please login</h2>
    
    </div>
        <asp:Login ID="Login1" runat="server" TextBoxStyle-CssClass="form-control" CheckBoxStyle-CssClass="checkbox" LoginButtonStyle-CssClass="btn btn-success btn-block" CssClass="form-group">
        </asp:Login>
    </form>
        </div>--%>
</body>
</html>
