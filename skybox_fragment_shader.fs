#version 330 core

varying vec3 out_texture;
uniform samplerCube skybox;

void main(){
	gl_FragColor = texture(skybox, out_texture);
}
