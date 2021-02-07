// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import Alert from 'bootstrap/js/dist/alert';
import './src/application.scss'

require("flatpickr/dist/themes/dark.css");
import flatpickr from "flatpickr";

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener("turbolinks:load", function() {
  flatpickr(".date-time-select", {
    enableTime: true,
    dateFormat: "m-d-Y h:i K",
  })

  var alertList = document.querySelectorAll('.alert')
  alertList.forEach(function (alert) {
      new bootstrap.Alert(alert)
  })

  var honeypots = document.querySelectorAll('.email-confirmation')
  honeypots.forEach(function (h) {
    h.style.display = 'none';
  })

})
