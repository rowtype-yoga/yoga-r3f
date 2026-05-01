import * as Three from "three"

export const createObject3D = () => new Three.Object3D()

export const createMatrix4Impl = (args) => new Three.Matrix4(...args)

export const createColorImpl = (args) => new Three.Color(args)

export const createVector3Impl = (args) => new Three.Vector3(...args)

export const createFogImpl = (props) => {
  const args = [props.color, props.near, props.far]
  return new Three.Fog(...args)
}

export const createPlaneGeometryImpl = (width, height, widthSegments, heightSegments) => {
  return new Three.PlaneGeometry(width, height, widthSegments, heightSegments)
}

export const meshNormalMaterial = () => new Three.MeshNormalMaterial()
