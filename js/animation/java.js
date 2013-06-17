var img = document.getElementsByTagName('img')[0];
img.style.left = '0px';
img.style.top = '0px'
function catWalk() {
  var currentLeft = parseInt(img.style.left);
  var currentTop = parseInt(img.style.top);
  img.style.left = (currentLeft + 10) + 'px';
  img.style.top = (currentTop +5) + 'px';
  if (currentLeft > (window.innerWidth-img.width)) {
    img.style.left = '0px';
  }
  else if (currentTop > (window.innerHeight-img.height)){
  	img.style.top ='0px';
  }
}
window.setInterval(catWalk, 100);