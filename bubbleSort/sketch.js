console.log('HELLO');

var values = [];
const h = 360;
const w = 900;
var i = 0;
var j = 0;

function setup(){
    
    // createCanvas(windowWidth, windowHeight);
    createCanvas(w, h);
    values = new Array(w);
    for(i = 0; i < w; i++ ){
        values[i] = random(h);
    }
}


function draw(){
    background(40);

    if( i < values.length){
        for(j = 0; j< values.length - i - 1; j++){
            let a = values[j];
            let b = values[j + i];
            if(a > b){
                swap(values, j, j +1);
            }
        }
    } else {
        console.log('fertig');
        noLoop();
    }
    i++;

    for(i = 0; i < values.length; i++){
        stroke(255,155,0);
        line(i, h, i,  h - values[i]);
    }
}

function swap(arr, a, b){
    let temp = arr[a];
    arr[a] = arr[b];
    arr[b] = temp;
}