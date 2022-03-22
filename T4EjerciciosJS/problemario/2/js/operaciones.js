function validarn(e){
    var teclado = (document.all)? e.keyCode : e.which;
    if(teclado == 8) return true;
    var patron = /[0-9\d .]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo);
}
function sueldo(){
    var sueldo = parseFloat(document.getElementById("sueldo").value);
    var comision = 0
    var total = 0
    comision = sueldo*0.1*3
    total = sueldo + comision
    document.getElementById("comision").innerHTML = "$"+comision
    document.getElementById("total").innerHTML = "$"+total
}
function borrar(){
    document.getElementById("sueldo").value = "";
    document.getElementById("comision").innerHTML = "Esperando Datos..."
    document.getElementById("total").innerHTML = "Esperando Datos..."
}