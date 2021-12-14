const skew = document.querySelector(".skewed");
window.addEventListener('scroll', function(){
    let value = -10 + window.scrollY/20;
    if (value > 0) value = 0;
    skew.style.transform = `skewY(${value}deg)`;
});
