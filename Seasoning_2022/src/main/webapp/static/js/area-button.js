/* 버튼 색상 변경 */
var btn = document.getElementsByClassName("area-btn");
function btnClick(event) {
  console.log(event.target);
  console.log(event.target.classList);
  if (event.target.classList[1] === "clicked") {
    event.target.classList.remove("clicked");
  } else {
    for (var i = 0; i < btn.length; i++) {
      btn[i].classList.remove("clicked");
    }
    event.target.classList.add("clicked");
  }
}
function init() {
  for (var i = 0; i < btn.length; i++) {
    btn[i].addEventListener("click", btnClick);
  }
}
init();
