#version 330 core
// This parameter indicates that the data coming in will assembled as a triangle.
// This tells us that the gl_in.length() = 3. Note that this must match the primitive
// drawn in the drawElements / drawArrays parameters.
layout(triangles) in;

// This parameter indicates that the geometry is the special Geometry Shader parameters
layout(line_strip, max_vertices = 18) out;

// These are the attributes passed on from the vertex shader. Note the [] brackets, indicating
// that these are stored in an array. The size of the array depends on the input layout.
// Because it is "triangles", the input array size is 3.
in vec4 normal[];
in vec4 K1[];
in vec4 K2[];

// This attribute needs to be set for each vertex emitted. I've used red for the normal, green
// for K1 and blue for K2.
out vec4 perNormalColour;

void main() {
    //*** Here you will have to create some vertices using EmitVertex() and EndPrimitive().
    //*** These represent the line strips for normal, K1 and K2.
    //*** Note that some scaling will be necessary to see K1 and K2 (I used a factor of 10.0).
}
