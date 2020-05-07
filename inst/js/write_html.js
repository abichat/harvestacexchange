// Use node ≥ 13, and install playwright `npm install playwright`, and then just do `node write_html.js`

const { chromium } = require("playwright");
const fs = require("fs");

const paths = process.argv.slice(2);

const waitFor = (ms) => {
  return new Promise((resolve) => {
    setTimeout(resolve, ms);
  });
};

(async () => {
  const browser = await chromium.launch();
  const context = await browser.newContext();
  const page = await context.newPage();
  await page.goto(paths[0]);
  await waitFor(5000);
  const content = await page.evaluate(() => {
    return document.body.innerHTML;
  });

  fs.writeFileSync(paths[1], content);

  await browser.close();
})();
