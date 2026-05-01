export const flattenInstancedMeshArgs = (args) => {
  return [args.geometry, args.material, args.count]
}

export const meshGetGeometry = (mesh) => mesh.geometry
export const refGetGeometry = (ref) => ref.current.geometry
export const meshSetGeometry = (mesh, geo) => { mesh.geometry = geo }
export const refSetGeometry = (ref, geo) => { ref.current.geometry = geo }

export const instancedMeshSetMatrixAt = (mesh, ix, matrix) => { mesh.setMatrixAt(ix, matrix) }
export const refSetMatrixAt = (ref, ix, matrix) => { ref.current.setMatrixAt(ix, matrix) }
export const instancedMeshGetInstanceMatrix = (mesh) => mesh.instanceMatrix
export const refGetInstanceMatrix = (ref) => ref.current.instanceMatrix
