
// Import filesystem namespace
import { init, filesystem } from "@neutralinojs/lib"


console.log("before incit");
init();
console.log("after init");

filesystem.readDirectory('./').then((data) => {
    console.log(data)
  }).catch((err) => {
    console.log(err)
  })
// init(); // Add this function call
console.log("does thiiis woccrkss?"); 