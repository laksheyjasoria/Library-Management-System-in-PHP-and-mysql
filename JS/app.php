<script>var qrcode = new QRCode(document.querySelector(".qrcode"));
qrcode.makeCode("Why did you scanned me?");
function generateQr() {
  qrcode.makeCode(<?php echo id_no; ?>);
}</script>