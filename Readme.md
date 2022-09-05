# How to export

- Make a export for web in inky and save it in the "webexport folder"
- copy index.html, style.css (and erase the created files) from webcustom folder to webexport folder
- open main.js in webexport and replace the line 
```javascript
storyContainer.style.height = contentBottomEdgeY()+"px";
```
by 
```javascript
        setInterval(() => {
            storyContainer.style.height = contentBottomEdgeY()+"px";
        }, 2000)
```


1366 x 768
(html window viewport size)