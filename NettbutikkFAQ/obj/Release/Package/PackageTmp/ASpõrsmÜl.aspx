<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ASpørsmål.aspx.cs" Inherits="NettbutikkFAQ.ASpørsmål" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Frakt</h3>
    <asp:Panel ID="Panel1" runat="server">
        <a class="question">
            <asp:Label ID="Sp1" runat="server"></asp:Label></a>
        <div class="answer">
            <asp:Label ID="Sv1" runat="server"></asp:Label>
        </div>
    </asp:Panel>

    <h3>Levering</h3>
    <asp:Panel ID="Panel2" runat="server">
        <a class="question">
            <asp:Label ID="Sp2" runat="server"></asp:Label></a>
        <div class="answer">
            <asp:Label ID="Sv2" runat="server"></asp:Label>
        </div>
    </asp:Panel>

    <h3>Betaling</h3>
    <asp:Panel ID="Panel3" runat="server">
        <a class="question">
            <asp:Label ID="Sp3" runat="server"></asp:Label></a>
        <div class="answer">
            <asp:Label ID="Sv3" runat="server"></asp:Label>
        </div>
    </asp:Panel>

    <h3>Retur</h3>
    <asp:Panel ID="Panel4" runat="server">
        <a class="question">
            <asp:Label ID="Sp4" runat="server"></asp:Label></a>
        <div class="answer">
            <asp:Label ID="Sv4" runat="server"></asp:Label>
        </div>
    </asp:Panel>

    <h3>Support</h3>
    <asp:Panel ID="Panel5" runat="server">
        <a class="question">
            <asp:Label ID="Sp5" runat="server"></asp:Label></a>
        <div class="answer">
            <asp:Label ID="Sv5" runat="server"></asp:Label>
        </div>
    </asp:Panel>

    <h3>Informasjon</h3>
    <asp:Panel ID="Panel6" runat="server">
        <a class="question">
            <asp:Label ID="Sp6" runat="server"></asp:Label></a>
        <div class="answer">
            <asp:Label ID="Sv6" runat="server"></asp:Label>
        </div>
    </asp:Panel>

    <h3>Generelt</h3>
    <asp:Panel ID="Panel7" runat="server">
        <a class="question">
            <asp:Label ID="Sp7" runat="server"></asp:Label></a>
        <div class="answer">
            <asp:Label ID="Sv7" runat="server"></asp:Label>
        </div>
    </asp:Panel>
    <script>
        $(".answer").hide();
        $("a.question").click(function () {
            $(this).next(".answer").toggle();
        });
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <h2>Alle spørsmål</h2>
</asp:Content>
