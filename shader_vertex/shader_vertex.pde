//import gifAnimation.*;
PShader shdr;
PShape triangle;
float w,h;


//GifMaker ficherogif;

void setup() {
   size(640, 360, P2D); 

  w=width*.5f;
  h=height*.5f;

  noStroke();
  shdr = loadShader ("dibujo.glsl" , "vertex.glsl") ;
  
  //ficherogif = new GifMaker( this, "Dibujo_Shader.gif");
  //ficherogif.setRepeat(0);

  //frameRate(30);

}

 
 
void draw() {
  float aux =0;
  aux=norm(mouseX, 0, width );
  background(0, 0);
 
  shader(shdr);
 
  triangle = createShape();
  triangle.beginShape();
  triangle.vertex( 0.0+aux, 0.5, 0.0f, 0.0f, 1.0f );   
  triangle.vertex( 0.5f, -0.5f, 0.0f,  1.0f, 1.0f );   
  triangle.vertex(-0.5f, -0.5f, 0.0f, 1.0f, 1.0f );   
  triangle.endShape();
  
  pushMatrix();
  shape(triangle, 0, 0);
  popMatrix();
 
  resetShader();
  
  

  //ficherogif.addFrame();
 
}
