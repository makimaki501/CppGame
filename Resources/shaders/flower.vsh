attribute vec4 a_position; //(����)���W
attribute vec4 a_color;    //(����)�F
attribute vec2 a_texCoord;

uniform mat4 u_wvp_matrix; //(����)���[���h�A�r���[�A�v���W�F�N�V�����s��

varying vec4 v_color;      //(�o��)�F
varying vec2 v_texCoord;


void main() {
	////���͍��W�����[���h�A�r���[�A�v���W�F�N�V����(�ˉe)�ϊ�
	//gl_Position = u_wvp_matrix * a_position;
	////���͂���o�͂ɐF���R�s�[
	//v_color = a_color;
}