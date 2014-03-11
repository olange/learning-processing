
color noisy_red() {
  return color( 255 - map( mouseX, 0, width, 0, 128),
                255 - map( mouseY, 0, height, 0, 128), 0);
}
