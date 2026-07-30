(TILT SURVEY + Z ZERO: probes Z here, zeros Z at this contact, traverses Y-200,)
(probes again, returns. Record BOTH [PRB: ... :1] lines -- machine coords; the Z)
(difference between them over 200mm of Y is the bed tilt. Z0 is set at the FIRST)
(contact, UNCOMPENSATED -- the tilt is being measured to be corrected properly,)
(so the 0.1mm split-the-difference hack must not be stacked on top of it.)
(This is a linear script -- it cannot check anything itself. Verify before running:)
(  1. Jog to the WORK-ZERO end of the bar, a few mm ONTO the stock -- not the knife)
(     edge -- over the centerline, on bare metal, within ~8mm of the surface)
(  2. Part isolated; clip + tool/target on BARE METAL at BOTH probe sites --)
(     the second site is 200.000mm toward the far end from wherever you start)
(  3. Run ? twice -- pin field must read OPEN as 0000 or Pn:000, NOT triggered as P000)
(  4. CLAMP CLEARANCE: the Y-200 traverse runs 5mm above the near surface --)
(     confirmed 2026-07-29 that no clamp rises into that path)
(  5. Y soft-limit: starting at the work-zero end, machine Y is about -11 to -15;)
(     the 200mm traverse stays well inside the 241.5mm travel)

G21                       (mm)
G90                       (absolute)

S0                        (RPM set point must be S0 before enabling the spindle)
M3                        (spindle on, clockwise -- DD's manual: probing needs the spindle)
S5000                     (rotating for accurate diameter averaging; slow to limit vibration)

G91                       (relative -- everything below is measured from where you jogged)
G38.2 Z-8 F30             (probe 1, NEAR end -- record this PRB line)
G90
G10 L20 P1 Z0             (Z zero at the near contact, uncompensated)

G91
G0 Z5                     (retract 5mm for the traverse -- extra clamp/tilt clearance)
G0 Y-200                  (traverse toward the far end -- clamps confirmed clear)
G38.2 Z-8 F30             (probe 2, FAR end -- record this PRB line; reaches 3mm past)
G90                       (the near-surface level, covering any plausible tilt)

M5                        (spindle off)

G91
G0 Z5                     (retract off the far surface)
G0 Y200                   (return to the start Y)
G90

M2
