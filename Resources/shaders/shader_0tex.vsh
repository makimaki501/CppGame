attribute vec4 a_position; //(入力)座標

void main() {
	//シェーダの出力に座標をコピー
	gl_Position = a_position;
}