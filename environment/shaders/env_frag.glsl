#version 420 core

// Attributes passed on from the vertex shader
smooth in vec3 FragmentPosition;
smooth in vec3 FragmentNormal;
smooth in vec2 FragmentTexCoord;

/// @brief our output fragment colour
layout (location=0) out vec4 FragColour;

// A texture unit for storing the 3D texture
uniform samplerCube envMap;

// Set the maximum environment level of detail (cannot be queried from GLSL apparently)
// The mipmap level is determined by log_2(resolution), so if the texture was 4x4,
// there would be 8 mipmap levels (128x128,64x64,32x32,16x16,8x8,4x4,2x2,1x1).
// The LOD parameter can be anything inbetween 0.0 and 8.0 for the purposes of
// trilinear interpolation.
uniform int envMaxLOD = 8;

// The inverse View matrix
uniform mat4 invV;

void main () {
    // Calculate the normal (this is the expensive bit in Phong)
    vec3 n = normalize( FragmentNormal );

    // Calculate the eye vector
    vec3 v = normalize(vec3(-FragmentPosition));

    // Here you will need to use the environment map and with a lookup vector
    // which you've determined to get a colour to display.
    // Next you will need to use the LOD value to "smudge" the incoming light
    // from the environment.
    // Next you will need to used a gloss map to determine the level of "smudge"
    FragColour = vec4(n,1); //colour;
}

