require! {
  React:  \react
}

{div, h1, a} = React.DOM


React.renderComponent do
  div do
    className: \fade-in
    h1 {} 'Go forth and build!'
    a href: '/area1', 'explore...'
  document.body