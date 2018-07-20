
var eagleImage = new Image();
eagleImage.src = "flight4.png";
var eagle;
var canvas;
$(document).on('turbolinks:load', function() {
    canvas = document.getElementById("eagleAnimation");
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;

    eagle = sprite({
        context: canvas.getContext("2d"),
        <!-- width: 569, -->
        width: 5703,
        height: 1062,
        image: eagleImage,
        numberOfFrames: 10,
        ticksPerFrame: 4
    });
});

function gameLoop () {
    if (animationStop == false){
    window.requestAnimationFrame(gameLoop);
    eagle.update();
    eagle.render();      }
}

function sprite (options) {

    var that = {},
        frameIndex = 0,
        tickCount = 0,
        ticksPerFrame = options.ticksPerFrame || 0,
        numberOfFrames = options.numberOfFrames || 1;

    that.context = options.context;
    that.width = options.width;
    that.height = options.height;
    that.image = options.image;
    that.loop = options.loop;

    var eagleWidth = (that.width/numberOfFrames),
        flying = 0;

    that.update = function () {

        tickCount += 1;
        if (flying>= canvas.width) {
            flying = -eagleWidth;
        }

        if (tickCount > ticksPerFrame) {

            tickCount = 0;
            flying+=10;

            // If the current frame index is in range
            if (frameIndex < numberOfFrames - 1) {
                // Go to the next frame
                frameIndex += 1;
                <!-- } else if (that.loop) { -->
            } else {
                frameIndex = 0;
            }
        }
    };

    that.render = function () {

        // Clear the canvas
        that.context.clearRect(0, 0, that.width, that.height);

        // Draw the animation
        that.context.drawImage(
            that.image,
            frameIndex * that.width / numberOfFrames,
            0,
            that.width / numberOfFrames,
            that.height,
            flying,
            0,
            eagleWidth,
            (that.height));
    };


    return that;
}

function run(){
    gameLoop();
}