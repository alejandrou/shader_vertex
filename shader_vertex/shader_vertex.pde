//import gifAnimation.*;
PShader shdr;
PShape t;
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

  frameRate(30);

}
float off =0;
 
 
void draw() {
 
  background(0, 0);
 
  off=norm( mouseX, 0, width );
 
  shader(shdr);
 
  t = createShape();
  t.beginShape();
  t.vertex( 0.0+off, 0.5, 0.0f, 0.0f, 1.0f );   
  t.vertex( 0.5f, -0.5f, 0.0f,  1.0f, 1.0f );   
  t.vertex(-0.5f, -0.5f, 0.0f, 1.0f, 1.0f );   
  t.endShape();
  
  pushMatrix();
  shape(t, 0, 0);
  popMatrix();
 
  resetShader();
  
  

  //ficherogif.addFrame();
 
}
