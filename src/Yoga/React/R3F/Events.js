export const eventPointX = (e) => e.point.x
export const eventPointY = (e) => e.point.y
export const eventPointZ = (e) => e.point.z
export const eventClientX = (e) => e.nativeEvent.clientX
export const eventClientY = (e) => e.nativeEvent.clientY
export const eventCameraZoom = (e) => e.camera.zoom
export const stopPropagation = (e) => () => e.stopPropagation()
export const stopNativeImmediate = (e) => () => e.nativeEvent.stopImmediatePropagation()
export const setCursor = (cursor) => () => { document.body.style.cursor = cursor }

export const startPointerDragImpl = function(threeEvent, onMove, onEnd) {
  const target = threeEvent.nativeEvent.target
  target.setPointerCapture(threeEvent.nativeEvent.pointerId)
  let prevX = threeEvent.nativeEvent.clientX
  let prevY = threeEvent.nativeEvent.clientY

  function moveHandler(e) {
    prevX = e.clientX
    prevY = e.clientY
    onMove(e.clientX, e.clientY)
  }
  function upHandler(e) {
    target.removeEventListener('pointermove', moveHandler)
    target.removeEventListener('pointerup', upHandler)
    try { target.releasePointerCapture(e.pointerId) } catch (_) {}
    onEnd()
  }

  target.addEventListener('pointermove', moveHandler)
  target.addEventListener('pointerup', upHandler)
}

export const withChildrenImpl = (children, props) => ({ ...props, children })
