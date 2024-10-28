vec2 barrelPincushion(vec2 uv, float strength) {
    vec2 st = uv - 0.5;
    float radius = 1.0 + strength * dot(st, st);
    return 0.5 + radius * st;
}

#pragma glslify: export(barrelPincushion);