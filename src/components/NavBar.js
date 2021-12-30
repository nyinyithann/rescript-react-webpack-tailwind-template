// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Logo from "./Logo.js";
import * as React from "react";
import * as NavLink from "./NavLink.js";
import * as ThemeMenu from "./ThemeMenu.js";

function string(prim) {
  return prim;
}

function NavBar(Props) {
  var setTheme = Props.setTheme;
  return React.createElement("nav", {
              className: "fixed inset-x-0 z-50 flex-1 py-1 shadow bg-primary_300 md:pt-1\n    shadow-primary_200 dark:bg-slate-600 dark:text-white"
            }, React.createElement("div", {
                  className: "px-2"
                }, React.createElement("div", {
                      className: "flex items-center justify-between"
                    }, React.createElement("div", {
                          className: "flex space-x-2 items-center"
                        }, React.createElement("div", {
                              className: "flex items-center justify-center px-1 h-9 w-9\n            rounded-full shadow-md shadow-primary_400 dark:bg-slate-400"
                            }, React.createElement(Logo.make, {
                                  fillColor: "var(--color-primary-600)"
                                })), React.createElement("div", {
                              className: "items-center hidden md:flex"
                            }, React.createElement("span", {
                                  className: "text-lg text-center font-brand text-primary_900 drop-shadow-2xl dark:text-slate-400"
                                }, "ReScript")), React.createElement("div", {
                              className: "flex text-lg font-black font-navigation"
                            }, React.createElement(NavLink.make, {
                                  to: "/",
                                  children: React.createElement("span", undefined, "Home"),
                                  className: "navbar-button"
                                }), React.createElement(NavLink.make, {
                                  to: "/about",
                                  children: React.createElement("span", undefined, "About"),
                                  className: "navbar-button"
                                }))), React.createElement("div", {
                          className: "relative flex items-center pr-1 space-x-2"
                        }, React.createElement(ThemeMenu.make, {
                              setTheme: setTheme
                            })))));
}

var make = NavBar;

export {
  string ,
  make ,
  
}
/* Logo Not a pure module */