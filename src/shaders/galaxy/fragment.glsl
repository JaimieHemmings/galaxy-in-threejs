varying vec3 vColor;

void main()
{
    // Diffuse Point
    //float strength = distance( gl_PointCoord, vec2( 0.5 ) );
    //strength *= 2.0;
    //strength = 1.0 - strength;

    // Light Point
    float strength = distance( gl_PointCoord, vec2( 0.5 ) );
    strength = 1.0 - strength;
    strength = pow(strength, 10.0);

    // Color Mixer
    vec3 color = mix(vec3(0.0), vColor, strength);


    gl_FragColor = vec4(color, 1.0);
    #include <colorspace_fragment>
}