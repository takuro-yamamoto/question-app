function choice() {
  const choiceCheck = document.querySelectorAll(".choice")
  choiceCheck.forEach(function(list) {
    const choiceRadio = list.querySelector("input")
    list.addEventListener('click', function() {     
      choiceRadio.checked = true
    })
  })
}
window.addEventListener("load", choice);