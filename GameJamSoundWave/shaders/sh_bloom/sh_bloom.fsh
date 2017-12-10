varying vec2 v_vTexcoord;
varying vec4 v_vColour;

const float tau = 6.28318530718;
const float quality = 16.0;
const float dir = 8.0;

void main()
{
    
    //float dis = length(v_vTexcoord - 0.5) * 16.;
    float size = 0.1;
    
    vec2 pos = v_vTexcoord * 32.0;        
    vec4 c = texture2D(gm_BaseTexture, v_vTexcoord);

    for(float i = 0.; i <= tau; i += tau/dir) {
         for(float o = 1.0  / quality; o <= 1.0; o += 1.0 / quality) {
            c += texture2D(gm_BaseTexture, (pos + vec2(cos(i) , sin(i))*size*o )/32.0);
        }
    }
    
    c /= quality * dir + 1.0;
        
    gl_FragColor = c;// + texture2D(gm_BaseTexture, v_vTexcoord);
}



 