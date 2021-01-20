

//time out is asynchronous as i can still interact with 
//the website while waiting for the alert. 
// window.setTimeout(() => {
//   alert('HAMMERTIME');
// }, 2000);


function hammerTime(time){

    window.setTimeout( ()=> {
      alert(`${time} is hammertime!`);
    }, time);
}

