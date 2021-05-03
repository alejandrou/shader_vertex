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

  //frameRate(30);

}
float off =0;
 
 
void draw() {
 
  background(127, 255);
 
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
 
  textSize(18);
  textAlign(CENTER, BOTTOM);
 
  text("0|0", w, h);       
  text("0|1", w, 32);      
  text("1|0", width-32, h);    
  text("0|-1", w, height); 
  text("-1|0", 32,h);        
 

  text(""+off,mouseX,mouseY);
  

  //ficherogif.addFrame();
 
}
