varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 lightColour;
uniform vec2 lightPosition;

void main()
{
    vec4 colour = vec4(0.);
    vec2 coords = v_vTexcoord;
    
    vec2 lightCoords = lightPosition;
    
    float dis = distance(lightCoords, coords);    
    vec2 dir = normalize(lightCoords - coords);
    
    float stepValue = 0.006;
    vec2 actualStepValue = dir*stepValue;
    
    for(float f = 0.; f < dis; f += stepValue) 
    {
        vec4 positionColour = texture2D( gm_BaseTexture, coords);
                        
        if (bool(positionColour.a))
        {
            break;
        }
        else if (distance(coords, lightCoords) < 0.008) 
        {
            colour = vec4(lightColour, 1.) - (dis*1.5);            
            break;
        }
        
        coords += actualStepValue;        
    }
	
	gl_FragColor = colour + v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}

