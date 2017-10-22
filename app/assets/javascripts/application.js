//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .

function createSong(title) {
  var songsList = document.getElementById('songs-list');
  var listItem = document.createElement("li");
  listItem.innerHTML = title;
  var deleteButton = document.createElement("button");
  deleteButton.innerHTML = "x";
  deleteButton.class = "delete-button";
  songsList.appendChild(listItem);
  listItem.appendChild(deleteButton);
}

function submitSong(event) {
  event.preventDefault();
  var inputField = document.getElementById('song-input');
  var songTitle = inputField.value;

  xhr = new XMLHttpRequest();
  xhr.open('POST', `/api/artists/${artistId}/songs`);
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  xhr.onload = function() {
    if (xhr.status !== 200) {
      alert('Could not create new song');
    } else {
      createSong(songTitle);
      inputField.value = null;
    }
  };

  xhr.send(encodeURI('name=' + songTitle));
}
