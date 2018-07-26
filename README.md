# glsl-barrel-pincushion

[![stable](http://badges.github.io/stability-badges/dist/stable.svg)](http://github.com/badges/stability-badges)

Distort the UV with barrel or pincushion effect.
Adapted from [this shadertoy](https://www.shadertoy.com/view/lttXD4).

![glsl-barrel-pincushion](https://i.imgur.com/XiADOcq.jpg)

### Installation :package:

```bash
npm i glsl-barrel-pincushion -S
```

### Usagez :book:

#### barrelPincushion(vec2 st, float strength)
strength > 0 for barrel distortion, strength < 0 for pincushion.

### Example :floppy_disk:

```glsl
uniform float uTime;
#pragma glslify: barrelPincushion = require(glsl-barrel-pincushion)
#pragma glslify: rectangle = require(glsl-2d-primitives/rectangle)

attribute vec2 vUv;

void main() {
    vec2 st = barrelPincushion(vUv, sin(uTime));
    float shape = rectangle(st, vec2(0.5));
    gl_FragColor = vec4(color, shape);
}
```

[Demo](http://thebookofshaders.com/edit.php?log=180726191628)

### License :pencil:

MIT. See [LICENSE](http://github.com/ayamflow/glsl-barrel-pincushion/blob/master/LICENSE) for details.