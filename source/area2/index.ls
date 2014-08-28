require! {
  React:  \react
  \./message
}

{div, h1, a} = React.DOM


React.renderComponent do
  div do
    className: \fade-in
    h1 {} message
    a href: '/area2/subarea1', 'but you could keep going....'
  document.body