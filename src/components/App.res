let {string, useState} = module(React)

module ReLogo = {
  @module(`../../public/brand/rescript-brandmark.svg`) @react.component
  external make: {..} => React.element = "default"
}

module Greeting = {
  @react.component
  let make = () => {
    <div
      className="p-6 max-w-sm mx-auto bg-primary_500 rounded-xl shadow-md flex items-center space-x-4">
      <div className="flex-shrink-0"> <div className="h-8 w-8"> <ReLogo /> </div> </div>
      <div>
        <div className="text-xl font-medium text-primary_100"> {"Hello"->string} </div>
        <p className="text-primary_200"> {"Welcome to ReScript"->string} </p>
      </div>
    </div>
  }
}

@react.component
let make = () => {
  let (theme, setTheme) = useState(_ => "theme-gray")
  <div className=theme>
    <nav className="bg-primary_500 fixed inset-x-0 shadow">
      <div className="max-w-6xl mx-auto px-4">
        <div className="flex justify-between">
          <div className="flex space-x-2">
            <div className=" pt-3 px-3 h-12 w-12"> <ReLogo /> </div>
            <div className="flex items-center text-primary_200 ">
              <a href="#" className="py-5 px-3 hover:text-primary_100"> {"Home"->string} </a>
              <a href="#" className="py-5 px-3 hover:text-primary_100"> {"About"->string} </a>
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
    <div className="py-32 bg-primary_50 h-screen p-3"> <Greeting /> </div>
  </div>
}
