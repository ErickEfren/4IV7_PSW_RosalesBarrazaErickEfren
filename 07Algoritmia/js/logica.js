//Problema 1
function validarn(e) {
    var teclado = (document.all) ? e.keyCode : e.which;
    if (teclado == 8 || teclado == 32) return true;    
    var patron = /[a b c d e f g h i j k l m n ñ o p q r s t u v w x y z A B C D E F G H I J K L M N Ñ O P Q R S T U V W X Y Z á Á é É í Í ó Ó ú Ú ü Ü]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo)
function reverse(palabra){
    return palabra.split("").reverse().join("");
}
function problema1(){
    var p1_input = document.querySelector('#p1-input').value;
    var p1_palabras = p1_input.split(' ');
    var final = "";
    for (var i = 0; i < p1_palabras.length; i++){
        var p1_palabrasI = reverse(p1_palabras[i]);
        var final = "La invertida de la palabra " + p1_palabras[i] + "es: " + p1_palabrasI + "\n";
        final = document.getElementById("p1-output").innerHTML;
    }
}
//Problema 2

//problema 3
function problema3(){
    //definir un alfabeto
    var alfabeto = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'Ñ', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 
                'X', 'Y', 'Z']; 
    //OBTENER LA CADENA DEL INPUT Y SEPARAR POR COMAS
    var p3_input = document.querySelector('#p3-input').value
    var p3_palabras = p3_input.split(',');
    //ELIMINAR EL ESPACIO QUE HAY EN CADA PALABRA
    p3_palabras = p3_palabras.map(function (palabra){
        return palabra.replace(/\s/g, '').toUpperCase();
    });
    //CALCULAR LOS CARACTERES UNICOS DE CADA PALABRA
    var p3_resultado = ''
    //ITERAR EN CADA PALABRA
    p3_palabras.forEach(function (palabra,i){
        //SEPARAR LAS PALABRAS EN UN ARRAY PARA LEER CADA LETRA
        var letras_unicas = []
        var palabra_array = palabra.split('');
        //iterar al alfabeto
        alfabeto.forEach(function (letra, j){
            //iterar palabra
            palabra_array.forEach(function (letra_palabra, K){
                //COMPROBAR QUE LA LETRA ESTÁ EN EL ALFABETO
                if(letra_palabra == letra){
                    //SI LA LETRA NO LA HEMOS CONTADO LA AGREGAMOS A UN ARRAY, PARA AGREGAR LAS LETRAS UNICAS
                    if(letras_unicas.indexOf(letra) < 0){
                        letras_unicas.push(letra);
                    }
                }
            });
        });
        p3_resultado += 'Palabra: ' + palabra + ' = ' + letras_unicas.length + '\n';
    });
    document.querySelector('#p3-output').textContent = p3_resultado;
}