 @react.component
  let make = () => {
    <div
      className="p-4 max-w-sm mx-auto bg-primary_500 rounded-xl shadow-md flex items-center space-x-4">
      <div className="flex-shrink-0"> <div className="h-8 w-8"> <ReLogo /> </div> </div>
      <div>
        <div className="text-base text-primary_100"> {"Hello"->React.string} </div>
        <p className="text-sm text-primary_200"> {"Welcome to ReScript"->React.string} </p>
      </div>
    </div>
  }