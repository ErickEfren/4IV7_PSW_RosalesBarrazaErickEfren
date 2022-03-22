function validarn(e){
    var teclado = (document.all)? e.keyCode : e.which;
    if(teclado == 8) return true;
    var patron = /[0-9]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo);
}
function porcentaje(){
    var hombres = parseInt(document.getElementById("hombres").value);
    var mujeres = parseInt(document.getElementById("mujeres").value);
    var total = hombres + mujeres;
    var Th = hombres*100/total;
    var Tm = mujeres*100/total;
    document.getElementById("hombresF").innerHTML = Th+"%";
    document.getElementById("mujeresF").innerHTML = Tm+'%';
}
function borrar(){
    document.getElementById("hombres").value = "";
    document.getElementById("mujeres").value = "";
    document.getElementById("hombresF").innerHTML = "Esperando Datos...";
    document.getElementById("mujeresF").innerHTML = "Esperando Datos...";
}