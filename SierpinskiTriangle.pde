public void setup()
{
	size(750,750);
	background(0);
}
public void draw()
{
	sierpinski(150,600,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(float x, float y, float len) 
{
	if(len <= 10)
	{
		triangle(x,y,x+len,y,x+(len/2),y-len);
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}