function validarn(e){
    var teclado = (document.all)? e.keyCode : e.which;
    if(teclado == 8) return true;
    var patron = /[0-9\d .]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo);
}
function calificacion(){
    var todoesvalido = true;
    var primer = parseFloat(document.getElementById("1er").value);
    var segundo = parseFloat(document.getElementById("2do").value);
    var tercer = parseFloat(document.getElementById("3er").value);
    var examen = parseFloat(document.getElementById("examen").value);
    var trabajo = parseFloat(document.getElementById("trabajo").value);
    if (primer>10||segundo>10||tercer>10||examen>10||trabajo>10){
        alert("Las calificaciones son hasta 10");
        todoesvalido = false
    }else{
    var calificacion = ((primer+segundo+tercer)/3*.55) + (examen*.30) + (trabajo*.15);
    document.getElementById("final").innerHTML = calificacion
    }
    if (!todoesvalido){
        return false;
    }
}
function borrar(){
    document.getElementById("1er").value = "";
    document.getElementById("2do").value = "";
    document.getElementById("3er").value = "";
    document.getElementById("examen").value = "";
    document.getElementById("trabajo").value = "";
    document.getElementById("final").innerHTML = "Esperando Datos..."
}