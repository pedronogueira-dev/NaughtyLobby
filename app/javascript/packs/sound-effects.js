const excellentHandler = () => {
  document.querySelectorAll(".service-btn").forEach((button) => {
    console.log("added sound effect listenner")
    button.addEventListener("click", (event) => {
      debugger;
      const audio = new Audio('../../assets/audio/excellent.wav');
      audio.play();
      wait(20000);
    });
  });
};


export { excellentHandler };
