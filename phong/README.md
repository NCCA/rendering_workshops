# Phong Shading Workshop
The goal of this workshop is to implement different types of shaders. The 
primary goal is to implement a Phong Shader with per-pixel lighting. The
secondary goal is to extend this to support Toon shading. 

## In Detail
In the code I've provided the Gouraud shader, which is the per-vertex shading
model. This is included in the project in two shader files:

- gouraud_vert.glsl: Vertex shader (where lighting calculations are done)
- gouraud_frag.glsl: Fragment shader (just outputs the interpolated colour)

In order to implement per pixel lighting, you will need to transfer the 
variables for specifying lighting and material properties as well as the
functions for calculating the light colour from the vertex shader into the
fragment shader. 

This means that instead of interpolating the light colour property during
rasterization, you will need to interpolate the geometric properties which
determine the shader behaviour, such as the vertex position and vertex normal.
Note that the vertex normal must be re-normalised on the fragment shader
in order to ensure accurate interpolation over the polygons.

Note also that I'm not making use of the half-vector (e.g. the Blinn model)
but feel free to use this to implement a faster but (slightly) less accurate 
per vertex phong model. 

Once you have implemented your shaders you will need to load them up in the
shaderscene.cpp file - the code which does this is currently commented out.
You can switch between a number of alternative shaders using the number
keys 1-4.

### Toon Shading
Toon (or Cel) shading is a technique used to make things look hand-coloured
because it looks very similar to early cartoons and comics.

Once you've set up your phong shader, a toon shader can be created without
much extra effort. For this you'll need to "discretise" the colour space
by clamping the intensity of the diffuse and specular dot products to one
of *n* values, where *n* is the number of colours in your toon shader.

To enhance this effect you need to apply a black outline to the object.
There are several ways to do this - I've used a dot product between the
normal and the eye vector to determine if a fragment is on the silhouette
and coloured it black. This isn't the best method - which is probably the
method described here: http://prideout.net/blog/?p=54 (although this is
considerably more complicated.

## References
Other helpful references:
* Some more on the Phong model: https://en.wikipedia.org/wiki/Phong_shading
* A simple tutorial on toon shading: http://www.lighthouse3d.com/tutorials/glsl-12-tutorial/toon-shader-version-ii/
* The GLM documentation: http://glm.g-truc.net/0.9.8/index.html
* The GLFW input guide: http://www.glfw.org/docs/latest/input_guide.html (and the rest of GLFW documentation of course)

## Credits
All material developed and written by Richard Southern, with some assistance 
from Jon Macey. Code references are made in the source code where appropriate.

