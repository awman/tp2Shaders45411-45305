attribute vec4 vPosition;
attribute vec3 vNormal;
attribute vec4 vColor;

varying vec4 fPosition;
varying vec4 fColor;

uniform mat4 ctm;
uniform mat4 mModelView ;
uniform mat4 mProjection;
uniform mat4 mNormals;

void main(){
    gl_Position = mProjection * mModelView * vPosition;   
    fColor = vColor;
    fPosition=vPosition;
}
