export const shaderMatUniforms = (mat) => mat.uniforms

export const shaderMatSetUniforms = (mat, name, value) => {
  mat.uniforms[name].value = value
}

export const shaderMatUniformsByRef = (ref) => ref.current.uniforms

export const shaderMatSetUniformsByRef = (ref, name, value) => {
  ref.current.uniforms[name].value = value
}
