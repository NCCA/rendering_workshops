# Curvature Visualisation in Geometry Shader
In this exercise you'll write some Geometry Shader code to visualise the normal
and the principle curvature directions.

## In Detail
The geometry is drawn twice, once to get the standard shading, and a second
time to the special Curvature shader program. In the geometry shader program,
new geometry is being created and emitted down the pipeline to the fragment
shader.

You need to write the code in the geometry shader necessary to create this
new geometry.

The geometry is loaded up in CurvScene::buildVAO() which loads up the data,
computes the principle curvature directions using libIGL, and loads it into
a custom NGL VAO. This will set up the attributes to be passed on to the
Geometry Shader.

## Basic tasks
There is only one real task: create 3 line strips in curv_geo.glsl (the geometry
shader) to visualise the normal and principle curvature directions.

## More Advanced stuff:
Note that all vertices are shared between faces, so vertices are being drawn more
than once which is somewhat wasteful. A solution to this is to render only points -
you would have to extend the VAO class to support this behaviour, and the geometry
shader would also have to be modified.

Try creating something more complex within the geometry shader at the vertex. This
could include animated stars, or perhaps a silhouette aligned outline (such as that
demonstrated here: http://prideout.net/blog/?p=54).

## References:
* Geometry shaders: https://www.khronos.org/opengl/wiki/Geometry_Shader
* libIGL tutorial: http://libigl.github.io/libigl/tutorial/tutorial.html
* The GLM documentation: http://glm.g-truc.net/0.9.8/index.html
* The GLFW input guide: http://www.glfw.org/docs/latest/input_guide.html (and
  the rest of GLFW documentation of course)

## Credits
All material, except those referenced in code or above, were developed and written by
Richard Southern.
