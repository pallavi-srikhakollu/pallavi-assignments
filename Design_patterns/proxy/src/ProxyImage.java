
class ProxyImage implements Image{

	   private RealImage realImage;
	   private String fileName;

	   public ProxyImage(){
	      this.fileName = fileName;
	   }

	   @Override
	   public void display() {
	      if(realImage == null){
	         realImage = new RealImage();
	      }
	      realImage.display();
	   }
	}