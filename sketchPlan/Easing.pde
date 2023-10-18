// usar con valores de t entre 0 y 1

float animOut( float t ) {
    return t * t * t;
}

float animIn( float t ) {
    return 1 + (--t) * t * t;
}
