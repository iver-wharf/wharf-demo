# Wharf Demo

## Run locally via Docker

```sh
docker build -t wharf-demo .
docker run --rm -itp 8080:80 wharf-demo
```

Then visit <http://localhost:8080>

## Suggested demo changes

### Add in coolest wharfing saxophone player

```diff
diff --git a/index.html b/index.html
index 2d9eb19..1862cfa 100644
--- a/index.html
+++ b/index.html
@@ -61,6 +61,7 @@
       <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
         <div class="col-md-5 p-lg-5 mx-auto my-5">
           <h1 class="display-4 fw-normal">Wharf Demo</h1>
+          <img src="docs/wharf.gif"/>
           <p class="lead fw-normal">Just for demo purposes. This site is not operational in any way.</p>
           <a class="btn btn-outline-secondary" href="#">This button does nothing</a>
         </div>
```

### Add the Iver logo

```diff
diff --git a/index.html b/index.html
index 2d9eb19..1862cfa 100644
--- a/index.html
+++ b/index.html
@@ -61,6 +61,7 @@
       <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
         <div class="col-md-5 p-lg-5 mx-auto my-5">
           <h1 class="display-4 fw-normal">Wharf Demo</h1>
+          <!-- Generator: Adobe Illustrator 23.0.2, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
+          <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
+               viewBox="0 0 347.7 379" style="enable-background:new 0 0 347.7 379; width: 20em; margin: 1em;" xml:space="preserve">
+          <style type="text/css">
+            .st0{fill:#000;}
+          </style>
+          <title>I_S_Neg_RGB</title>
+          <g>
+            <polygon class="st0" points="0,251.1 0,379 347.7,271.9 347.7,144 	"/>
+            <polygon class="st0" points="245.5,47.2 150.2,0 150.1,128.3 245.5,175.5 	"/>
+          </g>
+          </svg>
           <p class="lead fw-normal">Just for demo purposes. This site is not operational in any way.</p>
           <a class="btn btn-outline-secondary" href="#">This button does nothing</a>
         </div>
```

## Sources

- `index.html` and the files from `docs/5.0/*` are taken from Bootstrap example:
  <https://getbootstrap.com/docs/5.0/examples/product/>

- `wharf.gif` is taken from Giphy:
  <https://giphy.com/gifs/seal-qt7bBGJ8x7ZRu>
