let {string} = module(React)

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
        <div className="text-xl font-medium text-green-600"> {"Hello"->string} </div>
        <p className="text-green-500"> {"Welcome to ReScript"->string} </p>
      </div>
    </div>
  }
}

@react.component
let make = () => {
  <div> <Greeting /> </div>
}
