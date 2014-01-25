     <h2>Upload File</h2>
    Ukuran File Maximal: 10mb.
    <form name="form" enctype="multipart/form-data" action="proses.php" method="POST">
    <input type="hidden" name="MAX_FILE_SIZE" value="10000000" />
    Pilih File: <input name="file" type="file" style="cursor:pointer;" />
    <input type="submit" name="submit" value="Upload" />
    </form>