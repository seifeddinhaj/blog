import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ 'editor']


  connect() {
    if (this.element.id != "ckeditorvalue") {
        ClassicEditor.create(this.element).catch(error => {
            console.error(error);
          }); 
    }else{
     this.element.innerHTML = this.element.dataset.value

    }
    
  }
  updateValue() {
    debugger
    this.editorValueTarget.innerHTML = this.editorController.value
  }
}
