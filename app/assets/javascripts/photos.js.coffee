window.Body = React.createClass
  render: ->
    React.DOM.div
      children: [
        console.log(JSON.stringify(@props.info.data[0].likes.data.length))
        console.log(@props.info.data.length)
        length = @props.info.data.length
        like = @props.info.data.map((album) ->
          if album.likes
            likes = album.likes.data.length
          else
            likes = 0
          React.DOM.div
            children: [
              React.DOM.div
                children: 'number of likes: ' + likes
              React.DOM.img
                src: album.images[0].source
                height: '300'
                width: '300'
            ]
       )
      React.DOM.div
        children: like
      ]

