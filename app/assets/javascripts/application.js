//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .

var songsList = document.getElementById('songs-list');
document.onload = appendEmptySongsListMsg();

function initializeEventListeners() {
  var deleteButtons = document.getElementsByClassName('delete-button');

  for (var i = 0; i < deleteButtons.length; i++) {
    deleteButtons[i].addEventListener('click', deleteSong);
  }

  var deleteAllSongsButton = document.getElementById('delete-all');
  deleteAllSongsButton.addEventListener('click', deleteAllSongs);
}

initializeEventListeners();

function createSong(title, id) {
  var listItem = document.createElement('li');
  listItem.innerHTML = title;
  listItem.setAttribute('data-id', id);
  songsList.appendChild(listItem);

  var deleteButton = document.createElement('button');
  deleteButton.innerHTML = 'x';
  deleteButton.class = 'delete-button';
  listItem.appendChild(deleteButton);
  deleteButton.addEventListener('click', deleteSong);
}

function submitSong(event) {
  event.preventDefault();
  var inputField = document.getElementById('song-input');
  var songTitle = inputField.value;

  xhr = new XMLHttpRequest();
  xhr.open('POST', `/api/artists/${artistId}/songs`);
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  xhr.onload = function(data) {
    if (xhr.status !== 200) {
      alert('Could not create new song');
    } else {
      var songId = JSON.parse(data.currentTarget.response).song.id;
      createSong(songTitle, songId);
      inputField.value = null;
    }
  };

  xhr.send(encodeURI('name=' + songTitle));
}

function appendEmptySongsListMsg() {
  if ( songsList.innerHTML.trim() == "" ) {
    var emptyListMsg = document.createElement('p');
    emptyListMsg.id = 'empty-list';
    emptyListMsg.innerHTML = 'This artist has no songs yet';
    songsList.appendChild(emptyListMsg);
  }
}

function deleteAllSongs() {
  function removeSongsFromDOM() {
    songsList.innerHTML = "";
  }

  xhr = new XMLHttpRequest();
  xhr.open('DELETE', `/api/artists/${artistId}/songs`);
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  xhr.onload = function() {
    if (xhr.status !== 200) {
      alert('Could not delete songs');
    } else {
      removeSongsFromDOM();
      appendEmptySongsListMsg();
    }
  };

  xhr.send();
}

function deleteSong(event) {
  var listItem = event.target.parentElement;
  function removeSongFromDOM() {
    listItem.parentElement.removeChild(listItem);
    appendEmptySongsListMsg();
  }

  var songId = listItem.getAttribute('data-id');

  xhr = new XMLHttpRequest();
  xhr.open('DELETE', `/api/artists/${artistId}/songs/${songId}`);
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  xhr.onload = function() {
    if (xhr.status !== 200) {
      alert('Could not delete song');
    } else {
      removeSongFromDOM();
    }
  };

  xhr.send();
}
