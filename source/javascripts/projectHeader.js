// var projectHeader = function () {
//   jQuery("#responsive_headline").fitText(1.1);
//
//   var height = document.getElementById("project-header").offsetHeight;
//   document.getElementById("project-content").style.marginTop = (height + 65) + 'px';
// };

var projectHeader = function () {
  if (document.documentElement.clientWidth > 767) {
    jQuery("#responsive_headline").fitText(1.1);
  } else {
    jQuery("#responsive_headline").fitText(.6);
  }

  var height = document.getElementById("project-header").offsetHeight;
  document.getElementById("project-content").style.marginTop = (height + 65) + 'px';
};
