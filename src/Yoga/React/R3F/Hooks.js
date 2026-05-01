import { useFrame, useThree, applyProps } from "@react-three/fiber"
import * as Three from "three"

export const useFrameImpl = useFrame
export const useThreeImpl = useThree

export const applyPropsImpl = applyProps

export const applyRefPropsImpl = (ref, props) => {
  applyProps(ref.current, props)
}

export const applyScenePropsImpl = (scene, props) => {
  applyProps(scene, props)
  if (props.background instanceof Three.Texture) {
    scene.background = props.background
  }
}
