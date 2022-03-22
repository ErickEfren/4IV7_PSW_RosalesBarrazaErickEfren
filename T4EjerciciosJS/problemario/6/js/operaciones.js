function validarn(e){
    var teclado = (document.all)? e.keyCode : e.which;
    if(teclado == 8) return true;
    var patron = /[0-9]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo);
}
function edad(){
    var todoesvalido = true;
    var diaN = parseInt(document.getElementById("diaN").value);
    var mesN = parseInt(document.getElementById("mesN").value);
    var añoN = parseInt(document.getElementById("añoN").value);
    var diaA = parseInt(document.getElementById("diaA").value);
    var mesA = parseInt(document.getElementById("mesA").value);
    var añoA = parseInt(document.getElementById("añoA").value);
    if(mesN=1){
        if(diaN>31){
            alert("En enero solo hay 31 días");
            todoesvalido = false;
        }
    }else if(mesN=2){
        if(diaN>31){
            alert("En febrero solo hay 28 días");
            todoesvalido = false;
        }
    }else if(mesN=3){
        if(diaN>31){
            alert("En marzo solo hay 31 días");
            todoesvalido = false;
        }
    }else if(mesN=4){
        if(diaN>31){
            alert("En abril solo hay 30 días");
            todoesvalido = false;
        }
    }else if(mesN=5){
        if(diaN>31){
            alert("En mayo solo hay 31 días");
            todoesvalido = false;
        }
    }else if(mesN=6){
        if(diaN>31){
            alert("En junio solo hay 30 días");
            todoesvalido = false;
        }
    }else if(mesN=7){
        if(diaN>31){
            alert("En julio solo hay 31 días");
            todoesvalido = false;
        }
    }else if(mesN=8){
        if(diaN>31){
            alert("En agosto solo hay 31 días");
            todoesvalido = false;
        }
    }else if(mesN=9){
        if(diaN>31){
            alert("En septiembre solo hay 30 días");
            todoesvalido = false;
        }
    }else if(mesN=10){
        if(diaN>31){
            alert("En octubre solo hay 31 días");
            todoesvalido = false;
        }
    }else if(mesN=11){
        if(diaN>31){
            alert("En noviembre solo hay 30 días");
            todoesvalido = false;
        }
    }else if(mesN=12){
        if(diaN>31){
            alert("En diciembre solo hay 31 días");
            todoesvalido = false;
        }
    }else{
        alert("SOLO HAY 12 MESES");
        todoesvalido = false
    }
    if(mesA=1){
        if(diaA>31){
            alert("En enero solo hay 31 días");
            todoesvalido = false;
        }
    }else if(mesA=2){
        if(diaA>31){
            alert("En febrero solo hay 28 días");
            todoesvalido = false;
        }
    }else if(mesA=3){
        if(diaA>31){
            alert("En marzo solo hay 31 días");
            todoesvalido = false;
        }
    }else if(mesA=4){
        if(diaA>31){
            alert("En abril solo hay 30 días");
            todoesvalido = false;
        }
    }else if(mesA=5){
        if(diaA>31){
            alert("En mayo solo hay 31 días");
            todoesvalido = false;
        }
    }else if(mesA=6){
        if(diaA>31){
            alert("En junio solo hay 30 días");
            todoesvalido = false;
        }
    }else if(mesA=7){
        if(diaA>31){
            alert("En julio solo hay 31 días");
            todoesvalido = false;
        }
    }else if(mesA=8){
        if(diaA>31){
            alert("En agosto solo hay 31 días");
            todoesvalido = false;
        }
    }else if(mesA=9){
        if(diaA >31){
            alert("En septiembre solo hay 30 días");
            todoesvalido = false;
        }
    }else if(mesA=10){
        if(diaA>31){
            alert("En octubre solo hay 31 días");
            todoesvalido = false;
        }
    }else if(mesA=11){
        if(diaA>31){
            alert("En noviembre solo hay 30 días");
            todoesvalido = false;
        }
    }else if(mesA=12){
        if(diaA>31){
            alert("En diciembre solo hay 31 días");
            todoesvalido = false;
        }
    }else{
        alert("SOLO HAY 12 MESES");
        todoesvalido = false
    }
    
    if(!todoesvalido){
        return false;
    }
    var fechaF = añoA - añoN
    document.getElementById("edad").innerHTML = fechaF
}
function borrar(){
    document.getElementById("diaN").value = "";
    document.getElementById("mesN").value = "";
    document.getElementById("añoN").value = "";
    document.getElementById("diaA").value = "";
    document.getElementById("mesA").value = "";
    document.getElementById("añoN").value = "";
    document.getElementById("edad").innerHTML = "___";
}