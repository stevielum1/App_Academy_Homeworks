document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const form = document.querySelector("div.list-container form");
  const places = document.querySelector("ul#sf-places");
  form.addEventListener("submit", e => {
    e.preventDefault();

    const input = e.target.querySelector("input.favorite-input");
    const inputValue = input.value;
    input.value = "";

    const li = document.createElement("li");
    li.innerHTML = inputValue;

    places.appendChild(li);
  });

  // adding new photos

  // --- your code here!
  const photoButton = document.querySelector("button.photo-show-button");
  const photoFormContainer = document.querySelector("div.photo-form-container");

  photoButton.addEventListener("click", _ => {
    photoFormContainer.classList.toggle("hidden");
  });

  const photoForm = document.querySelector("div.photo-form-container form");
  photoForm.addEventListener("submit", e => {
    e.preventDefault();

    const input = e.target.querySelector("input.photo-url-input");
    const inputValue = input.value;
    input.value = "";

    const li = document.createElement("li");
    const img = document.createElement("img");
    img.setAttribute("src", inputValue);

    li.appendChild(img);

    const dogPhotos = document.querySelector("ul.dog-photos");
    dogPhotos.appendChild(li);
  });

});
