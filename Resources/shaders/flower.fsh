varying vec4 v_color;
uniform vec2 center;

void main(){
     float col=0.5;
	 vec2 p=gl_FragCoord.xy-center;
     gl_FragColor=vec4(p.x,p.y,0,1);
     gl_FragColor*=v_color;
}
	 