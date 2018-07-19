// window.SetTimeout(() => {
//   alert('HAMMERTIME');
// }, 5000);

//Run above in console


function hammerTime(time) {
  window.setTimeout(() => {
    alert(`${time} is hammertime!`);
  }, time);
};
