@react.component
let make = (~to, ~children) => {
  let url = RescriptReactRouter.useUrl()
  let path = switch url.path {
  | list{} => "/"
  | _ =>
    let path = url.path->Belt.List.reduce("", (acc, p) => acc ++ "/" ++ p)
    path->Js.String2.replaceByRe(%re("/\/$/g"), "")
  }
  let baseStyle = "focus:outline-none h-8 rounded-sm hover:bg-400/60 dark:hover:bg-slate-500 px-3 text-900"
  let className = path == to ? j`$baseStyle bg-400/60 dark:bg-slate-500` : baseStyle
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
