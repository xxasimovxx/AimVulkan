#version 450

layout(binding = 1) uniform sampler2D texSampler;

layout(location = 0) in vec3 fragColor;
layout(location = 1) in vec2 fragTextCoord;
layout(location = 2) in vec2 mousePosIn;

layout(location = 0) out vec4 outColor;

void main() {
  if(length(mousePosIn - gl_FragCoord.xy) < 1){
    outColor = vec4(1.0, 1.0, 1.0, 1.0);

  }else{
    outColor = texture(texSampler, fragTextCoord);
  }
}
