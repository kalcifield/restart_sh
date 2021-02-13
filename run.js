console.log('hello bitch');

init()

async function init() {
  console.log('initializing node..');
  await sleep(1000);
  // throw new Error('hiba!');
  process.exit(43);
  console.log('exiting node..');
}

function sleep(ms) {
  return new Promise((resolve) => {
    setTimeout(resolve, ms);
  });
}   
