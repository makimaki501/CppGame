varying vec4 v_color;

void main(){
     float col=0.5;
     gl_FragColor=vec4(gl_FragCoord.x/1280,0,0,1);
     gl_FragColor*=v_color;
}
	 