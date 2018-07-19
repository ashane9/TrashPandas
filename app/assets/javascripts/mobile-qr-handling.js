//= require grid
//= require version
//= require detector
//= require formatinf
//= require errorlevel
//= require bitmat
//= require datablock
//= require bmparser
//= require datamask
//= require rsdecoder
//= require rsdecoder
//= require gf256poly
//= require gf256
//= require decoder
//= require qrcode
//= require findpat
//= require alignpat
//= require databr
//= require mobile-qr-handling
//= require eagle

var cardNumber;
function read(a)
{
    cardNumber = a;
}

function redirect()
{
    $.ajax({
        url : "/menu",
        type : "post",
        data : { number: cardNumber }
    });
}
function scan_qr()
{
    var fileInput = document.getElementById('file-input');
    var flying = document.getElementById('eagleAnimation');
    var cardLookup = document.getElementById('cardLookup');
    var files = fileInput.files;
    var imgUrl = URL.createObjectURL(files[0]);
    qrcode.callback = read;
    qrcode.decode(imgUrl);
    hide(cardLookup);
    show(flying);
    animationStop=false;
    run();
    // setTimeout(function(){animationStop=true;},1800);
    setTimeout(function(){animationStop=true;hide(flying);redirect();},8000);
}

function show(element)
{
   element.style.display = "block";
}
function hide(element)
{
    element.style.display = "none";

}

