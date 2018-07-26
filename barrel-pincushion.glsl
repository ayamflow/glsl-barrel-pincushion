vec2 barrelPincushion(vec2 uv, float strength) {
    vec2 st = uv - 0.5;
    float theta = atan(st.x, st.y);
    float radius = sqrt(dot(st, st));
    radius *= 1.0 + strength * pow(radius, 2.0);

    return 0.5 + radius * vec2(sin(theta), cos(theta));
}

#pragma glslify: export(barrelPincushion);