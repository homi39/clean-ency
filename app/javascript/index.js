function index() {
  const fontLight = document.getElementsByClassName("user-nickname")
  const titleLight = document.getElementsByClassName("mini-title")


  for (let i = 0; i < fontLight.length; i++) {
    fontLight[i].addEventListener('mouseover', function () {
      this.setAttribute("style", "background-color:#ffffe0;")
    })

    fontLight[i].addEventListener('mouseout', function(){
      this.removeAttribute("style", "background-color:#ffffe0;")
    })
  }

  for (let i = 0; i < titleLight.length; i++) {
    titleLight[i].addEventListener('mouseover', function () {
      this.setAttribute("style", "background-color:#ffffe0;")
    })

    titleLight[i].addEventListener('mouseout', function(){
      this.removeAttribute("style", "background-color:#ffffe0;")
    })
  }
}

window.addEventListener('turbolinks:load', index)
