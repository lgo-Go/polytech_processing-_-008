float x = 35;
float y = 300;
float r = 75;

float x1 = 1200;
float y1 = 100;
float r1 = 200;

float t = 0;
int z = 1;

float v1 = 5;
float v2 = 50;

int score;
int time = 800;

PImage ring;
PImage end;

void setup() {
    size(1300, 650);

    fill(0);
    ellipse(x1, y1, r1, r1);

    ring = loadImage("ring.jpg");
}

void draw() {
    background(75);
    text("Score:" + score, 10, 20);
    text("Time:" + time, 10, 40);

    image(ring, x1 - 100, y1 - 100, r1, r1);

    fill(212, 72, 2);
    ellipse(x, y, r, r);

    t = t + 1;
    time = time - z;
    x = x + v1;
    y = y - v2 / 10;
    v2 = v2 - t / 30;

    if (mouseY < (y + r / 2) &
        mouseX > (x - r / 2) &
        mouseY > (y - r / 2) &
        mouseX < (x + r / 2)) {
        v2 = -v2;
    }

    if (x > (x1 - r1 / 2) &
        x < (x1 + r1 / 2) &
        y > (y1 - r1 / 2) &
        y < (y1 + r1 / 2)) {
        score++;
    }

    if (x >= (width - r / 2)) {
        v1 = -v1;
    }

    if (x <= r / 2) {
        v1 = -v1;
    }

    if ((y + r / 2) >= 650) {
        v2 = -v2;
    }


    if (time == 0) {
        PImage end = loadImage("end.jpg");
        image(end, 0, 0, 1300, 650);
    }

    if (time == 0) {
        z = 0;
    }

}