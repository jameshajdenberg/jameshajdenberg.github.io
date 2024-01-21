const navigateButton = document.getElementById('navigateButton');

navigateButton.addEventListener('click', function() {
    window.location.href = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ';
});

const archiePic = document.querySelector("img[src='images/IMG_9204.jpg']");

archiePic.addEventListener('click', () => {
    alert("Archie wants cheese!");
});

const friendsPic = document.querySelector("img[src='images/IMG_8745.JPG']");

friendsPic.addEventListener('click', () => {
    alert("I wonder what these distinguished gentlemen could be discussing...");
});