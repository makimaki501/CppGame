//(����)�F
varying vec4 v_color;

//(����)�}�`�̒��S���W
uniform vec2 center;
uniform vec2 u_size;
//�o�ߕb��
uniform float time;

//0���傫�����1��Ԃ��B
//sign�֐��ɋ߂����A�}�C�i�X����0��Ԃ�
float u(float x)
{
   return (x>0.0)?1.0:0.0;
}


void main(void){
     vec2 p=gl_FragCoord.xy-center;
	 p/=u_size;

	 float a =atan(p.x,p.y)*0;

	 float r=length(p);

	 float w =  3.14 * time/5 - r * 2.0;

	 float h=0.5+0.5*cos(2.0 * a - w * 28.0 + r * 8.0)*0;

	 float d =0.25+0.75 * pow(h , 1.0 * r ) * ( 0.7 + 0.3 * w)+10;

	 float col =u(d-r)*sqrt(1.0-r/d)*r*2.5;

	 col*=1.25+0.25*cos((12.0*a-w*7.0+r*8.0)/2.0)*10;
	 col*=1.0-0.35*(0.5+0.5*sin(r*30.0))*(0.5+0.5*cos(12.0*a-w*7.0+r*8.0))*20;

	 gl_FragColor=vec4(
	 col,
	 col-h*0.5+r*0.4*sin(time)*25,
	 col-h*r+0.1*h*(1.0-r),
	 1.0);
}
	 