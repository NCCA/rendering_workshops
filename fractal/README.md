# Fractal Workshop
In this workshop you will work with shader functions and subroutines.

## In Detail
Fractals are widely used in generating psychadelic effects (see, for example,
https://www.fxguide.com/featured/dr-stranges-magical-mystery-tour-in-time/).

Fractals are basically recursive evaluations of complex numbers and have entertained
mathematicians with too much time on their hands for decades (see, for example,
https://en.wikipedia.org/wiki/Mandelbrot_set).

On GLSL however, we cannot execute functions recursively, so we're going to use the limited
iteration method implemented at this reference:
http://nuclear.mutantstargoat.com/articles/sdr_fract/

What I want you to do is integrate this implementation into the workshop, and implement
these in the form of shader selectable subroutines, to allow the user to select the
appropriate version of the function from the host side.

## Basic tasks
1) Implement a function for the Mandelbrot and Julia from
   http://nuclear.mutantstargoat.com/articles/sdr_fract/.
   Instead of using the texture command to get a smooth colour interpolation,
   I've provided a function
```
   vec3 Palette(float t)
```
   which will return a smoothly interpolated colour value which you can use.
   Note that you will have to manually choose which of these to use in the shader.
   For now, why not hard code the uniforms which are needed for each of the different
   fractal types (e.g. c, center, scale, iter).

2) Factorise the fractal functions to remove code duplication (there is a fair amount).

3) Implement fractal function subroutines for Mandelbrot and Julia. Intergrate this into
   the FractalScene class to provide a method to select the currently active fractal
   function. Refer to the OpenGL Wiki:
   https://www.khronos.org/opengl/wiki/Shader_Subroutine

## More Advanced stuff:
4) Render alternative objects (this should work with anything with texture coordinates)

5) Make this dynamic (for this, you'll have to look deeper into the example at
   http://nuclear.mutantstargoat.com/articles/sdr_fract/ for the seed used in the Julia
   fractal. For the Mandelbrot, I've used the self-similarity Mandelbrot parameters from
   https://en.wikipedia.org/wiki/Self-similarity - but you can do anything you like with
   the time parameter t which is available on the shader.

## References:
* The fractal implementation was borrowed from http://nuclear.mutantstargoat.com/articles/sdr_fract/
* The function to generate the pretty cosine colour palette was acquired from http://iquilezles.org/www/articles/palettes/palettes.htm
* The GLM documentation: http://glm.g-truc.net/0.9.8/index.html
* The GLFW input guide: http://www.glfw.org/docs/latest/input_guide.html (and the rest of GLFW documentation of course)

## Credits
All material, except those referenced in code or above, were developed and written by
Richard Southern.
