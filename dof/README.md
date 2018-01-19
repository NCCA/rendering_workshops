# Depth of Field Workshop
Selective blur is a widely used effect to enhance a region of a scene. In games,
this could mean a region about a gun sight, the region of pixel about a bright
light source, or motion blur.

For this workshop you'll implement a selective blur effect based on the distance
from a fragment depth to a desired focal depth, emulating (roughly) a depth of
field effect.

## In Detail
The current application displays the colour and depth buffers which have been
rendered to texture using a frame buffer object. These are available to the shader
dof_frag.glsl.

Within the fragment shader I have provided the coefficients for 5x5 and 9x9 single
pass Gaussian Blur (see lecture notes) along with the Poisson coefficients and a
function to produce a random value based on your current fragment position.

1) For the Gaussian blur you will need to compute the weighted sum of the surrounding
colour values from the colour texture. This will need to be scaled by the blurRadius
and the difference in depth of the fragment from the target focal depth when
retrieving the data from the colour map. Do this one first as it's easier.

2) For the Poisson blur you will need to use the 2d sample locations in the PoissonDisk
array to generate locations about your current fragment to sample texture values to
blend together. These can be weighted by the distance of each disk sample from the
center (0,0) or not. You'll find that this results in a blur that is too regular so
you can implement a 2D rotation matrix (based on the random value provided by rand())
to break up the regularity of the blur effect.

3) You can factorise these two blur methods as subroutines if you like to make your
code easier to read.

I've spared you the initialisation of the Frame Buffer object and texture to keep
the workshop manageable within 2 hours. However, I encourage you to investigate
the code more closely (in DofScene::initFBO()) as this will come in handy when tackling
more complex effects which require more than 2 render passes.

## References
Other helpful references:
* More on Gaussian blur: https://en.wikipedia.org/wiki/Gaussian_blur
* More on Poisson disk sampling: http://devmag.org.za/2009/05/03/poisson-disk-sampling/
* A more advanced version of DOF with bokeh: http://devlog-martinsh.blogspot.co.uk/2011/11/glsl-depth-of-field-with-bokeh-v21.html
* The GLM documentation: http://glm.g-truc.net/0.9.8/index.html
* The GLFW input guide: http://www.glfw.org/docs/latest/input_guide.html (and the rest of GLFW documentation of course)

## Credits
All material developed and written by Richard Southern.
Code references are made in the source code where appropriate.
