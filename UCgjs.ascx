<%@ Control Language="VB" AutoEventWireup="false" CodeFile="UCgjs.ascx.vb" Inherits="UCgjs" %>


<script src="grap/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="grap/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="grap/assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="grap/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="grap/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="grap/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="grap/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="grap/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="grap/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="grap/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="grap/assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
<script type="text/javascript" src="grap/assets/global/plugins/clockface/js/clockface.js"></script>
<script type="text/javascript" src="grap/assets/global/plugins/bootstrap-daterangepicker/moment.min.js"></script>
<script type="text/javascript" src="grap/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
<script type="text/javascript" src="grap/assets/global/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script type="text/javascript" src="grap/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="grap/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="grap/assets/admin/layout3/scripts/layout.js" type="text/javascript"></script>
<script src="grap/assets/admin/layout3/scripts/demo.js" type="text/javascript"></script>
<script src="grap/assets/admin/pages/scripts/components-pickers.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function () {
        // initiate layout and plugins
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Demo.init(); // init demo features
        ComponentsPickers.init();
    });
    </script>