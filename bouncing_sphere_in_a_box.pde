PVector vel = PVector.random3D();
PVector loc = new PVector(0, 0, 0);
//PVector acc = new PVector(0.1,0.1,0.1);
int r = 100;
int zEdge = 600;

void update() {
  loc = loc.add(vel);
  //vel = vel.add(acc);
}

void edges() {
  if (loc.x + r > width/2 || loc.x - r < -width/2) {
    vel = new PVector(-1 * vel.x, vel.y, vel.z);
  }
  if (loc.y + r > height/2 ||loc.y - r < -height/2 ) {
    vel = new PVector(vel.x, -1 * vel.y, vel.z);
  }
  if (loc.z + r > zEdge/2 ||loc.z - r < -zEdge/2) {
    vel = new PVector(vel.x, vel.y, -1 * vel.z);
  }
}


void setup() {
  size(600, 600, P3D);
}

void draw() {
  background(0);
  translate(width/2, height/2, 0);
  translate(loc.x, loc.y, loc.z);
  sphere(r);
  update();
  edges();
}
