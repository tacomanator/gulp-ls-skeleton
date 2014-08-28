require! {
  React:  \react
}

{div, h1, a} = React.DOM


React.renderComponent do
  div do
    className: \fade-in
    h1 {} 'Hello traveler...'
    a href: '/area2', 'too dark, keep exploring...'
  document.body