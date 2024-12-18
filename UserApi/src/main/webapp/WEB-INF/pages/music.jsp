<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Music Player</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f9;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .container {
      text-align: center;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      padding: 20px;
      width: 300px;
    }

    audio {
      width: 100%;
    }

    .controls {
      margin-top: 10px;
    }

    button {
      padding: 10px;
      margin: 5px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    button:hover {
      background-color: #45a049;
    }

    img {
      width: 100%;
      border-radius: 10px;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>

  <div class="container">
    <h1>Music Player</h1>
    <img id="albumCover" src="https://via.placeholder.com/300x300.png?text=Album+Cover" alt="Album Cover">
    <div class="music-player">
      <audio id="audioPlayer" controls>
        <source src="https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3" type="audio/mp3">
      </audio>
      <div class="controls">
        <button onclick="playPause()">Play/Pause</button>
        <button onclick="muteUnmute()">Mute/Unmute</button>
        <button onclick="changeMusic(1)">Change to Music 1</button>
        <button onclick="changeMusic(2)">Change to Music 2</button>
        <button onclick="changeMusic(3)">Change to Music 3</button>
      </div>
    </div>
  </div>

  <script>
    const audio = document.getElementById('audioPlayer');
    const albumCover = document.getElementById('albumCover');
    function playPause() {
      if (audio.paused) {
        audio.play();
      } else {
        audio.pause();
      }
    }
    function muteUnmute() {
      audio.muted = !audio.muted;
    }
    function changeMusic(track) {
      let newMusic, newCover;
      if (track === 1) {
        newMusic = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3";
        newCover = "https://via.placeholder.com/300x300.png?text=Album+Cover+1";
      } else if (track === 2) {
        newMusic = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3";
        newCover = "https://via.placeholder.com/300x300.png?text=Album+Cover+2";
      } else if (track === 3) {
        newMusic = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3";
        newCover = "https://via.placeholder.com/300x300.png?text=Album+Cover+3";
      }
      audio.src = newMusic;
      albumCover.src = newCover;
      audio.load();
      audio.play();
    }
  </script>

</body>
</html>
