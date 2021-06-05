const form = document.getElementById("quiz-form");

const els = document.getElementsByClassName("value-item-quiz")

Array.prototype.forEach.call(els, function(el) {
  el.addEventListener("click", function () {
  form.submit();
});
});

