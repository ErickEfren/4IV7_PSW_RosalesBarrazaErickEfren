//Problema 1
function validarn(e) {
    var teclado = (document.all) ? e.keyCode : e.which;
    if (teclado == 8 || teclado == 32) return true;    
    var patron = /[a b c d e f g h i j k l m n ñ o p q r s t u v w x y z A B C D E F G H I J K L M N Ñ O P Q R S T U V W X Y Z]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo);
}
function reverse(palabra){
    return palabra.split("").reverse().join("");
}
function problema1(){
    var p1_input = document.querySelector('#p1-input').value;
    var p1_palabras = p1_input.split(' ');
    var p1_resultado = '';
    for (var i = 0; i < p1_palabras.length; i++){
        var p1_palabrasI = reverse(p1_palabras[i]);
        p1_resultado += "La invertida de la palabra " + p1_palabras[i] + " es: " + p1_palabrasI + "\n";
    }
    document.getElementById('p1-output').innerHTML = p1_resultado;
}
//Problema 2
function problema2(){
    var x = [parseInt(document.getElementById("p2-x1").value),
    parseInt(document.getElementById("p2-x2").value),
    parseInt(document.getElementById("p2-x3").value),
    parseInt(document.getElementById("p2-x4").value),
    parseInt(document.getElementById("p2-x5").value)]
    var y = [parseInt(document.getElementById("p2-y1").value),
    parseInt(document.getElementById("p2-y2").value),
    parseInt(document.getElementById("p2-y3").value),
    parseInt(document.getElementById("p2-y4").value),
    parseInt(document.getElementById("p2-y5").value)]
    for(var i = 0; i<x.length; i++){
        if (x[i]<0){
            x[i] *= -1
        }
        if (y[i]<0){
            y[i]*=-1
        }
    }
    var z = x[0] * y[0] + x[1] * y[1] + x[2] * y[2] + x[3] * y[3] + x[4] * y[4];
    var p2_resultado = 'El valor del vector es de: ' + z
    document.getElementById("p2-output").innerHTML = p2_resultado
}
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