let themeSwitchContext = React.createContext((_: string) => ())
let provider = React.Context.provider(themeSwitchContext)

@react.component
let make = (~value: string => unit, ~children) => {
  React.createElement(provider, {"value": value, "children": children})
}
