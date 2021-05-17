let {string} = module(React)

@react.component
let make = (~setTheme) => {
  <nav className="bg-primary_500 py-1 fixed inset-x-0 shadow flex-1">
    <div className="max-w-6xl mx-auto px-4">
      <div className="flex justify-between">
        <div className="flex space-x-2">
          <div className="pt-1 px-3 h-12 w-12"> <ReLogo /> </div>
          <div className="flex items-center text-primary_200 ">
            <button className="focus:outline-none hover:bg-primary_600 hover:rounded" type_="button" onClick={_ => RescriptReactRouter.push("/")}><a className="py-5 px-3 hover:text-primary_100"> {"Home"->string} </a></button>
            <button className="focus:outline-none hover:bg-primary_600 hover:rounded" type_="button"  onClick={_ => RescriptReactRouter.push("about")}><a className="py-5 px-3 hover:text-primary_100"> {"About"->string} </a></button>
          </div>
        </div>
        <div className="hidden sm:flex items-center space-x-2">
          <button
            type_="button"
            className="theme-btn"
            style={ReactDOM.Style.make(~background="#6B7280", ())}
            onClick={_ => setTheme(_ => "theme-gray")}
          />
          <button
            type_="button"
            className="theme-btn"
            style={ReactDOM.Style.make(~background="#EF4444", ())}
            onClick={_ => setTheme(_ => "theme-red")}
          />
          <button
            type_="button"
            className="theme-btn"
            style={ReactDOM.Style.make(~background="#3B82F6", ())}
            onClick={_ => setTheme(_ => "theme-blue")}
          />
          <button
            type_="button"
            className="theme-btn"
            style={ReactDOM.Style.make(~background="#F59E0B", ())}
            onClick={_ => setTheme(_ => "theme-yellow")}
          />
          <button
            type_="button"
            className="theme-btn"
            style={ReactDOM.Style.make(~background="#10B981", ())}
            onClick={_ => setTheme(_ => "theme-green")}
          />
        </div>
      </div>
    </div>
  </nav>
}
