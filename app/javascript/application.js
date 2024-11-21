// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"
// Initialization for ES Users
// import { Ripple, initMDB } from "mdb-ui-kit";

// initMDB({ Ripple });
document.addEventListener("DOMContentLoaded", function() {
  var firstImage = document.querySelector('.image-gallery img:first-child'); // Select the first image
  var mapContainer = document.querySelector('.map-container'); // Select the map container

  if (firstImage && mapContainer) {
    function setMapHeight() {
      var imageHeight = firstImage.offsetHeight; // Get the height of the first image
      mapContainer.style.height = imageHeight + 'px'; // Set the map's height to the image height
    }

    // Set the initial map height when the page is loaded
    setMapHeight();

    // Adjust map height on window resize to keep it responsive
    window.addEventListener('resize', function() {
      setMapHeight();
    });
  }
});
