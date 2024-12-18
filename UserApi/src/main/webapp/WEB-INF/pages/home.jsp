<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Profile Slide-in</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .mydiv {
            display: flex;
            width: 100%;
            margin-top: 30px;
        }

        #margin {
            margin-left: 10px;
            width: 100%;
        }
        a {
            gap: 300px;
        }
        .section {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin: 20px 0;
        }

        .section img {
            width: 200px;
            height: 200px;
            object-fit: cover;
            margin: 10px;
            border-radius: 8px;
            cursor: pointer;  /* Make the image clickable */
        }

        .section h2 {
            width: 100%;
            text-align: center;
            margin-bottom: 10px;
        }
        .section img:hover {
            opacity: 0.8;
        }
    </style>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=account_circle" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body class="container">
    ${login}
    <div class="mydiv nav">
        <div>
            <nav class="nav nav-pills nav-fill nav-item">
                <a href="#" class="nav-link active">Home</a>
                <a href="shopping" class="nav-link">Shopping</a>
                <a href="music" class="nav-link">Music</a>
                <a href="reels" class="nav-link">Reels</a>
                <a href="#" class="nav-link">About</a>
                <a href="#" class="nav-link">Contact</a>
                <nav class="navbar bg-body-tertiary">
                    <div class="container-fluid">
                        <form class="d-flex" role="search">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success" type="submit">Search</button>
                        </form>
                    </div>
                </nav>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="viewProfile?email=${email}" class="nav-link" id="profileLink">
                    <span class="material-symbols-outlined" style="width: 78px; height: 48px">account_circle</span>
                </a>
            </nav>
        </div>
    </div>

    <!-- Shopping Section with image click functionality -->
    <div class="section">
        <h2><a href="shopping">Shopping</a></h2>
        <img src="https://m.media-amazon.com/images/I/71V5gEc8YVL._SY741_.jpg" alt="Shopping 1" onclick="swapImage(this, 'https://m.media-amazon.com/images/I/71yKeV+0wLL._SY741_.jpg')">
        <img src="https://m.media-amazon.com/images/I/41GX3Cso8SL._SX300_SY300_QL70_FMwebp_.jpg" alt="Shopping 2" onclick="swapImage(this, 'https://m.media-amazon.com/images/I/71Dl9vGJYKL._SX679_.jpg')">
        <img src="https://m.media-amazon.com/images/I/41fCDR6pjpL._SX300_SY300_QL70_FMwebp_.jpg" alt="Shopping 3" onclick="swapImage(this, 'https://m.media-amazon.com/images/I/71tMPWYWRqL._SX569_.jpg')">
        <img src="https://m.media-amazon.com/images/I/61giwQtR1qL._SX679_.jpg" alt="Shopping 4" onclick="swapImage(this, 'https://m.media-amazon.com/images/I/71ta3jyFvIL._SX679_.jpg')">
    </div>
    <div class="section">
        <h2><a href="">Music</a></h2>
        <img src="https://via.placeholder.com/200" alt="Music 1" onclick="swapImage(this, 'https://via.placeholder.com/200/ff0000')">
        <img src="https://via.placeholder.com/200" alt="Music 2" onclick="swapImage(this, 'https://via.placeholder.com/200/00ff00')">
        <img src="https://via.placeholder.com/200" alt="Music 3" onclick="swapImage(this, 'https://via.placeholder.com/200/0000ff')">
    </div>

	<div class="section">
		<h2><a href="reels">Reels</a></h2>
		<video width="200" controls
			onclick="swapVideo(this, 'https://www.w3schools.com/html/movie.mp4')">
			<source src="https://www.w3schools.com/html/movie.mp4"
				type="video/mp4">
		</video>

		<video width="200" controls
			onclick="swapVideo(this, 'https://www.w3schools.com/html/movie.mp4')">
			<source src="https://www.w3schools.com/html/movie.mp4"
				type="video/mp4">
		</video>

		<iframe
			src="https://www.facebook.com/plugins/video.php?href=https://www.facebook.com/100049217304112/videos/1295576427630662/&show_text=0&width=200"
			width="200" height="200" frameborder="0"
			allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"
			allowfullscreen> </iframe>

	</div>


	<script>
        
        function swapImage(imgElement, newSrc) {
            imgElement.src = newSrc;
        }
        
        function swapVideo(videoElement, videoUrl) {
            
            const source = videoElement.querySelector('source');
            source.src = videoUrl;
            videoElement.load();  
            videoElement.play(); 
          }
        
    </script>

</body>
</html>
