let string = `Lorem, ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus magnam quas, eos ipsum amet laudantium vero, reprehenderit sapiente dicta voluptatum est nam. Ipsam, eum voluptatum! Veniam hic labore, ullam quas possimus eaque enim, illo dolores, perspiciatis optio in et nam asperiores similique ipsa. Commodi vel nemo atque molestias eius quibusdam dolorem est totam neque? Rem corporis repudiandae praesentium alias similique, ut aut eos, sequi explicabo quos ad quae debitis. Dignissimos optio vero laboriosam aspernatur distinctio totam recusandae aliquam explicabo. Doloremque nulla, suscipit repellendus repellat illo ex mollitia, modi, deserunt eligendi distinctio perferendis? Expedita eum nam, quia commodi eveniet debitis beatae.`;
            let str="";
            function sleep(ms) {
              return new Promise((resolve) => setTimeout(resolve, ms));
            }
async function insert(){ 
    for (let index = 0; index < string.length; index++) {
    let element = string[index];
    let textnode = document.createTextNode(element);
    document.getElementById("para").appendChild(textnode);
    await sleep(75)
}}
insert();

let cardelem = document.getElementsByClassName("card-effect");
console.log(cardelem);
let element=new Array(cardelem.length);
for (let index = 0; index < cardelem.length; index++) {
  element[index] = cardelem[index];
  console.log(element[index]);
}
element[0].addEventListener("mouseover", function () {
  element[0].classList.add("card-elem-style");
  element[0].addEventListener("mouseout", () => {
    element[0].classList.remove("card-elem-style");
  });
});
element[1].addEventListener("mouseover", function () {
  element[1].classList.add("card-elem-style");
  element[1].addEventListener("mouseout", () => {
    element[1].classList.remove("card-elem-style");
  });
});
element[2].addEventListener("mouseover", function () {
  element[2].classList.add("card-elem-style");
  element[2].addEventListener("mouseout", () => {
    element[2].classList.remove("card-elem-style");
  });
});

