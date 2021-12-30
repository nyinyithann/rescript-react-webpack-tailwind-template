module Menu = {
  type menuRenderPropArg = {@as("open") open_: bool}
  @module("@headlessui/react") @react.component
  external make: (
    ~as_: string=?,
    ~children: menuRenderPropArg => React.element,
    ~className: string=?,
  ) => React.element = "Menu"

  module Button = {
    @module("@headlessui/react") @scope("Menu") @react.component
    external make: (
      ~as_: string=?,
      ~children: React.element=?,
      ~className: string=?,
    ) => React.element = "Button"
  }

  module Items = {
    @module("@headlessui/react") @scope("Menu") @react.component
    external make: (
      ~as_: string=?,
      ~children: React.element=?,
      ~className: string=?,
      ~static: bool=?,
    ) => React.element = "Items"
  }

  module Item = {
    type itemRenderPropArg = {active: bool, disabled: bool}
    @module("@headlessui/react") @scope("Menu") @react.component
    external make: (
      ~as_: string=?,
      ~children: itemRenderPropArg => React.element,
      ~className: string=?,
    ) => React.element = "Item"
  }
}
