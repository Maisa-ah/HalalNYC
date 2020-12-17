//variable to traverse array of images
var img =0;

//array of images
var halal = ["./images/mansaf.jpg", 
"./images/fries.jpg", 
"./images/PeriPeri-southAfrican.png", 
"./images/uncleNick's-turkey.jpeg", 
"./images/uzbek.png", 
"./images/mashawy.jpg", 
"./images/shawarma2.jpg", 
"./images/sesame-chicken.jpg", 
"./images/Farine-American.png", 
"./images/knafeh-palestinian.jpg"];
console.log(img);


var toAdd = document.createDocumentFragment();

//function gets next image in array
function Next() {
  //traverse
  img++;
  console.log(img);

  //if end reached, get first element in array
  //ex: if img = 4, end is reached so get img=0
  if(img == halal.length){
    img = 0;
  }
  document.getElementById("food-img").src = halal[img];

}

//function gets previous image in array
function Back() {
  //if first image, get last image
  if(img == 0){
    img = halal.length -1;
  }
  else{
    img--;
  }
  console.log(img);
  document.getElementById("food-img").src = halal[img];

}
