function operacion(formulario){
    if(formulario.Vautomovil.value < 100000 || formulario.Vautomovil.value > 1000000){
        alert("El valor del automovil debe ser estrictamente entre 100,000.00 y 1,000,000.00");
    }
    if(formulario.CInicial.value < formulario.Vautomovil.value*0.1){
        alert("El valor minimo de la cuota inicial es del 10% del automovil");
    }
    var checkOK = "0123456789.";
    var checkStr = formulario.Vautomovil.value;
    var todoesvalido = true;

    for(var i = 0; i < checkStr.length; i++){
        var ch = checkStr.charAt(i);
        for(var j = 0; j < checkOK.length; j++){
            if(ch == checkOK.charAt(j)){
                break;
            }    
        }
        if(j == checkOK.length){
            todoesvalido = false;
            break;
        }
    }
    if(!todoesvalido){
        alert("Escriba unicamente números en el campo VALOR DEL AUTO");
        formulario.Vautomovil.focus();
        return false;
    }
    var va = formulario.Vautomovil.value;
    var ci = formulario.CInicial.value;
    var p = formulario.Periodo.value;
    var pi = va-ci;
    var T = pi*(1.394)**p;
    var F = document.formulario.VFinal;
    F.value = T;
}