document.addEventListener("DOMContentLoaded", function(){
  let canvas = document.getElementById('mycanvas');

  canvas.width = 500;
  canvas.height = 500;

  let ctx = canvas.getContext('2d');

  // ctx.fillStyle = 'red';
  // ctx.fillRect(0, 0, 500, 500);

  // ctx.beginPath();
  // ctx.arc(250, 250, 200, 0, 2 * Math.PI);
  //
  // ctx.strokeStyle = 'red';
  // ctx.lineWidth = 10;
  // ctx.stroke();
  //
  // ctx.fillStyle = 'green';
  // ctx.fill();

  ctx.beginPath();
  //kite outline
  ctx.moveTo(250, 100);
  ctx.lineTo(400, 200);
  ctx.lineTo(250, 450);
  ctx.lineTo(100, 200);
  ctx.lineTo(250, 100);

  //horizontal line
  ctx.moveTo(400, 200);
  ctx.lineTo(100, 200);

  //vertical line
  ctx.moveTo(250, 100);
  ctx.lineTo(250, 450);

  ctx.strokeStyle = 'red';
  ctx.lineWidth = 3;
  ctx.stroke();

});
