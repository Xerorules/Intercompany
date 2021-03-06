﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PLANTILLAS/MENU_SUPERIOR.Master" AutoEventWireup="true" CodeBehind="FRM_MANTENIMIENTO_CLIENTE.aspx.cs" Inherits="DIONYS_ERP.FRM_MANTENIMIENTO_CLIENTE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 27px;
        }
        .auto-style3 {
            height: 28px;
        }
    </style>
    <link href="ESTILOS/ESTILOS_FRM_PRINCIPAL.css" rel="stylesheet" />

    <!-- ================================================= -->
    <!-- SCRIPT PARA BLOQUEAR LAS FLECHAS DE NAVEGACION -->
    <script type="text/javascript">
        {
            if (history.forward(1))
                location.replace(history.forward(1))
        }
        </script>
    
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="Pragma" content="no-cache" />
    <!-- ================================================= -->


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        
        <table class="auto-style1">
            <tr>
                <td style="text-align:left" class="auto-style3">
                <asp:Label ID="Label15" runat="server" Text=".:. MANTENIMIENTO CLIENTES" Font-Bold="True" Font-Names="Tahoma" Font-Size="20px" ForeColor="White" ></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
        
    </div>
    <div>
        <fieldset>
            <legend style="color:#CC9900;font-weight:bold;font-family:Tahoma;font-size:14px">DATOS CLIENTE</legend>
            <table class="auto-style1">
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White">TIPO CLIENTE</asp:Label>
            </td>
            <td class="auto-style27">
                <asp:RadioButtonList ID="rdbMC_TIPOCLIENTE" runat="server" RepeatDirection="Horizontal" Width="253px" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White" CellPadding="1" CellSpacing="1">
                    <asp:ListItem Value="PN">P. NATURAL</asp:ListItem>
                    <asp:ListItem Value="PJ">P. JURIDICA</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style38">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style20">
                <asp:Button ID="btnMC_NUEVO" runat="server" Height="30px" Text="NUEVO" Width="140px" Font-Bold="True" Font-Names="Tahoma" OnClick="btnV_NUEVO_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label16" runat="server" Text="DESCRIPCION     " Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style28">
                <asp:TextBox ID="txtMC_DESCRIPCION" runat="server" Width="400px" Font-Names="Tahoma" Font-Size="14px" Font-Bold="True" ForeColor="#666666" Font-Italic="False"></asp:TextBox>
            </td>
            <td class="auto-style40">
                <asp:Label ID="Label28" runat="server" Text="RUC/DNI     " Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="auto-style41">
                <asp:TextBox ID="txtMC_RUCDNI" runat="server" Width="200px" Font-Names="Tahoma" Font-Size="14px" Font-Bold="True" ForeColor="#666666" Font-Italic="False"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:Button ID="btnMC_GRABAR" runat="server" Height="30px" Text="GRABAR" Width="140px" Font-Bold="True" Font-Names="Tahoma" OnClick="btnV_GRABAR_Click" OnClientClick="return confirm(&quot;¿DESEA REGISTRAR A ESTE CLIENTE?&quot;);" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="DIRECCIÓN  " Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                </td>
            <td class="auto-style28">
                <asp:TextBox ID="txtMC_DIRECCION" runat="server" Width="401px" Font-Names="Tahoma" Font-Size="14px" Font-Bold="True" ForeColor="#666666"></asp:TextBox>
            </td>
            <td class="auto-style40">
                <asp:Label ID="Label18" runat="server" Text="EMAIL / CORREO " Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style41">
                <asp:TextBox ID="txtMC_EMAIL" runat="server" Width="316px" Font-Names="Tahoma" Font-Size="14px" Font-Bold="True" ForeColor="#666666"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:Button ID="btnMC_CANCELAR" runat="server" Height="30px" Text="CANCELAR" Width="140px" Font-Bold="True" Font-Names="Tahoma" OnClick="btnV_CANCELAR_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label25" runat="server" Text="TELEFONO 1" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                </td>
            <td class="auto-style18">
                <asp:TextBox ID="txtMC_TELEFONO1" runat="server" Width="150px" Font-Names="Tahoma" Font-Size="14px" Font-Bold="True" ForeColor="#666666" ReadOnly="True" TextMode="Phone"></asp:TextBox>
            </td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style20">
                <asp:Button ID="btnMC_ANULAR" runat="server" Height="30px" Text="ANULAR" Width="140px" Font-Bold="True" Font-Names="Tahoma" OnClientClick="return confirm(&quot;¿DESEA ANULAR LA VENTA?&quot;);" OnClick="btnMC_ANULAR_Click" />
            </td>
        </tr>

        <tr>
            <td class="auto-style17">
                &nbsp;<asp:Label ID="Label24" runat="server" Text="CAMPOS OPCIONALES  :" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="#CC9900"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:TextBox ID="txtID_CLIENTE" runat="server" Height="16px" Visible="False" Width="26px"></asp:TextBox>
                </td>
            <td class="auto-style38">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style39">
                </td>
            <td class="auto-style20">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label20" runat="server" Text="TELEFONO 2   :" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                   </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtMC_TELEFONO2" runat="server" Width="150px" Font-Names="Tahoma" Font-Size="14px" Font-Bold="True" ForeColor="#666666" TextMode="Phone"></asp:TextBox>
                   </td>
            <td class="auto-style2">
                <asp:Label ID="Label17" runat="server" Text="F.  NACIMIENTO" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                   </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtMC_FNACIMIENTO" runat="server" Width="161px" Font-Names="Tahoma" Font-Size="14px" TextMode="Date" Font-Bold="True" ForeColor="#666666"></asp:TextBox>
                   </td>
            <td class="auto-style2">
                </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label29" runat="server" Text="MOVIL  :" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                   </td>
            <td class="auto-style18">
                <asp:TextBox ID="txtMC_MOVIL" runat="server" Width="200px" Font-Names="Tahoma" Font-Size="14px" Font-Bold="True" ForeColor="#666666"></asp:TextBox>
                   </td>
            <td class="auto-style38">
                <asp:Label ID="Label30" runat="server" Text="DEPARTAMENTO" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                   </td>
            <td class="auto-style39">
                <asp:DropDownList ID="cboMC_DEPARTAMENTO" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" Width="318px" ForeColor="#666666" AutoPostBack="True" Font-Italic="False" OnSelectedIndexChanged="cboMC_DEPARTAMENTO_SelectedIndexChanged" Height="23px">
                </asp:DropDownList>
                   </td>
            <td class="auto-style20">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label19" runat="server" Text="WEB SITE" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                   </td>
            <td class="auto-style18">
                <asp:TextBox ID="txtMC_WEBSITE" runat="server" Width="401px" Font-Names="Tahoma" Font-Size="14px"></asp:TextBox>
                   </td>
            <td class="auto-style38">
                <asp:Label ID="Label31" runat="server" Text="PROVINCIA" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                   </td>
            <td class="auto-style39">
                <asp:DropDownList ID="cboMC_PROVINCIA" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" Width="318px" ForeColor="#666666" AutoPostBack="True" Font-Italic="False" OnSelectedIndexChanged="cboMC_PROVINCIA_SelectedIndexChanged" Height="23px">
                </asp:DropDownList>
                   </td>
            <td class="auto-style20">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label26" runat="server" Text="FECHA ULTVENTA" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                   </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtMC_FULTIMAVENTA" runat="server" Width="200px" Font-Names="Tahoma" Font-Size="14px" Font-Bold="True" ForeColor="#666666" ReadOnly="True"></asp:TextBox>
                   </td>
            <td class="auto-style2">
                <asp:Label ID="Label32" runat="server" Text="DISTRITO" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style2">
                <asp:DropDownList ID="cboMC_DISTRITO" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" Width="320px" ForeColor="#666666" AutoPostBack="True" Font-Italic="False" Height="23px">
                </asp:DropDownList>
                </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>

        </table>
        </fieldset>
    </div>

    <div>
        <fieldset>
            <legend style="color:#CC9900;font-weight:bold;font-family:Tahoma;font-size:14px">LISTADO DE CLIENTES</legend>
            <table class="auto-style1">
                        <tr>
                            <td class="auto-style23">
                <asp:Label ID="Label34" runat="server" Text="DESCRIPCION" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                            </td>
                            <td class="auto-style23">
                <asp:Label ID="Label38" runat="server" Text="RUC / DNI" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                            </td>
                            <td class="auto-style23">
                <asp:Label ID="Label33" runat="server" Text="TIPO CLIENTE" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                            </td>
                            <td class="auto-style15">
                <asp:Label ID="Label35" runat="server" Text="DEPARTAMENTO" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                            </td>
                            <td class="auto-style15">
                <asp:Label ID="Label36" runat="server" Text="PROVINCIA" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                            </td>
                            <td class="auto-style15">
                <asp:Label ID="Label37" runat="server" Text="DISTRITO" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" ForeColor="White"></asp:Label>
                            </td>
                            <td class="auto-style15">
                                &nbsp;</td>
                        </tr>
                 
                        <tr>
                            <td class="auto-style24">
                                <asp:TextBox ID="txtFILTRO_DESCRIPCION" runat="server" Font-Names="Tahoma" Font-Size="14px" Width="239px"></asp:TextBox>
                            </td>
                            <td class="auto-style24">
                                <asp:TextBox ID="txtFILTRO_RUCDNI" runat="server" Font-Names="Tahoma" Font-Size="14px" Width="150px"></asp:TextBox>
                            </td>
                            <td class="auto-style24">
                                <asp:DropDownList ID="cboFILTRO_TIPOCLIENTE" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" style="margin-top: 0px" Width="150px">
                                    <asp:ListItem>TODOS</asp:ListItem>
                                    <asp:ListItem Value="PN">P. NATURAL</asp:ListItem>
                                    <asp:ListItem Value="PJ">P. JURIDICA</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style25">
                                <asp:DropDownList ID="cboFILTRO_DEPARTAMENTO" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" style="margin-top: 0px" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="cboFILTRO_DEPARTAMENTO_SelectedIndexChanged">
                                    <asp:ListItem>TODOS</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style25">
                                <asp:DropDownList ID="cboFILTRO_PROVINCIA" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" style="margin-top: 0px" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="cboFILTRO_PROVINCIA_SelectedIndexChanged">
                                    <asp:ListItem>TODOS</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style25">
                                <asp:DropDownList ID="cboFILTRO_DISTRITO" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="14px" style="margin-top: 0px" Width="150px">
                                    <asp:ListItem>TODOS</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style25">
                <asp:Button ID="btnFILTRO_BUSCAR" runat="server" Height="30px" Text="BUSCAR" Width="130px" Font-Bold="True" Font-Names="Tahoma" style="text-align: center; margin-left: 0px" OnClick="btnBUSCAR_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style22" colspan="3">&nbsp;</td>
                            <td colspan="4">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style14" colspan="7">
                                <asp:GridView ID="dgvLISTADO_CLIENTE" runat="server" Font-Names="Tahoma" Font-Size="10px" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" AutoGenerateSelectButton="True" PageSize="5" SelectedIndex="0" DataKeyNames="ID_CLIENTE" OnSelectedIndexChanged="dgvLISTADO_CLIENTE_SelectedIndexChanged">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:BoundField DataField="ID_CLIENTE" HeaderText="ID_CLIENTE">
                                        <ItemStyle Width="70px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="TIPO_CLIENTE" HeaderText="TIPO CLI">
                                        <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION">
                                        <ItemStyle Width="170px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="RUC_DNI" HeaderText="RUC/DNI" />
                                        <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" />
                                        <asp:BoundField DataField="TELEFONO_1" HeaderText="TELEF_1" />
                                        <asp:BoundField DataField="TELEFONO_2" HeaderText="TELEF_2">
                                        <ItemStyle HorizontalAlign="Right" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="MOVIL" HeaderText="MOVIL">
                                        </asp:BoundField>
                                        <asp:BoundField DataField="FECHA_NAC" HeaderText="F. NAC">
                                        </asp:BoundField>
                                        <asp:BoundField DataField="FECHA_ULTVENTA" HeaderText="F. ULTVENTA">
                                        </asp:BoundField>
                                        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" />
                                        <asp:BoundField DataField="WEB_SITE" HeaderText="WWW" />
                                        <asp:BoundField DataField="ESTADO" HeaderText="EST" />
                                        <asp:BoundField DataField="UBIDSN" HeaderText="DIST" />
                                        <asp:BoundField DataField="UBIPRN" HeaderText="PROV" />
                                        <asp:BoundField DataField="UBIDEN" HeaderText="DEPART" />
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                        </tr>
            </table>
        </fieldset>
    </div>
</asp:Content>
