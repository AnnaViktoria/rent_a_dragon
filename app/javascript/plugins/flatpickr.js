import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import "flatpickr/dist/themes/material_green.css";

const inputField = document.getElementById("reservation_start_date");
const unavailableDates = inputField.dataset.disabledDates.split(";");
flatpickr(".datepicker", {
  disable: unavailableDates,
  dateFormat: "d-m-Y",
  minDate: "today"
})
