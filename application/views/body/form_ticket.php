<script language="javascript" type="text/javascript">
	$(document).ready(function() {

		$("#id_kategori").change(function() {
			// Put an animated GIF image insight of content

			var data = {
				id_kategori: $("#id_kategori").val()
			};
			$.ajax({
				type: "POST",
				url: "<?php echo base_url() . 'select/select_sub_kategori' ?>",
				data: data,
				success: function(msg) {
					$('#div-order').html(msg);
				}
			});
		});

	});
</script>
<script src="https://unpkg.com/filepond@^4/dist/filepond.js"></script>
<div class="row">
	<ol class="breadcrumb">
		<li><a href="#"><svg class="glyph stroked home">
					<use xlink:href="#stroked-home"></use>
				</svg></a></li>
		<li class="active">New Ticket</li>
	</ol>
</div>
<!--/.row-->

<br>


<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-primary">
			<div class="panel-heading"><svg class="glyph stroked male user ">
					<use xlink:href="#stroked-male-user" />
				</svg>
				<a href="#" style="text-decoration:none; color:white;">Ticket</a>
			</div>
			<div class="panel-body">

				<div class="col-md-12">
					<form method="post" action="<?php echo base_url(); ?><?php echo $url; ?>" enctype="multipart/form-data">

						<input type="hidden" class="form-control" name="id_ticket" value="<?php echo $id_ticket; ?>">
						<input type="hidden" class="form-control" name="id_user" value="<?php echo $id_user; ?>">

						<div class="panel panel-danger">
							<div class="panel-heading">
								Pelapor Masalah
							</div>
							<div class="panel-body">

								<div class="col-md-6">

									<div class="form-group">
										<label>NIK</label>
										<input class="form-control" name="nama" placeholder="Nama" value="<?php echo $id_user; ?>" disabled>
									</div>

									<div class="form-group">
										<label>Departemen</label>
										<input class="form-control" name="departemen" placeholder="Departemen" value="<?php echo $departemen; ?>" disabled>
									</div>

								</div>

								<div class="col-md-6">

									<div class="form-group">
										<label>Nama</label>
										<input class="form-control" name="nama" placeholder="Departemen" value="<?php echo $nama; ?>" disabled>
									</div>

									<div class="form-group">
										<label>Bagian Departemen</label>
										<input class="form-control" name="departemen" placeholder="Departemen" value="<?php echo $bagian_departemen; ?>" disabled>
									</div>

								</div>

							</div>
						</div>

						<div class="panel panel-danger">
							<div class="panel-heading">
								Deskripsi Masalah
							</div>
							<div class="panel-body">

								<div class="col-md-6">

									<div class="form-group">
										<label>Kategori Masalah</label>
										<?php echo form_dropdown('id_kategori', $dd_kategori, $id_kategori, ' id="id_kategori" required class="form-control"'); ?>
									</div>

									<div id="div-order">

										<?php if ($flag == "edit") {

											echo form_dropdown('id_sub_kategori', $dd_sub_kategori, $id_sub_kategori, 'required class="form-control"');
										} else {
										}
										?>

									</div>

									<div class="form-group">
										<label>Ugently / Kondisi</label>
										<?php echo form_dropdown('id_kondisi', $dd_kondisi, $id_kondisi, ' id="id_kondisi" required class="form-control"'); ?>
									</div>


									<style>
										.filepond--panel-root {
											background-color: transparent;
											border: 2px solid #2c3340;
										}

										.filepond--root {
											/* max-height: 50em; */
											font-size: 1.1em;
										}
									</style>
									<div class="form-group">
										<label>Berita Acara</label>
										<input type="file" name="berita_acara" class="berita_acara" accept=".pdf,.docx" required />
									</div>
									<div class="form-group">
										<label>Lampiran</label>
										<input type="file" multiple name="lampiran[]" class="lampiran" />
									</div>
									<!-- <input type="hidden" name="lampiran_data"> -->

								</div>

								<div class="col-md-6">

									<div class="form-group">
										<label>Subject Masalah</label>
										<input class="form-control" name="problem_summary" placeholder="problem_summary" value="<?php echo $problem_summary; ?>" required>
									</div>

									<div class="form-group">
										<label>Deskripsi Masalah</label>
										<textarea name="problem_detail" class="form-control" rows="10"><?php echo $problem_detail; ?></textarea>
									</div>



								</div>

							</div>
						</div>






						<button type="submit" class="btn btn-primary">Simpan</button>
						<a href="<?php echo base_url(); ?>karyawan/karyawan_list" class="btn btn-default">Batal</a>
				</div>

				</form>


			</div>
		</div>
	</div>
</div>


<script>
	// Get a reference to the file input element
	const inputElement1 = document.querySelector('.berita_acara');
	const inputElement2 = document.querySelector('.lampiran');

	// Create a FilePond instance
	const pond1 = FilePond.create(inputElement1);
	const pond2 = FilePond.create(inputElement2);

	//store as file
	pond1.setOptions({
		storeAsFile: true,
		// input file accept .pdf
	});
	pond2.setOptions({
		storeAsFile: true,
	});

	// find element with name berita_acara inside element who have class filepond--root and berita_acara
	// and set attribute accept .pdf
	var file_pond = document.querySelector('.filepond--root.berita_acara');
	// find element first input inside element file_pond and set attribute accept .pdf
	file_pond.setAttribute('accept', '.pdf');



	// pond on add file event
	// pond.on('addfile', (error, file) => {
	// 	console.log('file added event', file);
	// 	var files = pond.getFiles();
	// 	// loop every files than add blop to array and push to input hidden
	// 	var file_array = [];
	// 	// loop using for
	// 	for (var i = 0; i < files.length; i++) {
	// 		// get file
	// 		var file = files[i];
	// 		// get file blob
	// 		var blob = file.file;

	// 		// create file reader
	// 		var reader = new FileReader();
	// 		// read file as data url
	// 		reader.readAsDataURL(blob);
	// 		// on reader load event
	// 		reader.onload = function(event) {
	// 			// push file data url to array
	// 			file_array.push(event.target.result);
	// 			// set input hidden value
	// 			$('input[name="lampiran_data"]').val(file_array);
	// 		}
	// 	}
	// 	// set to new input file
	// });

	// pond copy file to $('#lampiran') with comma separated
	// pond.on('processfile', (error, file) => {
	// 	console.log('file processed event', file);

	// });

	// First register any plugins
	// $.fn.filepond.registerPlugin(FilePondPluginImagePreview);

	// // Turn input element into a pond
	// $('.my-pond').filepond();

	// // Set allowMultiple property to true
	// $('.my-pond').filepond('allowMultiple', true);

	// // Listen for addfile event
	// $('.my-pond').on('FilePond:addfile', function(e) {
	// 	console.log('file added event', e);
	// });
</script>
<!--/.row-->