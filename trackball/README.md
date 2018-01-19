# Trackball Workshop
The goal of this workshop is to implement some form of mouse / keyboard interaction with
the scene. This aligns with the material covered in lectures (and other units) to date 
covering transformation matrices.

As you've not covered much in lectures as yet this workshop can be seen as a gentle introduction
to the boilerplate code which I've provided which you will be expected to use to implement your
assignments.

## In Detail
In the code I've provided the Camera class is separated from the Scene and main.cpp to function
independently. It's role is to accept the inputs from the main application and convert these into
view and projection matrices which are transfered to the Scene via the main() function.

The camera which is currently in use isn't very interesting - it is simply a fixed camera from
a specified eye location and with a given target. You need to inherit a new class from Camera
and implement any of the useful functions provided to create some interesting interactions. These
could include:
* A simple mouse trackball which determines roll from yaw separately from the change in mouse x,y coordinates (which I have provided for the rest of the workshops)
* A full Arcball implementation (difficult) - see https://www.khronos.org/opengl/wiki/Object_Mouse_Trackball
* A first person camera implementation, which handles the keys W,A,S and D and will need
to lock the mouse into the view using the appropriate GLFW call. A useful looking reference is available here http://in2gpu.com/2016/02/26/opengl-fps-camera/ (although many more are out there).

The functions which the Camera class provides which you may want to inherit from are:
```c++
    /// Call this before you need to retrieve the matrices from the camera
    virtual void update() = 0;

    /// Handle keypress / release events
    virtual void handleKey(int /*glfw key*/, bool /*isPress*/) {}

    /// Mouse movement handler to look around
    virtual void handleMouseMove(double /*mouseX*/, double /*mouseY*/) {}

    /// Mouse click handler
    virtual void handleMouseClick(double /*mouseX*/, double /*mouseY*/, int /*glfw button*/, int /*glfw action*/, int /*glfw mods*/) {}
```
You might want to look at FixedCamera as it provides an implementation of the update() function which you may find useful.

## References
Other code references which will be essential:
* The GLM documentation: http://glm.g-truc.net/0.9.8/index.html
* The GLFW input guide: http://www.glfw.org/docs/latest/input_guide.html (and the rest of GLFW documentation of course)

## Credits
All material developed and written by Richard Southern, with some assistance from Jon Macey.
Code references are made in the source code where appropriate.

