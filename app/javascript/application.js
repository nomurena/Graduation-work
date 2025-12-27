// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("turbo:load", () => {
  const mainImage = document.querySelector(".main-post-image");
  const subImages = document.querySelectorAll(".sub-post-image");

  if (!mainImage) return;

  subImages.forEach((img) => {
    img.addEventListener("click", () => {
      mainImage.src = img.src;
    });
  });
});