% markdown to reveal.js
% 0x6d64
% 26.06.2021

# Summary
This is an example presentation based on (forked from):
https://github.com/13rac1/rjsmake

For more information see https://github.com/0x6d64/rjsmake

Press the <?> key to view available keyboard shortcuts

# Motivation
* "I like plain text + version control" --> use markdown
* "I like to have slides that I can show in a browser (=everywhere)" --> use reveal.js
* "But this is supposed to be easy, I can't install some software on any machine!" 
--> use Github Actions to have the option to build without installed tools
* Side benefit: your slides are published automatically.

# How to set up
* go to Github.com use the repo as a template
* edit index.md, push change
* any push on master will be deloyed in branch gh-pages
    * if needed, enable Github pages on that branch to view the deployed HTML

# Features
* Horizontal page: # Title
* Vertical page: ## Subtitle
* New Horizontal page w/o title: ----------
* Pause within horizontal page: . . .
* Images: \!\[Image Alt\]\(image/example.png\)
* Unordered lists
* Ordered lists
* Code samples with highlight.js

---------------------------
## Images

![just a kitten](img/kitten.jpg)

## Code Sample

```js
/*!
 * reveal.js
 * http://lab.hakim.se/reveal-js
 * MIT licensed
 *
 * Copyright (C) 2015 Hakim El Hattab, http://hakim.se
 */
(function( root, factory ) {
	if( typeof define === 'function' && define.amd ) {
		// AMD. Register as an anonymous module.
		define( function() {
			root.Reveal = factory();
			return root.Reveal;
		} );
	} else if( typeof exports === 'object' ) {
		// Node. Does not work with strict CommonJS.
		module.exports = factory();

```
## Speaker notes

Speaker notes: hidden notes that are visible when you press the S key.

Try pressing S now!

::: notes
These super secret speaker notes will only be visible in the speaker view...
It even can contain images!
![just a kitten](img/kitten.jpg)
:::

# The end

have fun!

(press the home key to jump to the first slide)
