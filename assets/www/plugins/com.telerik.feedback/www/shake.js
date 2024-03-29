cordova.define("com.telerik.feedback.shake", function(require, exports, module) {
var Shake = module.exports = function () {
    //feature detect
    this.hasDeviceMotion = 'ondevicemotion' in window;

    //default velocity threshold for shake to register
    this.threshold = 10;

    //use date to prevent multiple shakes firing
    this.lastTime = new Date();

    //accelerometer values
    this.lastX = null;
    this.lastY = null;
    this.lastZ = null;

    //create custom event
    if (typeof document.CustomEvent === "function") {
        this.event = new document.CustomEvent(
            'shake', {                
                bubbles: true,
                cancelable: true
            });
    } else if (typeof document.createEvent === "function") {
        this.event = document.createEvent('Event');
        this.event.initEvent('shake', true, true);
    } else {
        return false;
    }
};

Shake.prototype = {
    //reset timer values
    reset: function () {
        this.lastTime = new Date();
        this.lastX = null;
        this.lastY = null;
        this.lastZ = null;
    },
    
    //start listening for devicemotion
    start: function () {
        this.reset();
        if (this.hasDeviceMotion) {
            window.addEventListener('devicemotion', this, false);
        }
    },
    
    //stop listening for devicemotion
    stop: function () {
        if (this.hasDeviceMotion) {
            window.removeEventListener('devicemotion', this, false);
        }
        this.reset();
    },
    
    //calculates if shake did occur
    devicemotion: function (e) {
        var current = e.accelerationIncludingGravity,
            currentTime,
            timeDifference,
            deltaX = 0,
            deltaY = 0,
            deltaZ = 0;

        if ((this.lastX === null) && (this.lastY === null) && (this.lastZ === null)) {
            this.lastX = current.x;
            this.lastY = current.y;
            this.lastZ = current.z;
            return;
        }

        deltaX = Math.abs(this.lastX - current.x);
        deltaY = Math.abs(this.lastY - current.y);
        deltaZ = Math.abs(this.lastZ - current.z);

        if (((deltaX > this.threshold) && (deltaY > this.threshold)) || ((deltaX > this.threshold) && (deltaZ > this.threshold)) || ((deltaY > this.threshold) && (deltaZ > this.threshold))) {
            //calculate time in milliseconds since last shake registered
            currentTime = new Date();
            timeDifference = currentTime.getTime() - this.lastTime.getTime();
            
            if (timeDifference > 1000) {
                window.dispatchEvent(this.event);
                this.lastTime = new Date();
            }
        }

        this.lastX = current.x;
        this.lastY = current.y;
        this.lastZ = current.z;
    },
    
    //event handler
    handleEvent: function (e) {
        if (typeof (this[e.type]) === 'function') {
            return this[e.type](e);
        }
    }
};
});
