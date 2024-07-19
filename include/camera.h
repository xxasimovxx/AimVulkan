#pragma once
#include <glm/ext/matrix_float4x4.hpp>
#include <glm/ext/vector_float3.hpp>


class Camera{
public:
    glm::vec3 velocity;
    glm::vec3 position;
    //vertical  rotation
    float pitch {0.f};
    //horizontal rotation
    float yaw {0.f};

    glm::mat4 getViewMatrix();
    glm::mat4 getRotationMatrix();

    void update();

};
