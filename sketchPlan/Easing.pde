

float animIn( float t ) {
    return t * t * t;
}

float animOut( float t ) {
    return 1 + (--t) * t * t;
}
