document.addEventListener("DOMContentLoaded", function(){

  // const canvas = document.getElementById("mycanvas");
  const canvas = $("[id='mycanvas']")[0];

  // console.log(canvas[0]); 
  canvas.width = 500;
  canvas.height = 500;


  //creates the actual interface for drawing on the cavas 
  const ctx = canvas.getContext('2d');
  
  //draw a rectangle 
  ctx.fillStyle = 'red';
  //          x-axis, yaxis, width, height
  ctx.fillRect(0,0, 500, 500);

  //drawing a circle 
  ctx.beginPath();

  ctx.arc(250,250, 40, 0, 2*Math.PI, true);
  ctx.strokeStyle = 'magenta';
  ctx.lineWidth = 160;
  ctx.stroke();

  ctx.fillStyle = 'lavender';
  ctx.fill();




});
