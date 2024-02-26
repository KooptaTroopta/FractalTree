private double fractionLength = .8; 
private int smallestBranch = 35; 
private double branchAngle = 10.0/360.0*2*Math.PI;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  stroke(0,255,0);   
  line(320,480,320,380);   
  drawBranches(320,380,80,branchAngle);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  line(x,y,(int)(x+Math.cos(3*Math.PI/2+angle)*branchLength),(int)(y+Math.sin(3*Math.PI/2+angle)*branchLength));
  line(x,y,(int)(x+Math.cos(3*Math.PI/2-angle)*branchLength),(int)(y+Math.sin(3*Math.PI/2-angle)*branchLength));
  line(x,y,(int)(x+Math.cos(3*Math.PI/2+angle*2)*branchLength),(int)(y+Math.sin(3*Math.PI/2+angle*2)*branchLength));
  line(x,y,(int)(x+Math.cos(3*Math.PI/2-angle*2)*branchLength),(int)(y+Math.sin(3*Math.PI/2-angle*2)*branchLength));
  if (branchLength >= smallestBranch) {
    drawBranches((int)(x+Math.cos(3*Math.PI/2+angle)*branchLength),(int)(y+Math.sin(3*Math.PI/2+angle)*branchLength),branchLength*fractionLength,angle+.1);
    drawBranches((int)(x-Math.cos(3*Math.PI/2+angle)*branchLength),(int)(y+Math.sin(3*Math.PI/2+angle)*branchLength),branchLength*fractionLength,angle+.1);
    drawBranches((int)(x+Math.cos(3*Math.PI/2+angle*2)*branchLength),(int)(y+Math.sin(3*Math.PI/2+angle*2)*branchLength),branchLength*fractionLength,angle+.2);
    drawBranches((int)(x-Math.cos(3*Math.PI/2+angle*2)*branchLength),(int)(y+Math.sin(3*Math.PI/2+angle*2)*branchLength),branchLength*fractionLength,angle+.2);
  }
} 


