require! {
  React:  \react
}

React.renderComponent do
  React.DOM.h1 className: \fade-in, 'Go forth and build!'
  document.body