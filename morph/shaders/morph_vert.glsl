#version 420                                            // Keeping you on the bleeding edge!
#extension GL_EXT_gpu_shader4 : enable
//#extension GL_ARB_shading_language_420pack: enable    // Use for GLSL versions before 420.

// The modelview and projection matrices are no longer given in OpenGL 4.2
uniform mat4 MVP;
uniform mat4 MV;
uniform mat4 P;
uniform mat3 N; // This is the inverse transpose of the mv matrix

// Store the blending weights for our morph targets in a single vec4
uniform vec4 w = vec4(1.0,0.0,0.0,0.0);

// The positional and normal information for each face state. Note that V[0] contains the ABSOLUTE
// vertex location, while V[1-4] contain the RELATIVE vertex locations. This is not the same as the
// vertex normals, which are all "absolute".
layout (location=0) in vec3 Verts[5];
layout (location=5) in vec3 Normals[5];

// These attributes are passed onto the shader (should they all be smoothed?)
smooth out vec3 FragmentPosition;
smooth out vec3 FragmentNormal;

/** Our main morph shader. Combines the vertex positions and normals according to the
  * weight vector w.
  *
  */
void main() {
    // Set the initial position of the vertices and normals
    vec3 VertexPosition = Verts[0];
    FragmentNormal = Normals[0];

    // ***Interpolate between the face shapes by using the weight vector provided to
    // ***combine the vertex positions and the normal values.

    FragmentNormal = N * normalize(FragmentNormal);

    // Compute the unprojected vertex position
    FragmentPosition = vec3(MV * vec4(VertexPosition, 1.0) );

    // Compute the position of the vertex
    gl_Position = MVP * vec4(VertexPosition, 1.0);
}
