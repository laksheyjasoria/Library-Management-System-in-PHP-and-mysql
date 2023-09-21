var qrcode = new QRCode(document.querySelector(".qrcode"));
function generateQr() {
  qrcode.makeCode(document.querySelector("input").value);
}
downloadQrCode =function (el){  
    var canvas = document.querySelector(".qrcode");  
    var image = canvas.toDataURL("image/png");  
    el.href = image;  
  }