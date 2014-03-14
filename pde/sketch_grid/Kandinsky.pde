class Kandinsky {
  int current;
  int lastTime;

  color[] colors = { 
    #ca86c2, #6fadfd, #d68900, #91b693,
    #c86549, #443a5f, #1a030b, #8999a7,
    #a4a1d0, #e3c956, #a92e3d, #f6747b,
    #9d632d, #dfb732, #715b99, #cabcd3,
    #627dc8, #91a0b7, #c8b568, #fb774f,
    #8bb3e7, #c44f68, #c44f68, #2d1314
  };

  Kandinsky() {
    current = 0;
    lastTime = 0;
  }

  color some() {
    if( millis() > lastTime+100) {
      lastTime = millis();
      current = ( current + 1) % colors.length;
    }
    return colors[ current];
  }
}

