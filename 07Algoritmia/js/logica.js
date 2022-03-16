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