int cellSide = 20;
boolean allVisited, nextCell;
int rows, cols, cellIndex, cellNum, currentCell, visitedCells, randCell;
cellObject[] grid;

void setup() {
  size(600, 600);
  background(50);
  rows = height / cellSide;
  cols = width / cellSide;
  cellIndex = 0;
  cellNum = cols * rows;
  grid = new cellObject[cellNum];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
       grid[cellIndex] = new cellObject(i*cellSide, j*cellSide, cellSide);
       grid[cellIndex].drawCell();
       cellIndex++;
    }
  }
  currentCell = 0;
}
void draw() {
  grid[currentCell].visited = true;
  nextCell = false;
  while (nextCell == false) {
    randCell = int(random(0,4));
    switch(randCell) {
     case 0:
       if(grid[currentCell + 1].visited)
     case 1:
     case 2:
     case 3:
     
     
    }
  }
  
  for (int n = 0; n < grid.length; n++) {
    grid[n].drawCell();
    if (grid[n].visited == true) {
      visitedCells++;
    }
  }
}

class cellObject {
  boolean top = true;
  boolean right = true;
  boolean bottom = true;
  boolean left = true;
  boolean visited = false;
  int x, y, l;
  cellObject(int xpos, int ypos, int side) {
    x = xpos;
    y = ypos;
    l = side;
  }
  
  void drawCell() {
    if (visited) {
     fill(50,250,0);
     noStroke();
     rect(x, y, x+l, y+l);
    }
    stroke(255);
   if (top) {
     line(x, y, x+l, y);
  }
   if (right) {
     line(x+l, y, x+l, y+l);
  }
   if (bottom) {
     line(x, y+l, x+l, y+l);
  }
   if (left) {
     line(x, y+l, x, y);
  }
}
}
