// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import RescriptBrandmarkSvg from "../../public/brand/rescript-brandmark.svg";

function string(prim) {
  return prim;
}

function $$int(prim) {
  return prim;
}

function $$float(prim) {
  return prim;
}

function array(prim) {
  return prim;
}

var make = RescriptBrandmarkSvg;

var ReLogo = {
  make: make
};

function App$Greeting(Props) {
  return React.createElement("div", {
              className: "p-6 max-w-sm mx-auto bg-white rounded-xl shadow-md flex items-center space-x-4"
            }, React.createElement("div", {
                  className: "flex-shrink-0"
                }, React.createElement("div", {
                      className: "h-12 w-12"
                    }, React.createElement(make, {}))), React.createElement("div", undefined, React.createElement("div", {
                      className: "text-xl font-medium text-black"
                    }, "Hello"), React.createElement("p", {
                      className: "text-gray-500"
                    }, "Welcome to ReScript")));
}

var Greeting = {
  make: App$Greeting
};

function App$Counter(Props) {
  var count = React.useRef(0);
  var onClick = function (e) {
    var v = e.target.value;
    switch (v) {
      case "+" :
          count.current = count.current + 1 | 0;
          return ;
      case "-" :
          count.current = count.current - 1 | 0;
          return ;
      default:
        return ;
    }
  };
  return React.createElement("div", {
              className: "flex flex-row"
            }, React.createElement("button", {
                  className: "py-2 px-4 font-semibold rounded-lg shadow-md text-white bg-green-500 hover:bg-green-700 w-4",
                  onClick: onClick
                }, "+"), React.createElement("span", {
                  className: "text-gray-500"
                }, count.current), React.createElement("button", {
                  type: "button",
                  value: "-",
                  onClick: onClick
                }, "-"));
}

var Counter = {
  make: App$Counter
};

function App(Props) {
  return React.createElement("div", {
              className: "container mx-auto"
            }, React.createElement(App$Greeting, {}), React.createElement(App$Counter, {}));
}

var make$1 = App;

export {
  string ,
  $$int ,
  $$float ,
  array ,
  ReLogo ,
  Greeting ,
  Counter ,
  make$1 as make,
  
}
/* make Not a pure module */