varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 lightPosition;
uniform float width;

void main()
{	
	vec4 LightColor = vec4(vec3(0.7), 0.5); 
	vec4 AmbientColor = vec4(vec3(0.7), 0.5);
	vec3 Falloff = vec3(0.5);

	vec4 DiffuseColor = vec4(vec3(0.5), texture2D(gm_BaseTexture, v_vTexcoord).a);
	vec3 NormalMap = texture2D(gm_BaseTexture, v_vTexcoord).rgb;
	
	vec3 LightDir = vec3(lightPosition.xy - v_vTexcoord, 0.0);
	LightDir.x *= 1.77;
	
	float D = length(LightDir);
	vec3 N = normalize(NormalMap * 2.0 - 1.0);
	vec3 L = normalize(LightDir);
	
	vec3 Diffuse = (LightColor.rgb * LightColor.a) * max(dot(N, L), 0.0);
	vec3 Ambient = AmbientColor.rgb * AmbientColor.a;
	float Attenuation = 1.0 / ( Falloff.x + (Falloff.y*D) + (Falloff.z*D*D) );
	
	vec3 Intensity = Ambient + Diffuse * Attenuation;
	vec3 FinalColor = DiffuseColor.rgb * Intensity;
	
	
	gl_FragColor = v_vColour * vec4(FinalColor, DiffuseColor.a);
}


