const setupVideoDates = () => {
  const startCallButton = document.querySelector(".btn-start-call")
  if (startCallButton) {
    const interval = startCallButton.dataset.callDuration || 30 
    console.log(`interval: ${interval}seconds`)
      setTimeout(function () {
        console.log("about to reload")
        location.reload();
      }, interval*1000);
  }
}

export {setupVideoDates}