PShader displacementmap;
PImage img, imgdispmap;

void setup() {
  size(1280,720,P3D);
  //fullScreen(P3D);
  displacementmap = loadShader("displacementmap.glsl");
  
  img = loadImage("training3.jpg");
  imgdispmap = loadImage("circulos.jpg");
  
  displacementmap.set("img1", img);
  displacementmap.set("img2", imgdispmap);
  
}

void draw() {
  float normMouseX = map(mouseX, 0, width, 0, 0.25);
  float normMouseY = map(mouseY, 0, height, 0, 0.25);
  displacementmap.set("normMouseX", normMouseX );
  displacementmap.set("normMouseY", normMouseY );
  displacementmap.set("img1", img);
  displacementmap.set("img2", imgdispmap);
  shader(displacementmap);
  image(img,0,0,width,height);
}
