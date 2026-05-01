export const flattenBoxArgs = (args) => [
  args.width, args.height, args.depth,
  args.widthSegments, args.heightSegments, args.depthSegments,
]

export const flattenPlaneArgs = (args) => [
  args.width, args.height,
  args.widthSegments, args.heightSegments,
]

export const flattenSphereArgs = (args) => [
  args.radius, args.widthSegments, args.heightSegments,
  args.phiStart, args.phiLength, args.thetaStart, args.thetaLength,
]

export const flattenCircleArgs = (args) => [
  args.radius, args.segments,
  args.thetaStart, args.thetaLength,
]

export const flattenCylinderArgs = (args) => [
  args.radiusTop, args.radiusBottom, args.height,
  args.radialSegments, args.heightSegments,
  args.openEnded, args.thetaStart, args.thetaLength,
]

export const flattenConeArgs = (args) => [
  args.radius, args.height,
  args.radialSegments, args.heightSegments,
  args.openEnded, args.thetaStart, args.thetaLength,
]

export const flattenTorusArgs = (args) => [
  args.radius, args.tube,
  args.radialSegments, args.tubularSegments, args.arc,
]

export const flattenTorusKnotArgs = (args) => [
  args.radius, args.tube,
  args.tubularSegments, args.radialSegments,
  args.p, args.q,
]

export const flattenRingArgs = (args) => [
  args.innerRadius, args.outerRadius,
  args.thetaSegments, args.phiSegments,
  args.thetaStart, args.thetaLength,
]
