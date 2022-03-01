function send() {
  const submit = document.getElementById("submit");
  submit.addEventListener("click", (e) => {
    const formData = new FormData(document.getElementById("answer_form"));
    const XHR = new XMLHttpRequest();
    XHR.open("POST", "/answers", true);
    XHR.responseType = "json";
  });
}

window.addEventListener("load", send);