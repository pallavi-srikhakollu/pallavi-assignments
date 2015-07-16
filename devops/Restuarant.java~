import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;


public class Restuarant {

	public static void main(String key[])
    {
 
  int restro1[]=new int[10];
   float price1[]=new float[10];
   int restro2[]=new int[10];
   float price2[]=new float[10];
   int restro=0,track=0,i=0;
   float min=0;
   int flag ;
   int count1=0,count2=0;
   
   String csvfile ;
      String choice1;
      String choice2;
       if(key[0]==null)
      {
          System.out.println("no csv file found");

      }
if(key[1]==null)
{
  System.out.println("no choice found");
}
     
      int noarg = key.length;
    csvfile = key[0];
       choice1 =key[1];
       choice2= null;
       
      if(noarg >2)
      {
          choice2 = key[2];
          choice2=choice2.trim();
      }
      choice1=choice1.trim();
      
  
 
        BufferedReader lineBuffer = null;
    String line;

    
   try{
       lineBuffer = new BufferedReader(new FileReader(csvfile));
       while ((line  = lineBuffer.readLine()) != null) {

           

           String values[] = new String[3];
             values = line.split(",",3);
             String temp = values[2];
             values[0]=values[0].trim();
             values[1]=values[1].trim();
             
             boolean b;
            b =(temp.contains(","));
            flag=0;
            
         
              if(b==(false))
              {
              	 temp=temp.trim();
              	
                  if((temp.equals(choice1))== true)
                  {
                  	
                	  price1[count1]=Float.parseFloat(values[1]);
                   restro1[count1]=Integer.parseInt(values[0]);
                   
                   count1++;
                  }
                   if(temp.equals(choice2)== true)
                  {price2[count2]=Float.parseFloat(values[1]);
                   restro2[count2]=Integer.parseInt(values[0]);
                   count2++;
                  }
              }
             
             if(b==(true))  
              {
          	   flag=0;
          	 
                
                 for(String token: temp.split(","))
                 {
              	   token = token.trim();
              	   
                     if(token.equals(choice1)== true)
                     { System.out.println(token);
                  	   if(flag==0){
                         price1[count1]=Float.parseFloat(values[1]);
                         
                  	   }
                       if(flag>0){
                          price1[count1]=0; }
                  	   
                         restro1[count1]=Integer.parseInt(values[0]);
                         flag++;
                         count1++;
                     }
                     token = token.trim();
                      if(token.equals(choice2)== true)
                      {
                           
                          	if(flag==0)
                          	{	
                                price2[count2]=Float.parseFloat(values[1]);
                                
                               }
                          	
                          	
                           if(flag>0)
                           {	 
                          price2[count2]=0; 
                          System.out.println(price2);
                           }
                         restro2[count2]=Integer.parseInt(values[0]);
                         flag++;
                         count2++;
                         }
                      }
    
                        
                 }


    
      
                
       }
    }

   catch (IOException e) {
          e.printStackTrace();
      }
   
 
   
   if(choice2==null)
   {
  	 min = price1[0];
  	 
  	 restro= restro1[0];
  	 do{
  		 if(min>price1[track] && price1[track]!=0)
  		 {
  			 
  			 restro= restro1[track];
  			 min= price1[track];	 
  		 }
  		 track++;
		 
  	 }while(restro1[track]!=0);
  	 
   }
   
   if(choice2!=null)
   {
  	 
  	 min=0;
  	 track=0;
  	 do{
  		 i=0;
  		 
  		 do
  			 {
  			 if(restro1[track]==restro2[i])
  			 
  		 {
  				 
              if(min==0 || min >(price1[track]+ price2[i]))
              {
              	min=price1[track]+price2[i];
              	
  			 restro= restro1[track];
  			 	 
  		     }
  		 }
  			 i++;
  			 }while(restro2[i]!=0);
  	
  		 track++;
  		 
		 
  	 }while(restro1[track]!=0);
  	 
   }
   
   
   System.out.println("your meal was present on");
   System.out.println(choice1);
   
   for( i=0;i<5;i++){
  	 
		 
		 if(restro1[i]!=0)
		 {	
	  System.out.print(restro1[i]);
	  System.out.println("        " + price1[i]);
		 }
	 }
   
   
   if(choice2!=null)
   {
  	 
   System.out.println(choice2);
	for( i=0;i<5;i++){
		
	 if(restro2[i]!=0)
	 {
	
System.out.print(restro2[i]);
System.out.println("         " +price2[i]);
	 }
   }
   }
   
   if(min>0)
   {
  	 
  	 System.out.println("The restaurant according to your choice with minimum price is");
  	 System.out.println("restaurent id " +restro);
  	 System.out.println("price " +min);
    
   
   }
   
   
   if(min==0)
   { System.out.println("menu not found");}
   
 
  	
    
    }
   

}

