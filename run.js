console.log('hello bitch');

init()

async function init() {
  console.log('initializing node..');
  await sleep(8000);
  console.log('exiting node..');
}

function sleep(ms) {
  return new Promise((resolve) => {
    setTimeout(resolve, ms);
  });
}   
