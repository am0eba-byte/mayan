function init() {
    var fieldset = document.getElementsByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);
    }
}

function toggle() {
 var id = this.id;
    switch (id) {
        case "EarlyPretoggle": {
            var chars = document.getElementsByClassName("EarlyPre");
            for (var i = 0; i < chars.length; i++) {
                chars[i].classList.toggle("on")
            }
        };
        break;
        case "MidPretoggle": {
            var chars = document.getElementsByClassName("MidPre");
            for (var i = 0; i < chars.length; i++) {
                chars[i].classList.toggle("on")
            }
        };
        break;
        case "LatePretoggle": {
            var chars = document.getElementsByClassName("LatePre");
            for (var i = 0; i < chars.length; i++) {
                chars[i].classList.toggle("on")
            }
        };
        break;
        case "EarlyClastoggle": {
            var chars = document.getElementsByClassName("EarlyClas");
            for (var i = 0; i < chars.length; i++) {
                chars[i].classList.toggle("on")
            }
        };
        break;
        case "MidClastoggle": {
            var chars = document.getElementsByClassName("MidClas");
            for (var i = 0; i < chars.length; i++) {
                chars[i].classList.toggle("on")
            }
        };
        break;
        case "LateClastoggle": {
            var chars = document.getElementsByClassName("LateClas");
            for (var i = 0; i < chars.length; i++) {
                chars[i].classList.toggle("on")
            }
        };
        break;
        case "Guattoggle": {
            var chars = document.getElementsByClassName("Guat");
            for (var i = 0; i < chars.length; i++) {
                chars[i].classList.toggle("on")
            }
        };
        break;
        case "MexYuctoggle": {
            var chars = document.getElementsByClassName("MexYuc");
            for (var i = 0; i < chars.length; i++) {
                chars[i].classList.toggle("on")
            }
        };
        break;
        case "MexChitoggle": {
            var chars = document.getElementsByClassName("MexChi");
            for (var i = 0; i < chars.length; i++) {
                chars[i].classList.toggle("on")
            }
        };
        break;
        case "Hondtoggle": {
            var chars = document.getElementsByClassName("Hond");
            for (var i = 0; i < chars.length; i++) {
                chars[i].classList.toggle("on")
            }
        };
        break;
    }

}

window.onload = init;