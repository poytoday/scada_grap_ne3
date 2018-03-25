<%@ Control Language="VB" AutoEventWireup="false" CodeFile="UCghead.ascx.vb" Inherits="UCghead" %>
<!-- BEGIN HEADER -->
<div class="page-header">
    <!-- BEGIN HEADER TOP -->
    <div class="page-header-top">
        <div class="container">
            <!-- BEGIN LOGO -->
         
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="menu-toggler"></a>
            <!-- END RESPONSIVE MENU TOGGLER -->

        </div>
    </div>
    <!-- END HEADER TOP -->
    <!-- BEGIN HEADER MENU -->
       <div class="page-header-menu">
        <div class="container">

            <!-- BEGIN MEGA MENU -->
            <!-- DOC: Apply "hor-menu-light" class after the "hor-menu" class below to have a horizontal menu with white background -->
            <!-- DOC: Remove data-hover="dropdown" and data-close-others="true" attributes below to disable the dropdown opening on mouse hover -->
            <div class="hor-menu ">
                <ul class="nav navbar-nav">
                    <li class="active">
                         <a href="http://smartdata.pea.co.th">
                                    
                                    Main menu  </a>
                    </li>


                    <%--<li class="menu-dropdown classic-menu-dropdown ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown" href="javascript:;">Load Realtime <i class="fa fa-angle-down"></i>
                        </a>
                        <%--<ul class="dropdown-menu pull-left">
                            <li class=" dropdown-submenu">
                                <a href="Realtime_inform_cal.aspx">
                                     <i class="icon-bar-chart"></i>
                                    1.OPS Load real time  </a>
                            </li>
                            <li class=" dropdown-submenu">
                                <a href="Realtime_inform.aspx">
                                    <i class="icon-bar-chart"></i>
                                    2.Load real time  </a>
                            </li>
                            <li class=" dropdown-submenu">
                                <a href="grap_mw_mvar.aspx">
                                    <i class="icon-bar-chart"></i>
                                    3.All Load  by Substation</a>
                            </li>
                            <li class=" dropdown-submenu">
                                <a href="all_load_provindcial.aspx">
                                    <i class="icon-bar-chart"></i>
                                   4. All Load Provindcial</a>
                            </li>
                            <li class=" dropdown-submenu">
                                <a href="grap_realtime.aspx">
                                    <i class="icon-bar-chart"></i>
                                    5.All Load Area N3 </a>
                            </li>
                            <li class=" dropdown-submenu">
                                <a href="top20_peak_load.aspx">
                                    <i class="icon-bar-chart"></i>
                                    6.TOP20 Peak Load </a>
                            </li>
                             <li class=" dropdown-submenu">
                                <a href="amr_list.aspx">
                                    <i class="icon-bar-chart"></i>
                                    7.VSPP(AMR) </a>
                            </li>
                        </ul>--%>
                    </li>


                    <li class="menu-dropdown classic-menu-dropdown ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown" href="javascript:;">Load Historical <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-left">
                            <%--<li class=" dropdown-submenu">
                                <a href="feeder_daily.aspx">
                                    <i class="icon-bar-chart"></i>
                                    1.Daily Load </a>
                            </li>--%>
                            <li class=" dropdown-submenu">
                                <a href="feeder_daily2.aspx">
                                    <i class="icon-bar-chart"></i>
                                    2.Daily Load(5 Grap) </a>
                            </li>
                          <%--  <li class=" dropdown-submenu">
                                <a href="daily_date.aspx">
                                    <i class="icon-bar-chart"></i>
                                    3.Daily Load Compair </a>
                            </li>
                             <li class=" dropdown-submenu">
                                <a href="ops_load_by_date.aspx">
                                    <i class="icon-bar-chart"></i>
                                    4.OPS Load </a>
                            </li>
                            <li class=" dropdown-submenu">
                                <a href="ops_load_compair.aspx">
                                    <i class="icon-bar-chart"></i>
                                    5.OPS Load Compair </a>
                            </li>
                             <li class=" dropdown-submenu">
                                <a href="trf_115.aspx">
                                    <i class="icon-bar-chart"></i>
                                    6.Tranformer Load </a>
                            </li>
--%>


                            



                        </ul>
                    </li>
                       <%--<li class="menu-dropdown classic-menu-dropdown ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown" href="javascript:;">Communication <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-left">
                           <li class=" dropdown-submenu">
                                <a href="communication.aspx">
                                    <i class="icon-bar-chart"></i>
                                    1.Realtime</a>
                            </li>
                             <li class=" dropdown-submenu">
                                <a href="commu_daily.aspx">
                                    <i class="icon-bar-chart"></i>
                                    2.Historical </a>
                            </li>
                             <li class=" dropdown-submenu">
                                <a href="commu_master.aspx">
                                    <i class="icon-bar-chart"></i>
                                    3.Master </a>
                            </li>







                        </ul>
                    </li>--%>
                     <%--<li class="menu-dropdown classic-menu-dropdown ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown" href="javascript:;">E-Counters <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-left">
                              <li class=" dropdown-submenu" >
                                <a href="counter_3.aspx">
                                    <i class="icon-bar-chart"></i>
                                    1.Region Year </a>
                                      </li>
                                 <li class=" dropdown-submenu" >
                                <a href="counter_4.aspx">
                                    <i class="icon-bar-chart"></i>
                                 2.Region  Month </a>
                                      </li>
                        
                            <li class=" dropdown-submenu">
                                <a href="counter_2.aspx">
                                    <i class="icon-bar-chart"></i>
                                    3.Office </a>
                            </li>
                            <li class=" dropdown-submenu">
                                <a href="counter_1.aspx">
                                    <i class="icon-bar-chart"></i>
                                    4.Operation ID </a>
                            </li>
                              <li class=" dropdown-submenu">
                                <a href="counter_6.aspx">
                                    <i class="icon-bar-chart"></i>
                                    5. Yearly</a>
                            </li>
                        </ul>
                    </li>--%>
                    <%--<li class="menu-dropdown classic-menu-dropdown ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown" href="javascript:;">GIS <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-left">
                            <li class=" dropdown-submenu">
                                <a href="gis_trx.aspx">
                                    <i class="icon-bar-chart"></i>
                                    1.Tranformer </a>
                            </li>







                        </ul>
                   
                       --%><%--<li class="menu-dropdown classic-menu-dropdown ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown" href="javascript:;">Monthly Report Plus <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-left">
                            <li class=" dropdown-submenu">
                                <a href="gis_trf_2.aspx">
                                    <i class="icon-bar-chart"></i>
                                    1.Peak Load + Tranformer </a>
                            </li>

                               <li class=" dropdown-submenu">
                                <a href="his_event_load.aspx">
                                    <i class="icon-bar-chart"></i>
                                    2.daily Load + Historical </a>
                            </li>





                        </ul>
                    </li>--%>
                </ul>
            </div>
            <!-- END MEGA MENU -->
        </div>
    </div>
    <!-- END HEADER MENU -->
</div>
<!-- END HEADER -->

