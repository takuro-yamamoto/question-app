function graph() {
  const graphBody = document.querySelectorAll(".ub-bar-graph-content")
  const graphTotal = document.querySelector(".graph_total")
  const total = graphTotal.innerHTML
  let max = 0
  let maxId = ""
  graphBody.forEach(function(list) {
    let graphValue = list.querySelector("p")
    let value = graphValue.innerHTML
    let ratio = 100*value/total
    let graphRatio = list.querySelector("dt")
    graphRatio.style.width = `${ratio}%`
    
    if(max <= value){
      max = value
      graphRatio.setAttribute("class", "ub-bar-graph__em")
    }
  })
  graphBody.forEach(function(list) {
    let graphValue = list.querySelector("p")
    let value = graphValue.innerHTML
    let graphRatio = list.querySelector("dt")
    if(max > value){
      graphRatio.removeAttribute("class", "ub-bar-graph__em")
    }
  })
}

window.addEventListener("load", graph);