/*window.addEventListener('DOMContentLoaded',date,false);

function date() {

var today = document.getElementById("datetime")
span.addEventListener('onload', getDate, false)

}

function getDate() {
var today = new Date();
var dd = String(today.getDate()).padStart(2, '0');
var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
var yyyy = today.getFullYear();

today = mm + '/' + dd + '/' + yyyy;
document.write(today).innerHTML = dt.toLocaleDateString();
}*/

/*var today = new Date();

var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
document.getElementById('date-time').innerHTML = date;
*/

window.addEventListener('DOMContentLoaded',displayDate,false);

function displayDate() {
  document.getElementById("date-time").innerHTML = Date();
}

