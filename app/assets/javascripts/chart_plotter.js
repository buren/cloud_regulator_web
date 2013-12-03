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
