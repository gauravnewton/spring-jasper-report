<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}


/**
    HoldOn Css
**/
#holdon-overlay{filter:alpha(opacity=80);position:fixed;width:100%;height:100%;left:0;top:0;bottom:0;right:0;background:#000;opacity:.8;z-index:9999}#holdon-content-container{width:100%;padding:0;vertical-align:middle;display:table-cell!important;margin:0;text-align:center}#holdon-content{text-align:center;width:50px;height:57px;position:absolute;top:50%;left:50%;margin:-28px 0 0 -25px}#holdon-message{width:100%;text-align:center;position:absolute;top:55%;color:white}.sk-rect{width:50px;height:40px;text-align:center;font-size:10px}.sk-rect>div{background-color:#333;height:100%;width:6px;display:inline-block;-webkit-animation:sk-rect-anim 1.2s infinite ease-in-out;animation:sk-rect-anim 1.2s infinite ease-in-out}.sk-rect .rect2{-webkit-animation-delay:-1.1s;animation-delay:-1.1s}.sk-rect .rect3{-webkit-animation-delay:-1.0s;animation-delay:-1.0s}.sk-rect .rect4{-webkit-animation-delay:-0.9s;animation-delay:-0.9s}.sk-rect .rect5{-webkit-animation-delay:-0.8s;animation-delay:-0.8s}@-webkit-keyframes sk-rect-anim{0%,40%,100%{-webkit-transform:scaleY(0.4)}20%{-webkit-transform:scaleY(1.0)}}@keyframes sk-rect-anim{0%,40%,100%{transform:scaleY(0.4);-webkit-transform:scaleY(0.4)}20%{transform:scaleY(1.0);-webkit-transform:scaleY(1.0)}}.sk-cube{width:50px;height:40px;text-align:center;font-size:10px}.sk-cube1,.sk-cube2{background-color:#333;width:15px;height:15px;position:absolute;top:0;left:0;-webkit-animation:sk-cube 1.8s infinite ease-in-out;animation:sk-cube 1.8s infinite ease-in-out}.sk-cube2{-webkit-animation-delay:-0.9s;animation-delay:-0.9s}@-webkit-keyframes sk-cube{25%{-webkit-transform:translateX(42px) rotate(-90deg) scale(0.5)}50%{-webkit-transform:translateX(42px) translateY(42px) rotate(-180deg)}75%{-webkit-transform:translateX(0px) translateY(42px) rotate(-270deg) scale(0.5)}100%{-webkit-transform:rotate(-360deg)}}@keyframes sk-cube{25%{transform:translateX(42px) rotate(-90deg) scale(0.5);-webkit-transform:translateX(42px) rotate(-90deg) scale(0.5)}50%{transform:translateX(42px) translateY(42px) rotate(-179deg);-webkit-transform:translateX(42px) translateY(42px) rotate(-179deg)}50.1%{transform:translateX(42px) translateY(42px) rotate(-180deg);-webkit-transform:translateX(42px) translateY(42px) rotate(-180deg)}75%{transform:translateX(0px) translateY(42px) rotate(-270deg) scale(0.5);-webkit-transform:translateX(0px) translateY(42px) rotate(-270deg) scale(0.5)}100%{transform:rotate(-360deg);-webkit-transform:rotate(-360deg)}}.sk-dot{width:50px;height:40px;text-align:center;font-size:10px;-webkit-animation:sk-dot-rotate 2.0s infinite linear;animation:sk-dot-rotate 2.0s infinite linear}.sk-dot1,.sk-dot2{width:60%;height:60%;display:inline-block;position:absolute;top:0;background-color:#333;border-radius:100%;-webkit-animation:sk-dot-bounce 2.0s infinite ease-in-out;animation:sk-dot-bounce 2.0s infinite ease-in-out}.sk-dot2{top:auto;bottom:0;-webkit-animation-delay:-1.0s;animation-delay:-1.0s}@-webkit-keyframes sk-dot-rotate{100%{-webkit-transform:rotate(360deg)}}@keyframes sk-dot-rotate{100%{transform:rotate(360deg);-webkit-transform:rotate(360deg)}}@-webkit-keyframes sk-dot-bounce{0%,100%{-webkit-transform:scale(0.0)}50%{-webkit-transform:scale(1.0)}}@keyframes sk-dot-bounce{0%,100%{transform:scale(0.0);-webkit-transform:scale(0.0)}50%{transform:scale(1.0);-webkit-transform:scale(1.0)}}.sk-bounce{width:60px;height:40px;text-align:center;font-size:10px}.sk-bounce>div{width:18px;height:18px;background-color:#333;border-radius:100%;display:inline-block;-webkit-animation:sk-bouncedelay 1.4s infinite ease-in-out both;animation:sk-bouncedelay 1.4s infinite ease-in-out both}.sk-bounce .bounce1{-webkit-animation-delay:-0.32s;animation-delay:-0.32s}.sk-bounce .bounce2{-webkit-animation-delay:-0.16s;animation-delay:-0.16s}@-webkit-keyframes sk-bouncedelay{0%,80%,100%{-webkit-transform:scale(0)}40%{-webkit-transform:scale(1.0)}}@keyframes sk-bouncedelay{0%,80%,100%{-webkit-transform:scale(0);transform:scale(0)}40%{-webkit-transform:scale(1.0);transform:scale(1.0)}}.sk-circle{width:60px;height:40px;text-align:center;font-size:10px}.sk-circle .sk-child{width:100%;height:100%;position:absolute;left:0;top:0}.sk-circle .sk-child:before{content:'';display:block;margin:0 auto;width:15%;height:15%;background-color:#333;border-radius:100%;-webkit-animation:sk-circleBounceDelay 1.2s infinite ease-in-out both;animation:sk-circleBounceDelay 1.2s infinite ease-in-out both}.sk-circle .sk-circle2{-webkit-transform:rotate(30deg);-ms-transform:rotate(30deg);transform:rotate(30deg)}.sk-circle .sk-circle3{-webkit-transform:rotate(60deg);-ms-transform:rotate(60deg);transform:rotate(60deg)}.sk-circle .sk-circle4{-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg)}.sk-circle .sk-circle5{-webkit-transform:rotate(120deg);-ms-transform:rotate(120deg);transform:rotate(120deg)}.sk-circle .sk-circle6{-webkit-transform:rotate(150deg);-ms-transform:rotate(150deg);transform:rotate(150deg)}.sk-circle .sk-circle7{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}.sk-circle .sk-circle8{-webkit-transform:rotate(210deg);-ms-transform:rotate(210deg);transform:rotate(210deg)}.sk-circle .sk-circle9{-webkit-transform:rotate(240deg);-ms-transform:rotate(240deg);transform:rotate(240deg)}.sk-circle .sk-circle10{-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg)}.sk-circle .sk-circle11{-webkit-transform:rotate(300deg);-ms-transform:rotate(300deg);transform:rotate(300deg)}.sk-circle .sk-circle12{-webkit-transform:rotate(330deg);-ms-transform:rotate(330deg);transform:rotate(330deg)}.sk-circle .sk-circle2:before{-webkit-animation-delay:-1.1s;animation-delay:-1.1s}.sk-circle .sk-circle3:before{-webkit-animation-delay:-1s;animation-delay:-1s}.sk-circle .sk-circle4:before{-webkit-animation-delay:-0.9s;animation-delay:-0.9s}.sk-circle .sk-circle5:before{-webkit-animation-delay:-0.8s;animation-delay:-0.8s}.sk-circle .sk-circle6:before{-webkit-animation-delay:-0.7s;animation-delay:-0.7s}.sk-circle .sk-circle7:before{-webkit-animation-delay:-0.6s;animation-delay:-0.6s}.sk-circle .sk-circle8:before{-webkit-animation-delay:-0.5s;animation-delay:-0.5s}.sk-circle .sk-circle9:before{-webkit-animation-delay:-0.4s;animation-delay:-0.4s}.sk-circle .sk-circle10:before{-webkit-animation-delay:-0.3s;animation-delay:-0.3s}.sk-circle .sk-circle11:before{-webkit-animation-delay:-0.2s;animation-delay:-0.2s}.sk-circle .sk-circle12:before{-webkit-animation-delay:-0.1s;animation-delay:-0.1s}@-webkit-keyframes sk-circleBounceDelay{0%,80%,100%{-webkit-transform:scale(0);transform:scale(0)}40%{-webkit-transform:scale(1);transform:scale(1)}}@keyframes sk-circleBounceDelay{0%,80%,100%{-webkit-transform:scale(0);transform:scale(0)}40%{-webkit-transform:scale(1);transform:scale(1)}}.sk-cube-grid{width:60px;height:60px;text-align:center;font-size:10px}.sk-cube-grid .sk-cube-child{width:33%;height:33%;background-color:#333;float:left;-webkit-animation:sk-cubeGridScaleDelay 1.3s infinite ease-in-out;animation:sk-cubeGridScaleDelay 1.3s infinite ease-in-out}.sk-cube-grid .sk-cube-grid1{-webkit-animation-delay:.2s;animation-delay:.2s}.sk-cube-grid .sk-cube-grid2{-webkit-animation-delay:.3s;animation-delay:.3s}.sk-cube-grid .sk-cube-grid3{-webkit-animation-delay:.4s;animation-delay:.4s}.sk-cube-grid .sk-cube-grid4{-webkit-animation-delay:.1s;animation-delay:.1s}.sk-cube-grid .sk-cube-grid5{-webkit-animation-delay:.2s;animation-delay:.2s}.sk-cube-grid .sk-cube-grid6{-webkit-animation-delay:.3s;animation-delay:.3s}.sk-cube-grid .sk-cube-grid7{-webkit-animation-delay:0s;animation-delay:0s}.sk-cube-grid .sk-cube-grid8{-webkit-animation-delay:.1s;animation-delay:.1s}.sk-cube-grid .sk-cube-grid9{-webkit-animation-delay:.2s;animation-delay:.2s}@-webkit-keyframes sk-cubeGridScaleDelay{0%,70%,100%{-webkit-transform:scale3D(1,1,1);transform:scale3D(1,1,1)}35%{-webkit-transform:scale3D(0,0,1);transform:scale3D(0,0,1)}}@keyframes sk-cubeGridScaleDelay{0%,70%,100%{-webkit-transform:scale3D(1,1,1);transform:scale3D(1,1,1)}35%{-webkit-transform:scale3D(0,0,1);transform:scale3D(0,0,1)}}.sk-folding-cube{margin:20px auto;width:40px;height:40px;position:relative;-webkit-transform:rotateZ(45deg);transform:rotateZ(45deg)}.sk-folding-cube .sk-cube-parent{float:left;width:50%;height:50%;position:relative;-webkit-transform:scale(1.1);-ms-transform:scale(1.1);transform:scale(1.1)}.sk-folding-cube .sk-cube-parent:before{content:'';position:absolute;top:0;left:0;width:100%;height:100%;background-color:#333;-webkit-animation:sk-foldCubeAngle 2.4s infinite linear both;animation:sk-foldCubeAngle 2.4s infinite linear both;-webkit-transform-origin:100% 100%;-ms-transform-origin:100% 100%;transform-origin:100% 100%}.sk-folding-cube .sk-cubechild2{-webkit-transform:scale(1.1) rotateZ(90deg);transform:scale(1.1) rotateZ(90deg)}.sk-folding-cube .sk-cubechild3{-webkit-transform:scale(1.1) rotateZ(180deg);transform:scale(1.1) rotateZ(180deg)}.sk-folding-cube .sk-cubechild4{-webkit-transform:scale(1.1) rotateZ(270deg);transform:scale(1.1) rotateZ(270deg)}.sk-folding-cube .sk-cubechild2:before{-webkit-animation-delay:.3s;animation-delay:.3s}.sk-folding-cube .sk-cubechild3:before{-webkit-animation-delay:.6s;animation-delay:.6s}.sk-folding-cube .sk-cubechild4:before{-webkit-animation-delay:.9s;animation-delay:.9s}@-webkit-keyframes sk-foldCubeAngle{0%,10%{-webkit-transform:perspective(140px) rotateX(-180deg);transform:perspective(140px) rotateX(-180deg);opacity:0}25%,75%{-webkit-transform:perspective(140px) rotateX(0deg);transform:perspective(140px) rotateX(0deg);opacity:1}90%,100%{-webkit-transform:perspective(140px) rotateY(180deg);transform:perspective(140px) rotateY(180deg);opacity:0}}@keyframes sk-foldCubeAngle{0%,10%{-webkit-transform:perspective(140px) rotateX(-180deg);transform:perspective(140px) rotateX(-180deg);opacity:0}25%,75%{-webkit-transform:perspective(140px) rotateX(0deg);transform:perspective(140px) rotateX(0deg);opacity:1}90%,100%{-webkit-transform:perspective(140px) rotateY(180deg);transform:perspective(140px) rotateY(180deg);opacity:0}}.sk-fading-circle{width:50px;height:40px;text-align:center;font-size:10px}.sk-fading-circle .sk-circle-child{width:100%;height:100%;position:absolute;left:0;top:0}.sk-fading-circle .sk-circle-child:before{content:'';display:block;margin:0 auto;width:15%;height:15%;background-color:#333;border-radius:100%;-webkit-animation:sk-circleFadeDelay 1.2s infinite ease-in-out both;animation:sk-circleFadeDelay 1.2s infinite ease-in-out both}.sk-fading-circle .sk-fading-circle2{-webkit-transform:rotate(30deg);-ms-transform:rotate(30deg);transform:rotate(30deg)}.sk-fading-circle .sk-fading-circle3{-webkit-transform:rotate(60deg);-ms-transform:rotate(60deg);transform:rotate(60deg)}.sk-fading-circle .sk-fading-circle4{-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg)}.sk-fading-circle .sk-fading-circle5{-webkit-transform:rotate(120deg);-ms-transform:rotate(120deg);transform:rotate(120deg)}.sk-fading-circle .sk-fading-circle6{-webkit-transform:rotate(150deg);-ms-transform:rotate(150deg);transform:rotate(150deg)}.sk-fading-circle .sk-fading-circle7{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}.sk-fading-circle .sk-fading-circle8{-webkit-transform:rotate(210deg);-ms-transform:rotate(210deg);transform:rotate(210deg)}.sk-fading-circle .sk-fading-circle9{-webkit-transform:rotate(240deg);-ms-transform:rotate(240deg);transform:rotate(240deg)}.sk-fading-circle .sk-fading-circle10{-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg)}.sk-fading-circle .sk-fading-circle11{-webkit-transform:rotate(300deg);-ms-transform:rotate(300deg);transform:rotate(300deg)}.sk-fading-circle .sk-fading-circle12{-webkit-transform:rotate(330deg);-ms-transform:rotate(330deg);transform:rotate(330deg)}.sk-fading-circle .sk-fading-circle2:before{-webkit-animation-delay:-1.1s;animation-delay:-1.1s}.sk-fading-circle .sk-fading-circle3:before{-webkit-animation-delay:-1s;animation-delay:-1s}.sk-fading-circle .sk-fading-circle4:before{-webkit-animation-delay:-0.9s;animation-delay:-0.9s}.sk-fading-circle .sk-fading-circle5:before{-webkit-animation-delay:-0.8s;animation-delay:-0.8s}.sk-fading-circle .sk-fading-circle6:before{-webkit-animation-delay:-0.7s;animation-delay:-0.7s}.sk-fading-circle .sk-fading-circle7:before{-webkit-animation-delay:-0.6s;animation-delay:-0.6s}.sk-fading-circle .sk-fading-circle8:before{-webkit-animation-delay:-0.5s;animation-delay:-0.5s}.sk-fading-circle .sk-fading-circle9:before{-webkit-animation-delay:-0.4s;animation-delay:-0.4s}.sk-fading-circle .sk-fading-circle10:before{-webkit-animation-delay:-0.3s;animation-delay:-0.3s}.sk-fading-circle .sk-fading-circle11:before{-webkit-animation-delay:-0.2s;animation-delay:-0.2s}.sk-fading-circle .sk-fading-circle12:before{-webkit-animation-delay:-0.1s;animation-delay:-0.1s}@-webkit-keyframes sk-fading-circleFadeDelay{0%,39%,100%{opacity:0}40%{opacity:1}}@keyframes sk-circleFadeDelay{0%,39%,100%{opacity:0}40%{opacity:1}}
</style>

<script>
/**
    HoldOn Js
**/

(function(b){function a(){if("undefined"==typeof jQuery){throw new Error("HoldOn.js requires jQuery")}var c={};c.open=function(e){$("#holdon-overlay").remove();var h="sk-rect";var g="";var f="";if(e){if(e.hasOwnProperty("theme")){h=e.theme}if(e.hasOwnProperty("message")){f=e.message}}switch(h){case"custom":g='<div style="text-align: center;">'+e.content+"</div>";break;case"sk-dot":g='<div class="sk-dot"> <div class="sk-dot1"></div> <div class="sk-dot2"></div> </div>';break;case"sk-rect":g='<div class="sk-rect"> <div class="rect1"></div> <div class="rect2"></div> <div class="rect3"></div> <div class="rect4"></div> <div class="rect5"></div> </div>';break;case"sk-cube":g='<div class="sk-cube"> <div class="sk-cube1"></div> <div class="sk-cube2"></div> </div>';break;case"sk-bounce":g='<div class="sk-bounce"> <div class="bounce1"></div> <div class="bounce2"></div> <div class="bounce3"></div> </div>';break;case"sk-circle":g='<div class="sk-circle"> <div class="sk-circle1 sk-child"></div> <div class="sk-circle2 sk-child"></div> <div class="sk-circle3 sk-child"></div> <div class="sk-circle4 sk-child"></div> <div class="sk-circle5 sk-child"></div> <div class="sk-circle6 sk-child"></div> <div class="sk-circle7 sk-child"></div> <div class="sk-circle8 sk-child"></div> <div class="sk-circle9 sk-child"></div> <div class="sk-circle10 sk-child"></div> <div class="sk-circle11 sk-child"></div> <div class="sk-circle12 sk-child"></div> </div>';break;case"sk-cube-grid":g='<div class="sk-cube-grid"> <div class="sk-cube-child sk-cube-grid1"></div> <div class="sk-cube-child sk-cube-grid2"></div> <div class="sk-cube-child sk-cube-grid3"></div> <div class="sk-cube-child sk-cube-grid4"></div> <div class="sk-cube-child sk-cube-grid5"></div> <div class="sk-cube-child sk-cube-grid6"></div> <div class="sk-cube-child sk-cube-grid7"></div> <div class="sk-cube-child sk-cube-grid8"></div> <div class="sk-cube-child sk-cube-grid9"></div> </div>';break;case"sk-folding-cube":g='<div class="sk-folding-cube"> <div class="sk-cubechild1 sk-cube-parent"></div> <div class="sk-cubechild2 sk-cube-parent"></div> <div class="sk-cubechild4 sk-cube-parent"></div> <div class="sk-cubechild3 sk-cube-parent"></div> </div>';break;case"sk-fading-circle":g='<div class="sk-fading-circle"> <div class="sk-fading-circle1 sk-circle-child"></div> <div class="sk-fading-circle2 sk-circle-child"></div> <div class="sk-fading-circle3 sk-circle-child"></div> <div class="sk-fading-circle4 sk-circle-child"></div> <div class="sk-fading-circle5 sk-circle-child"></div> <div class="sk-fading-circle6 sk-circle-child"></div> <div class="sk-fading-circle7 sk-circle-child"></div> <div class="sk-fading-circle8 sk-circle-child"></div> <div class="sk-fading-circle9 sk-circle-child"></div> <div class="sk-fading-circle10 sk-circle-child"></div> <div class="sk-fading-circle11 sk-circle-child"></div> <div class="sk-fading-circle12 sk-circle-child"></div> </div>';break;default:g='<div class="sk-rect"> <div class="rect1"></div> <div class="rect2"></div> <div class="rect3"></div> <div class="rect4"></div> <div class="rect5"></div> </div>';console.warn(h+" doesn't exist for HoldOn.js");break}var d='<div id="holdon-overlay" style="display: none;">\n                                    <div id="holdon-content-container">\n                                        <div id="holdon-content">'+g+'</div>\n                                        <div id="holdon-message">'+f+"</div>\n                                    </div>\n                                </div>";$(d).appendTo("body").fadeIn(300);if(e){if(e.backgroundColor){$("#holdon-overlay").css("backgroundColor",e.backgroundColor)}if(e.backgroundColor){$("#holdon-message").css("color",e.textColor)}}};c.close=function(){$("#holdon-overlay").fadeOut(300,function(){$(this).remove()})};return c}if(typeof(HoldOn)==="undefined"){b.HoldOn=a()}})(window);

</script>
</head>
<body>

<div class="topnav" id="myTopnav">
  <a href="#home" class="active">Home</a>
  <a href="https://www.linkedin.com/in/gaurav-kumar-a3a840a9/" target="_blank"><i class="fa fa-linkedin-square"> </i> LinkedIn</a>
  <a href="https://github.com/gauravnewton" target="_blank"><i class="fa fa-github-square "> </i> Github</a>
  <a href="https://www.upwork.com/freelancers/~018e42e3e4c2fbcb5c" target="_blank"> <i class="fa fa-user"> </i> Upwork </a>
  <a href="https://www.facebook.com/gauravmute" target="_blank"> <i class=" fa fa-facebook-square"> </i> Facebook </a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<div style="padding-left:16px">
  <h2>Jasper Report Example</h2>
  <p>Choose report type from the below drop down.</p>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3">
            <select name="reportType" id="reportType" class="form-control">
                <option value="html">HTML</option>
                <option value="pdf">PDF</option>
            </select>
        </div>

        <div class="col-sm-3">
            <button class="btn btn-primary" id="downloadReport">Download Report &nbsp; <i class="fa fa-download"></i></button>
        </div>
    </div>
</div>

<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}

$('#downloadReport').on('click', function() {debugger
    var options = {
        theme:"sk-rect",
        message:'Hold On !! Generating report...',
        textColor:"white"
    };
    HoldOn.open(options);
    exportJasperReport($('#reportType').val());
});

var exportJasperReport = function (reportFormat) {
    $.ajax({
        type: "GET",
        url: "/report/"+ reportFormat,
        timeout: 100000,
        xhrFields: {
            responseType: 'blob'
        },
        success: function(blob, status, xhr) {
            var filename = "";
            var disposition = xhr.getResponseHeader('Content-Disposition');
            if (disposition && disposition.indexOf('attachment') !== -1) {
                var filenameRegex = /filename[^;=\n]*=((['"]).*?\2|[^;\n]*)/;
                var matches = filenameRegex.exec(disposition);
                if (matches != null && matches[1]) filename = matches[1].replace(/['"]/g, '');
            }
            if (typeof window.navigator.msSaveBlob !== 'undefined') {
                // IE workaround for "HTML7007: One or more blob URLs were revoked by closing the blob for which they were created. These URLs will no longer resolve as the data backing the URL has been freed."
                window.navigator.msSaveBlob(blob, filename);
            } else {
                var URL = window.URL || window.webkitURL;
                var downloadUrl = URL.createObjectURL(blob);
                if (filename) {
                    // use HTML5 a[download] attribute to specify filename
                    var a = document.createElement("a");
                    // safari doesn't support this yet
                    if (typeof a.download === 'undefined') {
                        window.location.href = downloadUrl;
                    } else {
                        a.href = downloadUrl;
                        a.download = filename;
                        document.body.appendChild(a);
                        a.click();
                    }
                } else {
                    window.location.href = downloadUrl;
                }
                setTimeout(function () { URL.revokeObjectURL(downloadUrl); }, 100); // cleanup
                HoldOn.close();
            }
        }
    });
}


</script>

</body>
</html>
