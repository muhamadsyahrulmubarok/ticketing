<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Help Desk - BPR Nusumma Jateng</title>
<?php
setlocale(LC_ALL, 'id_ID.UTF8', 'id_ID.UTF-8', 'id_ID.8859-1', 'id_ID', 'IND.UTF8', 'IND.UTF-8', 'IND.8859-1', 'IND', 'Indonesian.UTF8', 'Indonesian.UTF-8', 'Indonesian.8859-1', 'Indonesian', 'Indonesia', 'id', 'ID', 'en_US.UTF8', 'en_US.UTF-8', 'en_US.8859-1', 'en_US', 'American', 'ENG', 'English');

?>
<link rel="apple-touch-icon" sizes="57x57" href="<?= base_url(); ?>/asset/image/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="<?= base_url(); ?>/asset/image/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="<?= base_url(); ?>/asset/image/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="<?= base_url(); ?>/asset/image/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="<?= base_url(); ?>/asset/image/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="<?= base_url(); ?>/asset/image/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="<?= base_url(); ?>/asset/image/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="<?= base_url(); ?>/asset/image/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="<?= base_url(); ?>/asset/image/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192" href="<?= base_url(); ?>/asset/image/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="<?= base_url(); ?>/asset/image/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="<?= base_url(); ?>/asset/image/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="<?= base_url(); ?>/asset/image/favicon-16x16.png">
<link rel="manifest" href="<?= base_url(); ?>/asset/image/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="<?= base_url(); ?>/asset/image/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<link href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/datepicker3.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/bootstrap-table.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/css/styles.css" rel="stylesheet">
<link href="https://unpkg.com/filepond@^4/dist/filepond.css" rel="stylesheet" />

<!--Icons-->
<script src="<?php echo base_url(); ?>assets/js/lumino.glyphs.js"></script>


<script src="<?php echo base_url(); ?>assets/js/jquery-1.11.1.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/chart.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/chart-data.js"></script>
<script src="<?php echo base_url(); ?>assets/js/easypiechart.js"></script>
<script src="<?php echo base_url(); ?>assets/js/easypiechart-data.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap-datepicker.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap-table.js"></script>



<script>
	! function($) {
		$(document).on("click", "ul.nav li.parent > a > span.icon", function() {
			$(this).find('em:first').toggleClass("glyphicon-minus");
		});
		$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
	}(window.jQuery);

	$(window).on('resize', function() {
		if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
	})
	$(window).on('resize', function() {
		if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
	})
</script>

<script>
	$('#calendar').datepicker({});

	! function($) {
		$(document).on("click", "ul.nav li.parent > a > span.icon", function() {
			$(this).find('em:first').toggleClass("glyphicon-minus");
		});
		$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
	}(window.jQuery);

	$(window).on('resize', function() {
		if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
	})
	$(window).on('resize', function() {
		if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
	})
</script>