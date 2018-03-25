<%@ Page Language="VB" AutoEventWireup="false" CodeFile="feeder_daily2.aspx.vb" Inherits="feeder_daily2" %>


<!DOCTYPE html>
<%@ Register TagPrefix="poy" TagName="header" Src="~/UCghead2.ascx" %>
<%@ Register TagPrefix="poy" TagName="footer" Src="~/UCgfooter.ascx" %>
<%@ Register TagPrefix="poy" TagName="css" Src="~/UCgcss.ascx" %>
<%@ Register TagPrefix="poy" TagName="js" Src="~/UCgjs.ascx" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Scada Graph NE3</title>
    <poy:css ID="UCcss" runat="server" />
    <style type="text/css">
        .auto-style1 {
            width: 1311px;
        }
    </style>
</head>
<body>
    <div class="col-md-12" align="center">
        <h2>Daily Load (5 Graph)
        </h2>
    </div>
    <poy:header ID="UCmenu1" runat="server" />
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-group">
                <div class="row" align="center">
                    <br />
                    <div class="col-md-3">
                        Substation : 
            <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="100px" AutoPostBack="True"
                DataSourceID="SqlDataSource2" DataTextField="subname" DataValueField="subname">
            </asp:DropDownList>

                    </div>
                    <div class="col-md-2">
                        Feeder : 
            <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="100px"
                DataSourceID="SqlDataSource5" DataTextField="feedername" DataValueField="feedername">
            </asp:DropDownList>

                    </div>
                    <%--<div class="col-md-2">
                        Volt Bus :
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="30px" Width="100px"
                            DataSourceID="SqlDataSource4" DataTextField="feedername" DataValueField="feedername">
                        </asp:DropDownList>

                    </div>--%>
                    <div class="col-md-4">
                        <div class="input-group input-large date-picker input-daterange" data-date="10/11/2012" data-date-format="mm/dd/yyyy">
                            <input id="textbox1" name="textbox1" runat="server" type="text" class="form-control" placeholder="จากวันที่" />
                            <span class="input-group-addon">to </span>
                            <input id="textbox2" name="textbox2" runat="server" type="text" class="form-control" placeholder="ถึงวันที่" />
                        </div>
                    </div>

                    <br />
                    <div class="row" align="center">


                        <!-- /input-group -->
                    </div>
                    <div class="col-md-2">

                        <asp:Button ID="Button1" runat="server" Text="ตกลง" Width="96px" Height="35px" />

                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="Button2" runat="server" Text="Grid View" Width="96px" Height="35px" />
                    </div>
                    <div class="col-md-2">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Excel2.jpg" Visible="False" />

                        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>

                        <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>

                    </div>


                </div>
            </div>
            <br/>
            <table align="center">
                <tr>
                    <td class="auto-style1">

                        <asp:Chart ID="Chart11" runat="server" DataSourceID="SqlDataSource3" Width="1250px" Height="500px" Palette="None" PaletteCustomColors="Lime; 0, 0, 192" Visible="False">
                            <Series>


                                <asp:Series ChartType="Spline" Name="Active Power(MW)" LabelFormat="{0:F2}" BorderWidth="2" Legend="Legend1" XValueType="DateTime" ChartArea="ChartArea1" ToolTip="Real Power :#VALX{dd/MM/yyy HH:mm}= #VAL{D} MW" XValueMember="dbtm" YValueMembers="mw">
                                </asp:Series>

                                <asp:Series BorderWidth="2" ChartArea="ChartArea1" ChartType="Spline" LabelFormat="{0:F2}" Legend="Legend1" Name="Reactive Power(MVAR)" XValueType="DateTime" ToolTip="Reactive Power :#VALX{dd/MM/yyy HH:mm}= #VAL{D} MVAR" XValueMember="dbtm" YValueMembers="mvar">
                                </asp:Series>

                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                    <AxisX Title="Date">
                                        <LabelStyle ForeColor="Blue" Format="dd/MM/yyy HH:mm" Interval="Auto" IntervalOffset="Auto" IntervalOffsetType="Auto" IntervalType="Auto" IsStaggered="True" TruncatedLabels="True" />

                                    </AxisX>
                                    <AxisY Title="Power" TextOrientation="Auto">
                                    </AxisY>
                                </asp:ChartArea>
                            </ChartAreas>
                            <Legends>
                                <asp:Legend Name="Legend1">
                                </asp:Legend>
                            </Legends>
                            <Titles>
                                <asp:Title Name="Title1" Text="กราฟแสดง Active Power และ Reactive Power" Font="Angsana New, 16pt">
                                </asp:Title>
                            </Titles>
                        </asp:Chart>

                    </td>


                </tr>
                <tr>
                    <td class="auto-style1">


                        <asp:Chart ID="Chart22" runat="server" DataSourceID="SqlDataSource11" Width="1250px" Height="500px" Palette="None" PaletteCustomColors="Red; Yellow; Blue" Visible="False">
                            <Series>


                                <asp:Series BorderWidth="2" ChartArea="ChartArea1" ChartType="Spline" LabelFormat="{0:F2}" Legend="Legend1" Name="A" XValueType="DateTime" ToolTip="I A :#VALX{dd/MM/yyy HH:mm}= #VAL{D} A" XValueMember="Date1" YValueMembers="Ia">
                                </asp:Series>

                                <asp:Series BorderWidth="2" ChartArea="ChartArea1" ChartType="Spline" LabelFormat="{0:F2}" Legend="Legend1" Name="B" XValueType="DateTime" ToolTip="I A :#VALX{dd/MM/yyy HH:mm}= #VAL{D} A" XValueMember="Date1" YValueMembers="Ib">
                                </asp:Series>

                                <asp:Series BorderWidth="2" ChartArea="ChartArea1" ChartType="Spline" LabelFormat="{0:F2}" Legend="Legend1" Name="C" XValueType="DateTime" ToolTip="I A :#VALX{dd/MM/yyy HH:mm}= #VAL{D} A" XValueMember="Date1" YValueMembers="Ic">
                                </asp:Series>

                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                    <AxisY Title="Current(A)">
                                    </AxisY>
                                    <AxisX Title="Date">
                                        <LabelStyle ForeColor="Blue" Format="dd/MM/yyy HH:mm" Interval="Auto" IntervalOffset="Auto" IntervalOffsetType="Auto" IntervalType="Auto" IsStaggered="True" TruncatedLabels="True" />

                                    </AxisX>
                                </asp:ChartArea>
                            </ChartAreas>
                            <Legends>
                                <asp:Legend Name="Legend1" Title="Current">
                                </asp:Legend>
                            </Legends>
                            <Titles>
                                <asp:Title Name="Title1" Text="กราฟแสดง Current 3 Phase" Font="Microsoft Sans Serif, 16pt">
                                </asp:Title>
                            </Titles>
                        </asp:Chart>


                    </td>

                </tr>
                <tr>
                    <td class="auto-style1">


                        <asp:Chart ID="Chart5" runat="server" DataSourceID="SqlDataSource1" Width="1250px" Height="500px" Palette="None" PaletteCustomColors="128, 255, 255; Fuchsia; 255, 192, 128" Visible="False">
                            <Series>


                                <asp:Series BorderWidth="2" ChartArea="ChartArea1" ChartType="Spline" LabelFormat="{0:F2}" Legend="Legend1" Name="AB" XValueType="DateTime" ToolTip="Vab :#VALX{dd/MM/yyy HH:mm}= #VAL{N2} kV" XValueMember="Date1" YValueMembers="Vab">
                                </asp:Series>

                                <asp:Series BorderWidth="2" ChartArea="ChartArea1" ChartType="Spline" LabelFormat="{0:F2}" Legend="Legend1" Name="BC" XValueType="DateTime" ToolTip="Vbc :#VALX{dd/MM/yyy HH:mm}= #VAL{N2} kV" XValueMember="Date1" YValueMembers="Vbc">
                                </asp:Series>

                                <asp:Series BorderWidth="2" ChartArea="ChartArea1" ChartType="Spline" LabelFormat="{0:F2}" Legend="Legend1" Name="AC" XValueType="DateTime" ToolTip="Vac :#VALX{dd/MM/yyy HH:mm}= #VAL{N2} kV" XValueMember="Date1" YValueMembers="Vac">
                                </asp:Series>

                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                    <AxisX Title="Date">
                                        <LabelStyle ForeColor="Blue" Format="dd/MM/yyy HH:mm" Interval="Auto" IntervalOffset="Auto" IntervalOffsetType="Auto" IntervalType="Auto" IsStaggered="True" TruncatedLabels="True" />

                                    </AxisX>
                                    <AxisY Title="Voltage(A)" TextOrientation="Auto">
                                    </AxisY>
                                </asp:ChartArea>
                            </ChartAreas>
                            <Legends>
                                <asp:Legend Name="Legend1" Title="Current">
                                </asp:Legend>
                            </Legends>
                            <Titles>
                                <asp:Title Name="Title1" Text="กราฟแสดง Voltage 3 Phase" Font="Angsana New, 16pt">
                                </asp:Title>
                            </Titles>
                        </asp:Chart>


                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stagingConnectionString %>" SelectCommand="SELECT Substation, Feeder, Date1, Vab, Vbc, Vac FROM stg.feeder_Volt_c1 WHERE (Substation = @subname) AND (Feeder = @feedername) AND (Date1 &gt; @date1) AND (Date1 &lt; @date2)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="subname" PropertyName="SelectedValue" />
                       
                                <asp:ControlParameter ControlID="Label1" Name="date1" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Label2" Name="date2" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>


                    </td>

                </tr>


                <tr>
                    <td class="auto-style1">


                        <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource11" Width="1250px" Height="500px" Palette="None" PaletteCustomColors="Aqua" Visible="False">
                            <Series>


                                <asp:Series BorderWidth="2" ChartArea="ChartArea1" ChartType="Spline" LabelFormat="{0:F2}" Legend="Legend1" Name="%UN" XValueType="DateTime" ToolTip="UN :#VALX{dd/MM/yyy HH:mm}= #VAL{N2} %" XValueMember="Date1" YValueMembers="UN">
                                </asp:Series>


                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                    <AxisX Title="Date">
                                        <LabelStyle ForeColor="Blue" Format="dd/MM/yyy HH:mm" Interval="Auto" IntervalOffset="Auto" IntervalOffsetType="Auto" IntervalType="Auto" IsStaggered="True" TruncatedLabels="True" />

                                    </AxisX>
                                    <AxisY Title="UN(%)" TextOrientation="Auto">
                                    </AxisY>
                                </asp:ChartArea>
                            </ChartAreas>
                            <Legends>
                                <asp:Legend Name="Legend1" Title="">
                                </asp:Legend>
                            </Legends>
                            <Titles>
                                <asp:Title Name="Title1" Text="กราฟแสดง Current Unbalance( (MAX-MIN)/MAX*100)" Font="Angsana New, 16pt">
                                </asp:Title>
                            </Titles>

                        </asp:Chart>


                    </td>

                </tr>
                <tr>
                    <td class="auto-style1">


                        <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource11" Width="1250px" Height="500px" Palette="None" PaletteCustomColors="Fuchsia" Visible="False">
                            <Series>


                                <asp:Series BorderWidth="2" ChartArea="ChartArea1" ChartType="Spline" LabelFormat="{0:F2}" Legend="Legend1" Name="%PF" XValueType="DateTime" ToolTip="PF : #VALX{dd/MM/yyy HH:mm}= #VAL{N2} %" XValueMember="Date1" YValueMembers="PF">
                                </asp:Series>


                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                    <AxisY Title="PF(%)">
                                    </AxisY>
                                    <AxisX Title="Date">
                                        <LabelStyle ForeColor="Blue" Format="dd/MM/yyy HH:mm" Interval="Auto" IntervalOffset="Auto" IntervalOffsetType="Auto" IntervalType="Auto" IsStaggered="True" TruncatedLabels="True" />

                                    </AxisX>
                                </asp:ChartArea>
                            </ChartAreas>
                            <Legends>
                                <asp:Legend Name="Legend1">
                                </asp:Legend>
                            </Legends>

                            <Titles>
                                <asp:Title Name="Title1" Text="กราฟแสดง Power Factor" Font="Microsoft Sans Serif, 16pt">
                                </asp:Title>
                            </Titles>


                        </asp:Chart>


                    </td>

                </tr>
            </table>












            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dw_scada_c1ConnectionString %>" SelectCommand="SELECT DISTINCT subname FROM ne3.sub_name"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:stagingConnectionString %>" SelectCommand="SELECT Area, Substation, Type, Feeder, Date1, Ia, Iaq, Ib, Ibq, Ic, Icq, MW, MWq, MVAR, MVARq, PF, PFq, UN, UNq FROM stg.feeder_daily_c1 WHERE (Substation = @subname) AND (Feeder = @feeder) AND (Date1 &gt; CONVERT (DATETIME, @date1, 102)) AND (Date1 &lt; CONVERT (DATETIME, @date2, 102))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="BSH" Name="subname" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="feeder" PropertyName="SelectedValue" DefaultValue="" />
                    <asp:ControlParameter ControlID="Label1" DefaultValue="" Name="date1" PropertyName="Text" />
                    <asp:ControlParameter ControlID="Label2" Name="date2" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dw_scada_c1ConnectionString %>" SelectCommand="SELECT feedername, sub_name FROM scada_c1.sub_name_voltage WHERE (sub_name = @subname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="subname" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:stagingConnectionString %>" SelectCommand="SELECT Area, Substation, Type, Feeder, Date1, Vab, Vbc, Vac, Vabq FROM stg.feeder_Volt_c1 WHERE (Substation = @subname) AND (Feeder = @feeder) AND (Date1 &gt; CONVERT (DATETIME, @date1, 102)) AND (Date1 &lt; CONVERT (DATETIME, @date2, 102))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="BSH" Name="subname" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="feeder" PropertyName="SelectedValue" DefaultValue="" />
                    <asp:ControlParameter ControlID="Label1" DefaultValue="" Name="date1" PropertyName="Text" />
                    <asp:ControlParameter ControlID="Label2" Name="date2" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:dw_scada_c1ConnectionString %>" SelectCommand="SELECT DISTINCT feedername FROM ne3.sub_name WHERE (subname = @subname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="subname" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Panel ID="Panel1" runat="server" Visible="False">

                <table align="center">
                    <tr>
                        <td class="auto-style1">Substation&nbsp; :
                 <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp; Feeder :
                 <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource3" GridLines="Horizontal" Width="1008px" Visible="False" EmptyDataText="Not Found Data">
                                <AlternatingRowStyle BackColor="#F7F7F7" />
                                <Columns>
                                    <asp:BoundField DataField="dbtm" HeaderText="dbtm" SortExpression="dbtm">
                                    </asp:BoundField>
                                    <asp:BoundField DataField="feedername" HeaderText="feedername" SortExpression="feedername">
                                    </asp:BoundField>
                                    <asp:BoundField DataField="mw" HeaderText="mw" SortExpression="mw">
                                    </asp:BoundField>
                                    <asp:BoundField DataField="mvar" HeaderText="mvar" SortExpression="mvar">
                                    </asp:BoundField>
                                </Columns>
                                <EmptyDataRowStyle ForeColor="#0066FF" HorizontalAlign="Center" />
                                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                <SortedDescendingHeaderStyle BackColor="#3E3277" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:stagingConnectionString %>" SelectCommand="SELECT dbtm, feedername, mw, mvar FROM stg_ne3.View_load_mw_mvar GROUP BY dbtm, feedername, mw, mvar HAVING (feedername = @feeder) AND (dbtm &lt; @date2) AND (dbtm &gt; @date1)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList2" Name="feeder" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="Label2" Name="date2" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="Label1" Name="date1" PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>

                </table>
            </asp:Panel>
    </form>



    </div>
    <poy:footer ID="UCfooter" runat="server" />
    <poy:js ID="UCjs" runat="server" />
</body>
</html>
