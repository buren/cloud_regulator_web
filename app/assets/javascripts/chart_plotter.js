var graph = Morris.Line({
    element: 'graph',
    data: [],
    xkey: 'x',
    ykeys: ['y', 'z', 'a'],
    labels: ['angle', 'position', 'latency'],
    parseTime: false,
    hideHover: true
});
function update() {
  $.getJSON('/live_cycles', function(jsonData) {
    graph.setData(jsonData);
  });
}
setInterval(update, 300);
