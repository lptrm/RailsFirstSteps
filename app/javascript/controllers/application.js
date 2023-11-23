import { Application } from "@hotwired/stimulus"
import * as Turbo from "@hotwired/turbo";

document.addEventListener("turbo:load", () => {
    Turbo.start();
});
const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
