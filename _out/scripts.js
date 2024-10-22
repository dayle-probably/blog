// generate line numbers for code blocks
// ignore the last empty line
(function() {

  const START_LINE = 0;

  var pre = document.getElementsByTagName('pre'),
      pl = pre.length;
  for (var i = 0; i < pl; i++) {
      pre[i].innerHTML = '<span class="line-number"></span>' + pre[i].innerHTML + '<span class="cl"></span>';
      var num = pre[i].innerHTML.split(/\n/).length - 1; // Exclude the last empty line
      for (var j = 0; j < num; j++) {
          var line_num = pre[i].getElementsByTagName('span')[0];
          line_num.innerHTML += '<span>' + (j + START_LINE) + '</span>';
      }
  }
})();
