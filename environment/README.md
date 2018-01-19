# Environment Mapping Workshop
In this workshop you will colour your object using a cube environment map. You will
also use a gloss map to create a "smudge effect".

## In Detail
Cube mapping is The object itself is contained within a virtual cube, where each face 
of the cube has a texture applied to it. The difference with a standard texture map
is that the way that you access the texture is via a normalized vec3 which accesses 
colour values from the texture (clever driver routines blend this data together to make
the texture appear seamless).

The next level is to blur the environment map texture to emulate reasonable quality 
environment light sources. There are many ways to do this, including complex sampling
strategies and blending. However I would recommend using a simple method which manipulates
the environment map mipmap level when rendering, effectively using the built-in image
downscaling functions and trilinear filtering.

For this workshop, you will need to:
1) Figure out a lookup so you get high-gloss reflections on the environment map.
2) Use the mipmap levels of your environment map to blur the result.
3) Create a gloss texture (you can use images/gloss.png) and use the value from this
   to scale the mipmap level and get a selective smudge / blurring effect.

## References
Other helpful references:
* You will need the textureLod function to access a particular mipmap level:
  https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/textureLod.xhtml
* A history of environment mapping: http://www.pauldebevec.com/ReflectionMapping/
* The GLM documentation: http://glm.g-truc.net/0.9.8/index.html
* The GLFW input guide: http://www.glfw.org/docs/latest/input_guide.html (and the rest of GLFW documentation of course)

## Credits
All material developed and written by Richard Southern.
Code references are made in the source code where appropriate.
