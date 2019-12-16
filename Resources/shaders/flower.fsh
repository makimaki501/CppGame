varying vec4 v_color;
uniform vec2 center;
uniform vec2 u_size;
//åoâﬂïbêî
uniform float time;


void main(){
      vec2 p=gl_FragCoord.xy-center;
	 float angle =atan(p.y,p.x);
	 float w=sin(time*3.14-angle);

	 float col=(w/2.0+0.5)*255;
	 
	 gl_FragColor=vec4(col/u_size.x,col/u_size.y,col/u_size.x,1);
	 //â©êF
	 //gl_FragColor=vec4(1,1,0,1);

     //gl_FragColor*=v_color;
}
	 