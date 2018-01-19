#ifndef FRACTALSCENE_H
#define FRACTALSCENE_H

#include <ngl/Obj.h>
#include "scene.h"
#include <chrono>

class FractalScene : public Scene
{
public:
    /// Constructor
    FractalScene();

    /// Called when the scene needs to be painted
    void paintGL() noexcept;

    /// Called when the scene is to be initialised
    void initGL() noexcept;

private:
    /// Keep track of the last time
    std::chrono::high_resolution_clock::time_point m_startTime;
};

#endif // FRACTALSCENE_H
