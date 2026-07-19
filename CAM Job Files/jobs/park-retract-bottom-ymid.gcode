(Park script: retract spindle fully, bed all the way down, Y to exact middle)
(Uses G53 -- MACHINE coordinates, ignoring whatever work offset G54 is active,)
(so this always does the same physical thing regardless of the current job zero.)
(X-0.5/Z-0.5 -- not the literal 0 boundary -- 0.5mm margin off the theoretical)
(limit, matching the user's own observed homing behavior: the machine actually)
(rests near -0.5mm, not exactly 0mm, when homing. Y-120.75 is the exact travel)
(middle, no margin needed there -- nowhere near a limit either direction.)
(Precedent for X/Y-middle: DD manual section 7, tool-install procedure --)
("G53 G21 G0 X0 Y-120 -- Moves X Table down and centers gantry." Their -120 is a)
(rounded version of the same true center used below.)
(Z RETRACTS FIRST, unconditionally, before any X/Y move -- this clears the tool)
(from the part/fixture before the bed or spindle reposition, so nothing drags)
(through the workpiece while parking.)

G21
G90

G53 G0 Z-0.5

G53 G0 X-0.5 Y-120.75

M2
