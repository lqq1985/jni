uniform mat4 ModelMatrix;
uniform mat4 ViewMatrix;
uniform mat4 ProjectionMatrix;
uniform vec4 UVScaleAndOffset;

attribute vec3  vertexPosition;
attribute vec2  iTexCoord;
attribute vec4  color;

varying vec2 texCoord;
varying vec4 vColor;

void main(void)
{	
	vColor           = color;
  texCoord           = iTexCoord * UVScaleAndOffset.xy + UVScaleAndOffset.zw;
	gl_Position      = ProjectionMatrix * ViewMatrix * ModelMatrix * vec4(vertexPosition,1.0);
} 
 
