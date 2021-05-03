let {string, int, float, array} = module(React)

module ReLogo = {
  @module(`../../public/brand/rescript-brandmark.svg`) @react.component
  external make: {..} => React.element = "default"
}

module Greeting = {
  @react.component
  let make = () => {
    <div className="p-6 max-w-sm mx-auto bg-white rounded-xl shadow-md flex items-center space-x-4">
      <div className="flex-shrink-0"> <div className="h-12 w-12"> <ReLogo /> </div> </div>
      <div>
        <div className="text-xl font-medium text-black"> {"Hello"->string} </div>
        <p className="text-gray-500"> {"Welcome to ReScript"->string} </p>
      </div>
    </div>
  }
}

// useRef() as generic container or instance virable in class/function
module Counter = {
  @react.component
  let make = () => {
    let count = React.useRef(0)

    let onClick = e => {
      let v = ReactEvent.Mouse.target(e)["value"]
      switch v {
      | "+" => count.current = count.current + 1
      | "-" => count.current = count.current - 1
      | _ => ()
      }
    }

    <div className="flex flex-row">
      // <button className="text-white bg-green-500 hover:bg-green-700"> {"+"->string} </button>
      <button
        onClick
        className="py-2 px-4 font-semibold rounded-lg shadow-md text-white bg-green-500 hover:bg-green-700 w-4">
        {"+"->string}
      </button>
      <span className="text-gray-500"> {count.current->int} </span>
      <button type_="button" value="-" onClick> {"-"->string} </button>
    </div>
  }
}

@react.component
let make = () => {
  <div className="container mx-auto"> <Greeting /> <Counter /> </div>
}
