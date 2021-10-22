function init() {
    var fieldset = document.getElementsByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);
    }
}

function toggle() {
    var id = this.id;
    switch (id) {
        case "OneHtoggle": {
            var chars = document.getElementsByClassName("OneH");
            for (var i = 0; i < chars.length; i++) {
                chars[i].classList.toggle("on")
            }
        };
        break;
        case "Chatoggle": {
            var places = document.getElementsByClassName("Cha");
            for (var i = 0; i < places.length; i++) {
                places[i].classList.toggle("on")
            }
        };
        break;
        case "Xbatoggle": {
            var objects = document.getElementsByClassName("Xba");
            for (var i = 0; i < objects.length; i++) {
                objects[i].classList.toggle("on")
            }
        };
        break;
        case "Huntoggle": {
            var objects = document.getElementsByClassName("Hun");
            for (var i = 0; i < objects.length; i++) {
                objects[i].classList.toggle("on")
            }
        };
        break;
        case "PBDtoggle": {
            var objects = document.getElementsByClassName("PBD");
            for (var i = 0; i < objects.length; i++) {
                objects[i].classList.toggle("on")
            }
        };
        break;
        case "SPStoggle": {
            var objects = document.getElementsByClassName("SPS");
            for (var i = 0; i < objects.length; i++) {
                objects[i].classList.toggle("on")
            }
        };
        break;
        case "LOXtoggle": {
            var objects = document.getElementsByClassName("LOX");
            for (var i = 0; i < objects.length; i++) {
                objects[i].classList.toggle("on")
            }
        };
        break;
        case "SanBarttoggle": {
            var objects = document.getElementsByClassName("SanBart");
            for (var i = 0; i < objects.length; i++) {
                objects[i].classList.toggle("on")
            }
        };
        break;
        case "elMiratoggle": {
            var objects = document.getElementsByClassName("elMira");
            for (var i = 0; i < objects.length; i++) {
                objects[i].classList.toggle("on")
            }
        };
        break;
        case "tikaltoggle": {
            var objects = document.getElementsByClassName("tikal");
            for (var i = 0; i < objects.length; i++) {
                objects[i].classList.toggle("on")
            }
        };
        break;
        case "copantoggle": {
            var objects = document.getElementsByClassName("copan");
            for (var i = 0; i < objects.length; i++) {
                objects[i].classList.toggle("on")
            }
        };
        break;
        case "chItzatoggle": {
            var objects = document.getElementsByClassName("chItza");
            for (var i = 0; i < objects.length; i++) {
                objects[i].classList.toggle("on")
            }
        };
        break;
        case "izapatoggle": {
            var objects = document.getElementsByClassName("izapa");
            for (var i = 0; i < objects.length; i++) {
                objects[i].classList.toggle("on")
            }
        };
        break;
        case "KJtoggle": {
            var objects = document.getElementsByClassName("KJ");
            for (var i = 0; i < objects.length; i++) {
                objects[i].classList.toggle("on")
            }
        };
        break;
        case "palenQtoggle": {
            var objects = document.getElementsByClassName("palenQ");
            for (var i = 0; i < objects.length; i++) {
                objects[i].classList.toggle("on")
            }
        };
        break;
        case "uxmaltoggle": {
            var objects = document.getElementsByClassName("uxmal");
            for (var i = 0; i < objects.length; i++) {
                objects[i].classList.toggle("on")
            }
        };
        break;
        case "yaxchiltoggle": {
            var objects = document.getElementsByClassName("yaxchil");
            for (var i = 0; i < objects.length; i++) {
                objects[i].classList.toggle("on")
            }
        };
        break;
    }
  }

window.onload = init;