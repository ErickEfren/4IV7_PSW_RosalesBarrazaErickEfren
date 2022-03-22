function validarn(e){
    var teclado = (document.all)? e.keyCode : e.which;
    if(teclado == 8) return true;
    var patron = /[0-9\d .]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo);
}
function interes(){
    var todoesvalido = true
    var valor = parseFloat(document.getElementById("cantidad").value)
    var meses = parseInt(document.getElementById("meses").value);
    if (meses > 48){
        alert ("SOLO SE PUEDE OCUPAR EL INTERES HASTA 48 MESES ó NO SE PUEDEN MESES NEGATIVOS");
        todoesvalido = false
    }else{
        var interes = 0
        var resultado = ""
        var final = 0
        for(var i = 0; i < meses; i++){
            interes = valor*(i+1)*0.02
            final = interes + valor
            resultado += "El interes final en " + (i+1) + ' meses es de $' + final + '\n'
        }
        document.getElementById('output').innerHTML = resultado;
    }
    if (!todoesvalido){
        return false
    }
}
function borrarF(){
    document.getElementById("cantidad").value = '';
    document.getElementById("meses").value = "";
    document.getElementById("output").innerText = "Esperando Datos..."
}