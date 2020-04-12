plotterflut-client
==================

A rudimentary client to draw images on
[Plotterflut](https://team-tfm.com/plotterflut/).

This client was written at around 5 a.m. during the DiVOC event and does not
represent my usual standards for code quality. ;)

- To draw the Carrotdust event logo, simply run `./run.sh`.
- To draw a different image, modify the pixels and y offsets in
  `carrotdust.plotter.txt`, the x offset in `run.sh`, and then run `./run.sh`.
- Drawing is currently black-and-white (a `0` represents color, anything else
  represents a blank space that will be "blocked" via the plotter API).
