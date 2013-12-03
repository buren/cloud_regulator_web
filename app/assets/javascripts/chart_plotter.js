$(document).ready(function() {
  var _updateRate = 1000;

  var graph = Morris.Line({
      element: 'graph',
      data: [],
      xkey: 'x',
      ykeys: ['y', 'z', 'a'],
      labels: ['angle', 'position', 'latency'],
      xLabels: 'second',
      parseTime: false,
      hideHover: true,
      fillOpacity: 0,
      pointSize: 0
  });

  var req = 0;
  function update() {
    $.getJSON('/live_cycles?req=' + req, function(jsonData) {
      graph.setData(jsonData);
    });
    req++;
  }
  setInterval(update, _updateRate);


  // Only allow numeric input
  $('.numeric').keypress(function(e) {
    var a = [];
    var k = e.which;
    for (i = 48; i < 58; i++)
      a.push(i);
    a.push(46);
    if (!($.inArray(k,a)>=0))
      e.preventDefault();
  });


});
