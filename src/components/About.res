@react.component
let make = () => {
  <div className="flex flex-col items-center gap-2 text-primary_600">
    <h1 className="text-xl"> {"Rescript-React Template with Tailwind"->React.string} </h1>
    <a
      target="_blank"
      className="block text-primary_800 underline text-lg"
      href="https://github.com/nyinyithann/rescript-react-webpack-tailwind-template">
      {"GitHub Repo"->React.string}
    </a>
    <div>
      <pre>
        {`
  Installation

- git clone https://github.com/nyinyithann/rescript-react-webpack-tailwind-template.git
- cd rescript-react-webpack-tailwind-template
- yarn install
- yarn watch:res
- yarn start
- visit http://0.0.0.0:8080`->React.string}
      </pre>
    </div>
  </div>
}
