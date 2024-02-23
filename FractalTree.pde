private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
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
	line(x,y,x+Math.cos(angle)*branchLength,y+Math.sin(angle)*branchLength);
	if(branchLength >= smallestBranch) {		
		drawBranches(x+Math.cos(angle)*branchLength,y+Math.sin(angle)*branchLength,branchLength*fractionLength,angle);
		angle+=3*Math.PI/2;
		drawBranches(x+Math.cos(angle)*branchLength,y+Math.sin(angle)*branchLength,branchLength*fractionLength,angle);
	}
} 

