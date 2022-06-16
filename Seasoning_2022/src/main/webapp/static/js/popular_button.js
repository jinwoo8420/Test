document.addEventListener("DOMContentLoaded", () => {
  const div_menu = document.querySelector("div.area-menu");
  const div_pop_view = document.querySelector("div.popular_view");

  const getPopular = (tour_location, food_location, lodgment_location) => {
    fetch(
      `${rootPath}/football/get/${tour_location}/${food_location}/${lodgment_location}`
    )
      .then((res) => res.text())
      .then((result) => {
        div_pop_view.innerHTML = result;
      });
  };

  getPopular("1", "1", "1");

  div_menu?.addEventListener("click", (e) => {
    const button = e.target;
    if (button.tagName === "BUTTON") {
      const tour_location = button.dataset.tour_location;
      const food_location = button.dataset.food_location;
      const lodgment_location = button.dataset.lodgment_location;
      console.log(tour_location, food_location, lodgment_location);
      getPopular(tour_location, food_location, lodgment_location);
    }
  });
});
