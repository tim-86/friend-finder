const form = document.getElementById("quiz-form");

const array = document.getElementsByClassName("value-item-quiz")

for (const child of array.children) {
  child.addEventListener("click", function () {
  form.submit();
});
}
