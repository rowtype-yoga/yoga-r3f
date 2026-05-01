import React from "react"
import { extend } from "@react-three/fiber"

export const elementImpl = (component, toArray, args, props) => {
  const argArray = toArray(args)
  return React.createElement(component, { args: argArray, ...props})
}

export const extendImpl = (() => {
  const dict = {}
  return (name, klass) => {
    if (dict[name] === undefined) {
      dict[name] = true
      const obj = {}
      obj[name] = klass
      extend(obj)
    }
  }
})()

export const nullImpl = null
