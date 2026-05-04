#version 330 core

attribute vec3 position;
varying vec3 out_texture;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main(){
	out_texture = position;
	vec4 pos = projection * view * model * vec4(position, 1.0);
	gl_Position = pos.xyww;
}
