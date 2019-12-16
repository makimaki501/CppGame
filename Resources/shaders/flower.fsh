varying vec4 v_color;
uniform vec2 center;
uniform vec2 u_size;



void main(){
     vec2 p=gl_FragCoord.xy-center;

	 //描画ピクセルと図形の中心座標の距離
	 float len=length(p);

	 //X軸からの角度をラジアンで求める(-π～+π)
	 float angle =atan(p.y,p.x);
	 //角度を度数法に変換する(-180～+180)
	 float deg=degrees(angle);
	 deg=abs(deg);
	 
     float col=deg/360.0;

	 col=step(0.1,col)*255;

	 col=step(len+5,col)*255;


	 
	 gl_FragColor=vec4(col/u_size.x,col/u_size.y,col/u_size.x*0,1);
	 //黄色
	 //gl_FragColor=vec4(1,1,0,1);

     //gl_FragColor*=v_color;
}
	 