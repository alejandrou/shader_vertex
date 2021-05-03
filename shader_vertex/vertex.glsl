in vec4 position; 
in vec2 texCoord; 
uniform mat4 transform; 
out vec2 st; 

void main() { 
  st=texCoord.xy; 
  
  gl_Position = vec4(position.xy,0.0,1.); 
}  
