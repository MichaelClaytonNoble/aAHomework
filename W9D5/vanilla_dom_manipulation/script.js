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
  
  const addToList = document.getElementsByClassName("favorite-submit");
  addToList[0].addEventListener("click", (e)=> {
    e.preventDefault();
    let restaurantUl = document.getElementById("restaurants"); 
    let newLi = document.createElement("li");
    newLi.textContent = document.getElementsByClassName("favorite-input")[0].value;
    restaurantUl.appendChild(newLi);

  })

  let button = document.querySelector(".photo-show-button");
  button.addEventListener("click", (e)=> {
    e.preventDefault();
    let photoFormContainer = document.querySelector(".photo-form-container");
    photoFormContainer.classList.remove("hidden"); 
  })

  let addPhotoButton = document.querySelector(".photo-url-submit");
  addPhotoButton.addEventListener("click", e=>{
    e.preventDefault();
    let imgInput = document.querySelector(".photo-url-input").value;
    let newImg = document.createElement("img")
    newImg.src=imgInput;
    document.querySelector(".dog-photos").appendChild(document.createElement("li")).appendChild(newImg);
  })
  // --- your code here!



  // adding new photos

  // --- your code here!



});
