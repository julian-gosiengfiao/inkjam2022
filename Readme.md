# How to export

- Make a export for web in inky and save it in the "webexport folder"
- copy index.html, style.css (and erase the created files) from webcustom folder to webexport folder
- open main.js in webexport and replace the line 
```javascript
    var storyContainer = document.querySelector('#story');
```
by 
```javascript
    var storyContainer = document.querySelector('#story');
    // Extend height to fit
    setInterval(() => {
        var needToScroll = (storyContainer.style.height !== contentBottomEdgeY()+"px");
        storyContainer.style.height = contentBottomEdgeY()+"px";
        if (needToScroll){
            scrollDown(contentBottomEdgeY());
        }
    }, 500)
```


1366 x 768
(html window viewport size)