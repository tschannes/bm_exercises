var img = document.getElementsByTagName('img')[0];
img.style.left = '0px';
img.style.top = '0px'
img.src = "http://www.anniemation.com/clip_art/images/cat-walk.gif";

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
  else if (currentLeft > ((window.innerWidth-img.width)/2)){
  	img.src = "http://25.media.tumblr.com/tumblr_mceqnpuyz11rgb4bxo1_500.gif";
  	img.style.left = ((window.innerWidth-img.width)/2);
	img.style.height = ((window.innerHeight-img.width)/2);
  }
}
window.setInterval(catWalk, 100);

