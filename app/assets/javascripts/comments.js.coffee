class Comments

  initialize : ()->
    $("#comment_form").submit(()->
      form = $(this)
      $.post(
        form.attr('action'),
        form.serialize(),
        ()->
          console.log(arguments)
      )
      return false
    )


this.Comments = new Comments()