# Bump Mapping Workshop
The purpose of this workshop is to use texture maps within the fragment shader.
In particular, this application uses a colour and bump map and applies them to
the input geometry.

## In Detail
Bump mapping is the process of perturbing the surface normal based on a texture
containing the perturbed normal. This normal is used in lighting / shading
calculations to give the impression of more complex (bumpy) geometry.

The normal map which contains these normals represent perturbations from the
z-axis (e.g. (0,0,1)). To apply this to an arbitrary surface normal, you will
first need to determine the *rotation* necessary for getting from (0,0,1) to
the value in the normal map.

Unfortunately GLSL does not provide you with a function to create a rotation
matrix. However, Googling "glsl rotation" yields some pretty useful solutions.
If you get a function for a rotation by an angle about an axis, you'll still
need to apply your brain in determining what the angle and the axis are in
this case.

## Basic tasks
1) Implement a function to create a rotation matrix to rotate by an angle
   about an arbitrary axis. You can write your own, or purloin something
   from the interweb (assuming it is properly referenced).

2) Determine the angle and axis of the rotation to get from the vector
   (0,0,1) to the normal retrieved from the NormalTexture at these UV
   coordinates.

3) Perturb the normal!

## More Advanced stuff:
Textures can be used for literally anything where you might want to
selectively control a parameter. Specular maps are common uses, but you can
have a lot of fun with roughness maps too, when applied to some of the more
complex shading models (like Cook-Torrance).

## References:
* The GLM documentation: http://glm.g-truc.net/0.9.8/index.html
* The GLFW input guide: http://www.glfw.org/docs/latest/input_guide.html (and
  the rest of GLFW documentation of course)

## Credits
All material, except those referenced in code or above, were developed and written by
Richard Southern.
