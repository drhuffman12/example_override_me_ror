# Welcome!

This cronut acceptance widget is embeded in sites around the world as an iFrame. It's been hugefully successful but lately many users have wanted to use their own **cronuts** and **donuts** URL instead of the default ones used in the checkbox label.

Your task is to 
- [x] Allow `cronuts_url` and/or `donuts_url` query string parameters.
- [x] If either are included in the widget URL (this page), the default link it represents should be overwritten with the value supplied.

For example, if I supplied `http://localhost:3000?cronuts_url=https://google.com` then the **cronuts** link in the label below would lead to `https://google.com` instead of `https://upload.wikimedia.org/wikipedia/commons/8/8b/April_2016_Cronut%C2%AE_2_Burnt_Vanilla_Caramel_-_photo_by_Dominique_Ansel_Bakery.jpg` and the **donuts** link would remain unchanged from its default.

While you're at it, lets also make use of Rails I18n for the label text.

## Guidelines

- [x] Your solution must use Rails I18n for the label text
- [ ] Use Git and commit as often as you think is necessary to properly tell your story
- [x] Write tests using RSpec proving that your solution works (TDD strongly encouraged)
* Use whatever tools you'd like (gems, patterns, etc)
* Engineer your solution as if there's a high chance it will be re-used in other widgets
* Feel free to create new directories, classes, modules, etc...
- [ ] Keep lines wrapped at 120 characters
* Enjoy this odd challenge!

## What we're looking for

- [ ] Coding style (tidyness & legibility)
- [ ] Abstractions
- [x] Testing practices
- [x] Security awareness
- [ ] Commit journey

## How to submit

- [ ] Submit your results

2 options:

1. Upload to a public git repository on GitHub
1. Zip the entire project, including the .git folder

Finally email us with your link or zip file.

## Cronut acceptance widget

<div style="border: 1px solid black; padding: 1.5em;">
  By selecting this checkbox, you agree that <a href="https://upload.wikimedia.org/wikipedia/commons/8/8b/April_2016_Cronut%C2%AE_2_Burnt_Vanilla_Caramel_-_photo_by_Dominique_Ansel_Bakery.jpg">cronuts</a> are better than <a href="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Glazed-Donut.jpg/250px-Glazed-Donut.jpg">donuts</a>
  <input type="checkbox">
</div>
