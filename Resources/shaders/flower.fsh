varying vec4 v_color;
uniform vec2 center;
uniform vec2 u_size;



void main(){
     vec2 p=gl_FragCoord.xy-center;

	 //�`��s�N�Z���Ɛ}�`�̒��S���W�̋���
	 float len=length(p);

     float col=len;

	 //col=255.0-col;

	 gl_FragColor=vec4(col/u_size.x,col/u_size.y,col/u_size.x,1);
     //gl_FragColor*=v_color;
}
	 