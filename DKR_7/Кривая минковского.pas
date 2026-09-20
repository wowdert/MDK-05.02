uses GraphABC, FractalMinkovsky; 

const
  MAX_DEPTH = 8;
  MOVE_STEP = 50;
  SCALE_FACTOR = 1.2;

var
  depth: integer := 2;
  scale: real := 1.0;
  offsetX: real := 100;
  offsetY: real := 350;
  needRedraw: boolean := true;

procedure KeyDown(key: integer);
begin
  case key of
    VK_Up:    offsetY -= MOVE_STEP; 
    VK_Down:  offsetY += MOVE_STEP;
    VK_Left:  offsetX -= MOVE_STEP;
    VK_Right: offsetX += MOVE_STEP;
    VK_W:     if depth < MAX_DEPTH then Inc(depth);
    VK_S:     if depth > 0 then Dec(depth);
    VK_Z:     scale *= SCALE_FACTOR;
    VK_X:     scale /= SCALE_FACTOR;
  end;
  needRedraw := true;
end;

begin
  SetWindowCaption('Minkowski Fractal Explorer');
  SetWindowSize(1000,700);
  LockDrawing;
  OnKeyDown := KeyDown;

  while True do
  begin
    if needRedraw then
    begin
      RenderScene(depth, scale, offsetX, offsetY);
      Redraw;
      needRedraw := false;
    end;
    Sleep(1);
  end;
end.