//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .

var grid = new Grid({
  element: '#photos',
  columns: 6,
  margin: 2
});

window.addEventListener('load', function() {
  grid.items[0].spanX = 3;
  grid.items[0].spanY = 2;
  grid.items[5].spanX = 2;
  grid.items[5].spanY = 3;
  grid.draw();
}, false);
