varying vec2 v_vTexcoord;
varying vec4 v_vColour;

float rand(float n) { return fract(sin(n) * 43758.5453123); }

void main()
{
    float gridSize = 5.0;
    
    vec2 gridCoords = v_vTexcoord*vec2(1920.0, 1080.0);
    
    gridCoords = floor(gridCoords/gridSize);
    
    gridCoords = (gridCoords*gridSize)/vec2(1920.0, 1080.0);
    
    float randValue = rand(1920.0*(gridCoords.x*gridCoords.y));
    
    gl_FragColor = clamp(1.0 - 2.0*distance(v_vTexcoord, vec2(0.5)), 0.0, 1.0) * (v_vColour * texture2D( gm_BaseTexture, v_vTexcoord )) 
    + vec4(vec3((0.1*randValue)*distance(gridCoords, vec2(0.5))), 1.0);
}




