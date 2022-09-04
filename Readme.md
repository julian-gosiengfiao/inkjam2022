# How to export

- Make a export for web in inky and save it in the "webexport folder"
- copy index.html, style.css (and erase the created files) from webcustom folder to webexport folder
- open main.js in webexport and replace the line 
```javascript
storyContainer.style.height = contentBottomEdgeY()+"px";
```
by 
```javascript
        // Wrapping in a timer function to allow images to load before calculating & scrolling to the bottom of the page 
        setTimeout(() => { 
            // Extend height to fit 
            // We do this manually so that removing elements and creating new ones doesn't 
            // cause the height (and therefore scroll) to jump backwards temporarily. 
            storyContainer.style.height = contentBottomEdgeY()+"px"; if( !firstTime ) scrollDown(previousBottomEdge); 
        }, 700);
```
