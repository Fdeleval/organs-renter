const toggleMapList = () => {

  const maplink = document.getElementById('maplink');
  const listlink = document.getElementById('listlink');
  const map = document.getElementById('map');
  const cards = document.querySelector('.cards');

  maplink.addEventListener("click", (event) => {
    // Do something (callback)
    event.preventDefault();
    
    // add / remove the class .active
    event.currentTarget.classList.add("active");
    listlink.classList.remove("active");

    // add / remove the class .hide
    map.classList.remove("hide");
    cards.classList.add("hide");
  });

  listlink.addEventListener("click", (event) => {
    // Do something (callback)
    event.preventDefault();

    // add / remove the class .active
    event.currentTarget.classList.add("active");
    maplink.classList.remove("active");

    // add / remove the class .hide
    map.classList.add("hide");
    cards.classList.remove("hide");
  });
};

export { toggleMapList };