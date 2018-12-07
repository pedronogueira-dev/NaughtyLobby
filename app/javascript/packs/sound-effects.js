const excellentHandler = () => {
  document.querySelectorAll(".service-btn").forEach((button) => {
    console.log("added sound effect listenner")
    button.addEventListener("click", (event) => {
      event.preventDefault();
      //debugger;
      //const audio = new Audio('../../assets/audios/excellent.wav');
      //audio.play();
      document.getElementById("excellent").play();
      setTimeout(() => {event.target.parentElement.submit();}, 1000);

    });
  });
};

const excellentVoteHandler = () => {
  document.querySelectorAll(".service-vote-btn").forEach((button) => {
    console.log("added sound effect listenner")
    button.addEventListener("click", (event) => {
      event.preventDefault();
      //debugger;
      //const audio = new Audio('../../assets/audios/excellent.wav');
      //audio.play();
      document.getElementById("excellent").play();
      setTimeout(() => {event.target.parentNode.childNodes[7].childNodes[1].submit();}, 1000);

    });
  });
};

const firedHandler = () => {
  document.querySelectorAll(".fire-btn").forEach((button) => {
    console.log("added sound effect listenner")
    button.addEventListener("click", (event) => {
      event.preventDefault();
      //debugger;
      //const audio = new Audio('../../assets/audios/excellent.wav');
      //audio.play();
      document.getElementById("fire").play();
      setTimeout(() => {event.target.parentElement.submit();}, 1000);

    });
  });
};

export { excellentHandler, excellentVoteHandler, firedHandler };
