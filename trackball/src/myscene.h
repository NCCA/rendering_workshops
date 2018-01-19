#ifndef MYSCENE_H
#define MYSCENE_H

#include <ngl/Obj.h>
#include "scene.h"

class MyScene : public Scene
{
public:
    MyScene();

    /// Called when the scene needs to be painted
    void paintGL() noexcept;

    /// Called when the scene is to be initialised
    void initGL() noexcept;
};

#endif // MYSCENE_H
