function activeHover() {


document.querySelectorAll(".list-group-item").forEach((review) => {
  review.addEventListener("mouseover", (event) => {
    event.currentTarget.classList.toggle("active");
  });
  review.addEventListener("mouseout", (event) => {
    event.currentTarget.classList.toggle("active");
  });
});
}

export { activeHover };
