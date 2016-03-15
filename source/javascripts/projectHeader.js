var projectHeader = function () {
  jQuery("#responsive_headline").fitText(1);

  var height = document.getElementById("project-header").offsetHeight;
  document.getElementById("project-content").style.marginTop = (height + 10) + 'px';
};

$(document).ready(projectHeader);
$(window).resize(projectHeader);
