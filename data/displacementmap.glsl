
//#define PROCESSING_TEXTURE_SHADER
//#define PROCESSING_COLOR_SHADER

uniform vec3 iResolution;             // viewport resolution (in pixels)
//uniform vec2 resolution;

uniform sampler2D img1;
uniform sampler2D img2;
uniform float normMouseX;
uniform float normMouseY;

varying vec4 vertColor;
varying vec4 vertTexCoord;

void main() {

  vec4 col =  texture2D(img2, vertTexCoord.st);
  vec2 tc = vertTexCoord.st + vec2(  (col.r*normMouseX) , (col.r*normMouseY));
  vec4 colf = texture2D(img1, tc);

  gl_FragColor =  colf;
  //gl_FragColor = vec4(colf.rgb, 1.0) * vertColor;

}

