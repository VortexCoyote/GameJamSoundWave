varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 shockwavePosition;
uniform float lengthValue;
uniform vec2 resolution;

uniform float angle;

float pie = 3.141592653589793238462643383279;

void main()
{
	float dis = distance(v_vTexcoord*resolution, shockwavePosition);
	
	vec4 c = vec4(0.0);//texture2D( gm_BaseTexture, v_vTexcoord );
	
	if(dis <= lengthValue && dis >= lengthValue - (64.0 - dis*0.25) )
	{
		vec2 dir = normalize((v_vTexcoord*resolution) - shockwavePosition);

		c = texture2D( gm_BaseTexture, v_vTexcoord - dir * clamp(dis, 0.0, 0.1));	
	}
	
    gl_FragColor = (c+vec4(0.0, 0.0, 0.2, 0.0));//v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}



