function validarn(e){
    var teclado = (document.all)? e.keyCode : e.which;
    if(teclado == 8) return true;
    var patron = /[0-9\d .]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo);
}
function precio(){
    var precio = parseFloat(document.getElementById("precio").value);
    var descuento = precio*0.15;
    var resultado = precio - descuento;
    document.getElementById("final").innerHTML = '$' + resultado;
}
function borrar(){
    document.getElementById("precio").value = "";
    document.getElementById("final").innerHTML = "Esperando Datos..."
}