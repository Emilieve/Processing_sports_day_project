class HealthBar {
  float Barwidth,Barheight;    //setup heigh and width of healthBar
  HealthBar(float Barwidth, float Barheight){
    this.Barwidth=Barwidth;
    this.Barheight=Barheight; 
  }
  void diaplay(int mountaineerLife,int goatLife){    //draw outline of two healthbars
    noFill();
    stroke(0);
    rect(0,0,Barwidth,Barheight);
    rect(width-Barwidth,0,Barwidth,Barheight);
    MountaineerHealthBar(mountaineerLife);
    GoatHealthbar(goatLife);
  }
  void MountaineerHealthBar(int life){    //draw healthbar of Mountaineer
    if(life >= 80){    //still very health show green 
      fill(#35a639);
      rect(0,0,life*6,Barheight);
    }else if(life>=40){    //show yellow
      fill(#f2a949);
      rect(0,0,life*6,Barheight);
    }else{    //shou red
      fill(#eb4034);
      rect(0,0,life*6,Barheight);
    }
  }
  void GoatHealthbar(int life){
    if(life >= 80){    //still very health show green 
      fill(#35a639);
      rect(width-Barwidth,0,life*6,Barheight);
    }else if(life>=40 && life<80){    //with yellow
      fill(#f2a949);
      rect(width-Barwidth,0,life*6,Barheight);
    }else{    //with red
      fill(#eb4034);
      rect(width-Barwidth,0,life*6,Barheight);
    }
  } 
}
