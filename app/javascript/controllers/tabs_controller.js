import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ["tabs", "links", "param"]
  static values = { id: String }
  static classes = ["disabled", "hidden"]

  toggle(e) {
    e.preventDefault()
    this.idValue = e.target.hash.substring(1)
  }

  toggleTabs() {
    this.tabsTargets.forEach((element, index) => {
      if (element.id === this.idValue) {
        element.classList.remove(this.hiddenClass)
      }
      else {
        element.classList.add(this.hiddenClass)
      }
    })
  }

  toggleLinks() {
    this.linksTargets.forEach((element, index) => {
      if (element.hash.substring(1) === this.idValue) {
        element.classList.add(this.disabledClass)
      }
      else {
        element.classList.remove(this.disabledClass)
      }
    })
  }

  idValueChanged() {
    this.toggleLinks()
    this.toggleTabs()
    this.paramTarget.value = this.idValue
  }

  connect() {
  }
}
