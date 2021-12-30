module LocalStorage = {
  @scope("localStorage") @val external setItem: (string, string) => unit = "setItem"
  @scope("localStorage") @return(nullable) @val
  external getItem: string => option<string> = "getItem"
}
