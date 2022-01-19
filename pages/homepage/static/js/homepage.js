let imgs = [
    "pages/homepage/static/media/asian.PNG",
    "pages/homepage/static/media/beit_kandinof.PNG",
    "pages/homepage/static/media/wine.PNG",
    "pages/homepage/static/media/food.PNG",
    "pages/homepage/static/media/gaia_garden.png"
];
let i = 0;

function Motion(){
    setTimeout(function(){
        document.getElementById("images").src = imgs[i];
        i++;
        if(i<imgs.length){
            Motion();
        }
        else {
            i = 0;
        }
    }, 2000);
}
