export const object3DUpdateMatrix = (obj) => { obj.updateMatrix() }
export const object3DMatrix = (obj) => obj.matrix

export const setPositionImpl = (el, f) => {
  const pos = el.position
  el.position.set(...f(...pos))
}

export const setRotationImpl = (el, f) => {
  const angle = el.rotation
  el.rotation.set(...f(...angle))
}

export const refUpdateMatrix = (ref) => { ref.current.updateMatrix() }
export const refMatrix = (ref) => ref.current.matrix
export const refSetPosition = (ref, f) => { setPositionImpl(ref.current, f) }
export const refSetRotation = (ref, f) => { setRotationImpl(ref.current, f) }

export const bufferGeoGetIndex = (geo) => geo.index
export const bufferGeoGetAttribute = (geo, name) => geo.getAttribute(name)
export const bufferGeoSetAttribute = (geo, name, attr) => { geo.setAttribute(name, attr) }
export const bufferGeoTranslate = (geo, x, y, z) => { geo.translate(x, y, z) }
export const bufferGeoLookAt = (geo, vector3) => { geo.lookAt(vector3) }
export const clockGetElapsedTime = (clock) => clock.getElapsedTime()
export const flattenInstancedBAArgs = (args) => [args.array, args.itemSize, args.normalized, args.meshPerAttribute]
