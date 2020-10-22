# Card - check out the **[demo](https://demching.github.io/card)**

> This is a modified version of jessepollak's [card](https://github.com/jessepollak/card). You can find the differences [here](#updates).

### A better credit card form in one line of code

Card will take *any* credit card form and make it the best part of the checkout process (without you changing anything). Everything is created with pure CSS, HTML, and Javascript — no images required.

![card](http://i.imgur.com/qG3TenO.gif)

## Updates

Here list the modified parts from the original repo:

### CSS

Fixed and modified some CSS that were broken in the original repo: American Express, Discover, Elo, Troy and Visa. 

You can compare the difference from [original](https://jessepollak.github.io/card) and [updated](https://demching.github.io/card).

### Card Types

Add some card types: Forbrugsforeningen, Hiper (Similar to Hipercard), InstaPayment, Laser, mada, Mir, RuPay and UATP.

The card formats are collected from the internet. It is not guaranteed that they are correct.

### Expiry Validation

Original version only check if the date is equal or larger than current month. This repo allows you to limit the year range simailar to what some payment provider do.

Specify `maxYear` in the config to reject cards with expiry year larger than `currentYear + maxYear`.

```javascript
var card = new Card({
    maxYear: 30, // For 2020, the maximum accepted expiry year would be 2050.
})
```

### Node Dependency

To add new feature, modification of the dependency is required. So I removed the Node module `payment` (also the git submodule) and clone the main script to `src/coffee/payment.coffee`.

## Usage (without jQuery)

To use, you'll need to include the Card JavaScript files into your HTML, no CSS link is necessary as the JavaScript file does this for you. You can find the necessary file at `/dist/card.js` and include it in your HTML like so.

```html
<!-- at the end of BODY -->
<!-- CSS is included via this JavaScript file -->
<script src="/path/to/card.js"></script>
```

Once you've included those files, you can initialize Card.

```javascript
var card = new Card({
    // a selector or DOM element for the form where users will
    // be entering their information
    form: 'form', // *required*
    // a selector or DOM element for the container
    // where you want the card to appear
    container: '.card-wrapper', // *required*

    formSelectors: {
        numberInput: 'input#number', // optional — default input[name="number"]
        expiryInput: 'input#expiry', // optional — default input[name="expiry"]
        cvcInput: 'input#cvc', // optional — default input[name="cvc"]
        nameInput: 'input#name' // optional - defaults input[name="name"]
    },

    width: 200, // optional — default 350px
    formatting: true, // optional - default true

    // Strings for translation - optional
    messages: {
        validDate: 'valid\ndate', // optional - default 'valid\nthru'
        monthYear: 'mm/yyyy', // optional - default 'month/year'
    },

    // Default placeholders for rendered fields - optional
    placeholders: {
        number: '•••• •••• •••• ••••',
        name: 'Full Name',
        expiry: '••/••',
        cvc: '•••'
    },

    masks: {
        cardNumber: '•' // optional - mask card number
    },

    maxYear: 10, // optional - maximum expiry year from now, default -1 (no limit)

    // if true, will log helpful messages for setting up Card
    debug: false // optional - default false
});
```
### Installing card from bower

If you're using bower, you can install card.js with:

    bower install card --save

### Installing card from npm

If you're using npm, you can install card.js with:

    npm install --save card

	var $ = require("jquery");
    // The current card.js code does not explicitly require jQuery, but instead uses the global, so this line is needed.
    window.jQuery = $;
    var card = require("card");

### Using multiple inputs for one field

Card can be used in forms where you have multiple inputs that render to a single field (i.e. you have a first and last name input). To use Card with this functionality, just pass in a selector that selects the fields in the correct order. For example,

```html
<html>
<body>
<div class='card-wrapper'></div>
<!-- CSS is included via this JavaScript file -->
<script src="/path/to/card.js"></script>
<form>
    <input type="text" name="number">
    <input type="text" name="first-name"/>
    <input type="text" name="last-name"/>
    <input type="text" name="expiry"/>
    <input type="text" name="cvc"/>
</form>
<script>
var card = new Card({
    form: 'form',
    container: '.card-wrapper',

    formSelectors: {
        nameInput: 'input[name="first-name"], input[name="last-name"]'
    }
});
</script>
</body>
</html>
```

### Rendering with different initial card placeholders

Card renders with default placeholders for card `name`, `number`, `expiry`, and `cvc`. To override these placeholders, you can pass in a `placeholders` object.

```html
<html>
<body>
<div class='card-wrapper'></div>
<!-- CSS is included via this JavaScript file -->
<script src="/path/to/card.js"></script>
<form>
    <input type="text" name="number">
    <input type="text" name="name"/>
    <input type="text" name="expiry"/>
    <input type="text" name="cvc"/>
</form>
<script>

var card = new Card({
    form: 'form',
    container: '.card-wrapper',

    placeholders: {
        number: '**** **** **** ****',
        name: 'Arya Stark',
        expiry: '**/****',
        cvc: '***'
    }
});
</script>
</body>
</html>
```

### Translation

To render the card with the strings in a different language, you can pass in a `messages` object.

```html
<html>
<body>
<div class='card-wrapper'></div>
<!-- CSS is included via this JavaScript file -->
<script src="/path/to/card.js"></script>
<form>
    <input type="text" name="number">
    <input type="text" name="name"/>
    <input type="text" name="expiry"/>
    <input type="text" name="cvc"/>
</form>
<script>

var card = new Card({
    form: 'form',
    container: '.card-wrapper',

    messages: {
        validDate: 'expire\ndate',
        monthYear: 'mm/yy'
    }
});
</script>
</body>
</html>
```

## Using with jQuery

To use with jQuery, you'll need to include the `jquery.card.js` file into your HTML. You can find the necessary file at `/dist/jquery.card.js` and include it in your HTML like so.

```html
<!-- at the end of BODY -->
<!-- CSS is included via this JavaScript file -->
<script src="/path/to/jquery.card.js"></script>
```

Once you've included those files, you can initialize Card with jQuery.

```javascript
$('form').card({
    // a selector or DOM element for the container
    // where you want the card to appear
    container: '.card-wrapper', // *required*

    // all of the other options from above
});

```
## Using with other javascript libraries

Card has wrappers that make it easy to use with other javascript libraries but they only support the original repo.

You may want to check the related libraries [here](https://github.com/jessepollak/card#using-with-other-javascript-libraries) from the original repo.

## Development

To contribute, follow this steps:

```bash
$ git clone --recursive https://github.com/DemChing/card.git
$ cd card
$ git submodule init && git submodule update
$ npm install
$ npm run development
```

Now, if you go to localhost:8080/example in your browser, you should see the demo page.

## Donations

You may want to support the developer [jessepollak](https://github.com/jessepollak) that made the foundation of this repository.

His donation detail are located [here](https://github.com/jessepollak/card#donations).

Or You can buy me a coffee:

<a href="https://www.buymeacoffee.com/demching" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-red.png" alt="Buy Me A Coffee" style="height: 51px !important;width: 217px !important;" ></a>