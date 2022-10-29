@val @scope(("window", "location")) external reload: unit => unit = "reload"

module Fallback = {
  @react.component
  let make = (~error, ~info: RescriptReactErrorBoundary.info) => {
    let onClick = _ => {
      RescriptReactRouter.push("/")
      reload()
    }
    <div
      className="w-full h-screen flex flex-col items-center justify-center bg-900 dark:bg-slate-900">
      <article
        className="w-[50vw] h-auto flex flex-col border-[2px] border-100 rounded-lg shadow-slate-300 bg-200 dark:border-slate-500 dark:text-slate-200">
        <header
          className="text-xl p-2 rounded-t-md bg-300 text-900 text-center dark:bg-slate-500 dark:text-slate-100 font-nav">
          <h2> {"Sorry, something went wrong!"->React.string} </h2>
        </header>
        <nav className="flex items-center justify-center gap-2 py-4">
          <p className="text-800 text-lg">
            {"Would you try to reload the whole site?"->React.string}
          </p>
          <button
            type_="button"
            className="px-4 bg-300 rounded-lg py-2 text-900 hover:bg-500 hover:text-50 dark:bg-slate-500 dark:text-slate-100 dark:hover:bg-slate-800"
            onClick>
            {"Reload"->React.string}
          </button>
        </nav>
        <details className="p-2 text-800 font-sans rounded-t-md hover:cursor-pointer">
          <summary> {"Details"->React.string} </summary>
          {switch error {
          | Js.Exn.Error(e) =>
            switch Js.Exn.message(e) {
            | Some(msg) =>
              <p className="px-4 py-2 overflow-x-auto bs-scrollbar dark:dark-scrollbar">
                {msg->React.string}
              </p>
            | None => React.null
            }
          | _ => React.null
          }}
          <p className="px-4 py-2 overflow-x-auto bs-scrollbar dark:dark-scrollbar">
            {`${info.componentStack}`->React.string}
          </p>
        </details>
      </article>
    </div>
  }
}

@react.component
let make = (~children: React.element) => {
  <RescriptReactErrorBoundary fallback={({error, info}) => <Fallback error info />}>
    children
  </RescriptReactErrorBoundary>
}
