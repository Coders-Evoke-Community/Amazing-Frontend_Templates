const api_key = "b83b6d97910728992996ed16774a7ea6";

const city = document.getElementById("searchbar");
const searchButton = document.getElementById("searchImage");
const cityName = document.getElementById("cityName");
const mainDegree = document.getElementById("main_degree");
const kelvin = document.getElementById("kelvin");
const fare = document.getElementById("fare");
const currentWeather = document.getElementById("clouds");

const weatherIcons = [
  "icons8-cloud-100.png",
  "icons8-clouds-and-sun-100.png",
  "icons8-cloudy-day-100.png",
  "icons8-cloudy-day-1001.png",
  "icons8-haze-96.png",
  "icons8-rainy-day-100.png",
  "icons8-snow-96.png",
  "icons8-sun-star-96.png",
  "icons8-umbrella-with-rain-drops-96.png",
];

const sunny = document.getElementById("sunny");
const cloudy = document.getElementById("cloudy");
const rainy = document.getElementById("rain");
const snow = document.getElementById("snow");

searchButton.addEventListener("click", (tar) => {
  tar.preventDefault();
  if (city.value.length <= 0) {
    city.placeholder = "Enter a city name";
    return;
  }

  fetch(
    "https://api.openweathermap.org/data/2.5/weather?q=" +
      city.value +
      "&appid=" +
      api_key
  )
    .then((response) => response.json())
    .then((data) => {
      const degree = Math.ceil(data["main"]["temp"] - 272);
      mainDegree.innerText = String(degree + "\u00B0" + "C");

      const InKelvin = String(data["main"]["temp"]).slice(0, 3);
      kelvin.innerText = InKelvin + "\u00B0" + "K";

      const InFare = String(convertToFare(InKelvin)).slice(0, 2);
      fare.innerText = InFare + "\u00B0" + "F";

      cityName.innerText = city.value;
      city.classList.remove("red");

      // figuring the icon to show in harmony with the weather condition
      console.log(data["weather"][0].main);
      const currentSky = data["weather"][0].main;
      cityName.innerText = currentSky;

      if (data["weather"][0].main === "Clouds")
        currentWeather.setAttribute("src", "icons8-cloud-100.png");
      else if (currentSky === "Clear")
        currentWeather.setAttribute("src", "icons8-sun-star-96.png");
      else if (currentSky === "Rain")
        currentWeather.setAttribute(
          "src",
          "icons8-umbrella-with-rain-drops-96.png"
        );
      else if (currentSky === "Fog")
        currentWeather.setAttribute("src", "icons8-haze-96.png");
      else if (currentSky === "Snow")
        currentWeather.setAttribute("src", "icons8-snow-96.png");
      setRandomIcons();
    })
    .catch((error) => {
      if (error instanceof TypeError) {
        cityName.innerText = "Unknown City Name";
        city.value = "Internet Down !";
        city.classList.add("red");
      }
    });
});

function convertToFare(degree) {
  return ((degree - 273.15) * 9) / 5 + 32;
}
function randomIconSelector(min, max) {
  return Math.ceil(Math.random() * (max - min + 1) + min);
}
function setRandomIcons() {
  sunny.setAttribute(
    "src",
    weatherIcons[randomIconSelector(0, weatherIcons.length - 1)]
  );
  cloudy.setAttribute(
    "src",
    weatherIcons[randomIconSelector(0, weatherIcons.length - 1)]
  );
  rainy.setAttribute(
    "src",
    weatherIcons[randomIconSelector(0, weatherIcons.length - 1)]
  );
  snow.setAttribute(
    "src",
    weatherIcons[randomIconSelector(0, weatherIcons.length - 1)]
  );
}
