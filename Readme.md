# How to export

- Make a export for web in inky and save it in the "webexport folder"
- copy index.html, style.css (and erase the created files) from webcustom folder to webexport folder
- open main.js in webexport and comment the line 
```javascript
storyContainer.style.height = contentBottomEdgeY()+"px";
```