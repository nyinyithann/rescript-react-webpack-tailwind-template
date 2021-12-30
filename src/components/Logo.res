@react.component
let make = (~fillColor) => {
  <svg
    width="24" height="24" viewBox="0 0 24 24" fill={fillColor} xmlns="http://www.w3.org/2000/svg">
    <path
      fillRule="evenodd" clipRule="evenodd" d="M3 3V9H21V3H3ZM19 5H5V7H19V5Z" fill={fillColor}
    />
    <path
      fillRule="evenodd" clipRule="evenodd" d="M3 11V21H11V11H3ZM9 13H5V19H9V13Z" fill={fillColor}
    />
    <path d="M21 11H13V13H21V11Z" fill={fillColor} />
    <path d="M13 15H21V17H13V15Z" fill={fillColor} />
    <path d="M21 19H13V21H21V19Z" fill={fillColor} />
  </svg>
}
