// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Logo from "./Logo.js";
import * as React from "react";
import * as NavLink from "./NavLink.js";
import * as ThemeMenu from "./ThemeMenu.js";

function string(prim) {
  return prim;
}

function NavBar(Props) {
  return React.createElement("nav", {
              className: "fixed inset-x-0 z-50 flex-1 py-1 shadow bg-300 md:pt-1\n    shadow-200 dark:bg-slate-600 dark:text-white"
            }, React.createElement("div", {
                  className: "px-2"
                }, React.createElement("div", {
                      className: "flex items-center justify-between"
                    }, React.createElement("div", {
                          className: "flex space-x-2 items-center"
                        }, React.createElement("div", {
                              className: "flex shrink-0 items-center justify-center h-8 w-8\n            rounded-full shadow-md shadow-400 dark:bg-slate-400"
                            }, React.createElement(Logo.make, {})), React.createElement("div", {
                              className: "items-center hidden pr-6 md:flex"
                            }, React.createElement("span", {
                                  className: "text-lg text-center font-brand text-900 drop-shadow-2xl dark:text-slate-400"
                                }, "ReScript")), React.createElement("div", {
                              className: "flex gap-4 text-xl font-black font-nav"
                            }, React.createElement(NavLink.make, {
                                  to: "/",
                                  children: React.createElement("span", undefined, "Home")
                                }), React.createElement(NavLink.make, {
                                  to: "/about",
                                  children: React.createElement("span", undefined, "About")
                                }))), React.createElement("div", {
                          className: "relative flex items-center pr-1 space-x-2"
                        }, React.createElement(ThemeMenu.make, {})))));
}

var make = NavBar;

export {
  string ,
  make ,
}
/* Logo Not a pure module */
