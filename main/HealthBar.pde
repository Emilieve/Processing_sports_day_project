class HealthBar {
  Mountaineer mountaineer;
  Goat goat;
  float Barwidth,Barheight;    //setup heigh and width of healthBar
  HealthBar(float Barwidth, float Barheight,Mountaineer mountaineer,Goat goat){
    this.Barwidth=Barwidth;
    this.Barheight=Barheight; 
    this.mountaineer=mountaineer;
    this.goat=goat;
  }
  void diaplay(){    //draw outline of two healthbars
    noFill();
    rect(0,0,Barwidth,Barwidth);
    rect(width-Barwidth,0,Barwidth,Barwidth);
    GoatHealthbar();
    GoatHealthbar();
  }
  void MountaineerHealthBar(){    //draw healthbar of Mountaineer
    if(mountaineer.life > 80){    //still very health show green 
      fill(#35a639);
      rect(0,0,mountaineer.life*6,Barheight);
    }else if(mountaineer.life>40 && mountaineer.life<80){    //show yellow
      fill(#f2a949);
      rect(0,0,mountaineer.life*6,Barheight);
      
    }else{    //shou red
      fill(#eb4034);
      rect(0,0,mountaineer.life*6,Barheight);
    }
  }
  void GoatHealthbar(){
    if(goat.life > 80){    //still very health show green 
      fill(#35a639);
      rect(width-Barwidth,0,goat.life*6,Barheight);
    }else if(goat.life>40 && goat.life<80){    //with yellow
      fill(#f2a949);
      rect(width-Barwidth,0,goat.life*6,Barheight);
    }else{    //with red
      fill(#eb4034);
      rect(width-Barwidth,0,goat.life*6,Barheight);
    }
  }
  
  
}
