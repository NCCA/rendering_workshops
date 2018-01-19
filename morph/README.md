# Morph Targets in the Vertex Shaders
Morph Targets (Maya: Blend Shapes) are a standard method of deformation
which combine between user defined target models. You're going to perform
this on the GPU in the Vertex Shader. Then you'll need to implement some
interpolation function on the host side to give the character a face workout.

## In Detail
The real heavy lifting on this workshop is done for you - I encourage you
to investigate the initMeshes() function. This does various things:
- It loads up the position data into matrices V0-V4 and F, the face
  indices in F.
- It computes the vertex normals using IGL for all of the different meshes.
- It computes the mesh differences with the initial face V0 and stores these
  into a custom vertex buffer.
- It then binds the vertex pointers for this custom vertex buffer.

## Basic tasks
1) First, implement the vertex shader blending in morph_vert.glsl. This will
   accept a weight vector w and add a weighted sum of vert differences to
   the basic VertexPosition Verts[0]. The normals are also added using the
   same blending weights. Test that this is working by modifying the value
   of w in MorphScene::paintGL() to show the different face shapes.
2) Create a function to give your face shapes a good workout. You will probably
   need to use the elapsed time in paintGL() to set the weights so you cycle
   between the morph targets.

## More Advanced stuff:
If you need to support more than 5 morph targets (1 base shape and 4
deformations) you'll need to substantially alter the implementation, either
by allowing all blendshapes to be used, or creating an index vector which
limits the number of blendshapes that can be used in each frame.

## References:
* Morph targets: https://en.wikipedia.org/wiki/Morph_target_animation
* libIGL tutorial: http://libigl.github.io/libigl/tutorial/tutorial.html
* The GLM documentation: http://glm.g-truc.net/0.9.8/index.html
* The GLFW input guide: http://www.glfw.org/docs/latest/input_guide.html (and
  the rest of GLFW documentation of course)

## Credits
All material, except those referenced in code or above, were developed and written by
Richard Southern.
