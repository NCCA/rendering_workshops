#ifndef CURVSCENE_H
#define CURVSCENE_H

// The parent class for this scene
#include "scene.h"
#include <ngl/Obj.h>
#include "MultiBufferIndexVAO.h"

class CurvScene : public Scene {
public:
    /// Construct our scene
    CurvScene();

    /// Called when the scene needs to be painted
    void paintGL() noexcept;

    /// Called when the scene is to be initialised
    void initGL() noexcept;

private:
    /// Store a unique pointer to the vertex array object to be rendered in our scene
    std::unique_ptr<MultiBufferIndexVAO> m_vao;

    /// Build the Vertex Array Object to store all the curvature information
    void buildVAO();
};

#endif // CURVSCENE_H
