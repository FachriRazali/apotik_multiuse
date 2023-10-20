<!DOCTYPE html>
<html>
<head>
    <title>My App | Halaman Utama</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<button class="button"> Lights Off</button>
<title> Muhammad Fachri XI PPLG 1</title>
 <div class="video-container">
   
    <video width="1200" height="800" controls>
        <source src="Conversation 4 copy.mp4" type="video/mp4">
    </video>
</div>
<div class="overlay"></div>

<style>
        .video-container {
            position: relative;
            z-index: 999;
        }

        .overlay {
            position: fixed;
            inset: 0;
            z-index: 998;
            background-color: rgba(0, 0, 0, 0.95);
            display: none;
        }
</style>

<script>
    const buttonEl = document.querySelector('.button');
        const overlayEl = document.querySelector('.overlay');

        const turnOn = () => {
            overlayEl.style.display = 'block';
        };

        buttonEl.addEventListener('click', turnOn);

        const turnOff = (e) => {
            if (e.target.matches('.overlay')) overlayEl.style.display = 'none';
        };

        window.addEventListener('click', turnOff);

</script>
</html>
