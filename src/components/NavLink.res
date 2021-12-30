@react.component
let make = (~to, ~children, ~className=?) => {
  let url = RescriptReactRouter.useUrl()
  let path = switch url.path {
  | list{} => "/"
  | _ =>
    let path = url.path->Belt.List.reduce("", (acc, p) => acc ++ "/" ++ p)
    path->Js.String2.replaceByRe(%re("/\/$/g"), "")
  }
  let className = Js.Option.getWithDefault("", className)
  let className =
    path == to ? j`$className text-primary_50 bg-primary_600 dark:bg-slate-500` : className
  <button
    type_="button"
    className
    onClick={e => {
      ReactEvent.Mouse.preventDefault(e)
      RescriptReactRouter.push(to)
    }}>
    {children}
  </button>
}
