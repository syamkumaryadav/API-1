<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Reels</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #111;
            color: white;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
        }

        .video-container {
            display: flex;
            overflow-x: auto;
            gap: 0;
            flex-wrap: nowrap;
            scroll-snap-type: x mandatory;
            justify-content: center;
            height: 100vh; /* Make the video container fill the entire viewport height */
            align-items: center; /* Center the video vertically */
        }

        .video-wrapper {
            min-width: 100vw; /* Each video will take full width of the screen */
            height: 100vh; /* Each video will take full height of the screen */
            position: relative;
            overflow: hidden;
            scroll-snap-align: start;
        }

        iframe {
            width: 100%;
            height: 100%;
            border: none;
            border-radius: 10px;
        }

        .play-overlay {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 24px;
            color: white;
            background-color: rgba(0, 0, 0, 0.6);
            padding: 10px;
            border-radius: 5px;
            display: block;
        }

    </style>
</head>
<body>

<h1>Scroll Through Video Reels</h1>

<div class="video-container">
    <%-- Dynamic video list from the server --%>
    <%
        // Example of video URLs from the database or list
        String[] videoUrls = {
           /*  "https://www.facebook.com/plugins/video.php?href=https://www.facebook.com/100049217304112/videos/1295576427630662/&show_text=0&width=200", 
            "https://www.facebook.com/plugins/video.php?href=https://www.facebook.com/100049217304112/videos/1295576427630662/&show_text=0&width=200",
            "https://www.facebook.com/plugins/video.php?href=https://www. facebook.com/100049217304112/videos/1295576427630662/&show_text=0&width=200"*/
        };
        for (String videoUrl : videoUrls) {
    %>
        <div class="video-wrapper">
            <!-- Embed external video using iframe -->
            <iframe src="<%= videoUrl %>" frameborder="0" allowfullscreen></iframe>
            <div class="play-overlay">Play</div>
        </div>
    <% } %>
</div>

<script>
    let currentIframe = null; // Track the current iframe element

    // Create an intersection observer to track which video is currently visible
    const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            const iframe = entry.target.querySelector('iframe');
            const overlay = entry.target.querySelector('.play-overlay');

            if (entry.isIntersecting) {
                // Video is in view, so start playing it
                if (iframe !== currentIframe) {
                    // Pause the previously playing video if there is one
                    if (currentIframe) {
                        currentIframe.src = currentIframe.src; // Reset the iframe to stop it
                    }
                    // Start the new video
                    iframe.src = iframe.src; // Reset the iframe source to play
                    overlay.style.display = 'none'; // Hide the overlay
                    currentIframe = iframe; // Update the current playing video
                }
            } else {
                // Video is out of view, so stop playing it
                if (iframe === currentIframe) {
                    iframe.src = iframe.src; // Reset the iframe to stop it
                    overlay.style.display = 'block'; // Show the overlay for the paused video
                }
            }
        });
    }, {
        threshold: 0.5 // Trigger when at least 50% of the video is in view
    });

    // Attach the observer to each video wrapper
    document.querySelectorAll('.video-wrapper').forEach(wrapper => {
        observer.observe(wrapper);
    });
</script>

</body>
</html>
