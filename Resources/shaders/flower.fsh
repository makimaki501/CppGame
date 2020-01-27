//(入力)色
varying vec4 v_color;

//(入力)図形の中心座標
uniform vec2 center;
uniform vec2 u_size;
//経過秒数
uniform float time;

//0より大きければ1を返す。
//sign関数に近いが、マイナス時も0を返す
float u(float x)
{
   return (x>0.0)?1.0:0.0;
}


void main(void){
     vec2 p=gl_FragCoord.xy-center;
	 p/=u_size;

	 // a: 中心からの角度
	 float a =atan(p.x,p.y)*0;;

     // r: 中心からの距離
	 float r=length(p);

	 // w: 中心からの距離と時間でのゆらぎ。-1～+1の範囲。
	 float w =  3.14 * time/5 - r * 2.0;

	 // h: 角度、中心距離と時間でのゆらぎ。0～+1の範囲に。
	 float h=0.5+0.5*cos(2.0 * a - w * 28.0 + r * 8.0)*0;

	 // d: もうなんか色々。0.25～+1.0の範囲に。
	 float d =0.25+0.75 * pow(h , 1.0 * r ) * ( 0.7 + 0.3 * w);

	 float col =u(d-r)*sqrt(1.0-r/d)*r*2.5;

	 col*=1.25+0.25*cos((12.0*a-w*7.0+r*8.0)/2.0)*10;
	 col*=1.0-0.35*(0.5+0.5*sin(r*30.0))*(0.5+0.5*cos(12.0*a-w*7.0+r*8.0))*200;

	 gl_FragColor=vec4(
	 col,
	 col-sin(time)*25,
	 col,
	 1.0);

}
	 