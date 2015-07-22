
public class Program implements Image{    
	
	//private URL url;   
	public Program()    
	{       //this.url = url; 
		
	}    //this method delegates to the real image    
	
	
	public void display()   {        
		
		RealImage real = new RealImage();        
		real.displayImage();   
		
	}}
