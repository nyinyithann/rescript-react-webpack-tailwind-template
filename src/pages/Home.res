@react.component
let make = () => {
  <div
    className="flex flex-col justify-center items-center content-center
    font-info text-base text-primary_600 py-10 text-center">
    <span className="font-primary text-lg">
      {"Welcome to ReScript-React Webpack Template"->React.string}
    </span>
  </div>
}
