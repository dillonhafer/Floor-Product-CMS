# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# Expanded version of $.rails.allowAction from jquery_ujs.js
#
# Falls back to plain window.confirm() for links/buttons with just a simple 'confirm' key...
#   = link_to 'Delete', foo_path(foo), method: :delete, confirm: 'Are you sure?'
#
# Uses a nice Zurb Foundation modal window for links/buttons with HTML5 data set...
#   = link_to 'Delete', foo_path(foo), method: :delete, data: {
#       confirm: {
#         title: 'You might want to think twice about this!',
#         body: 'If you click "Simon Says Delete", there will be no takebacks!',
#         password: 'YESREALLY',
#         ok: 'Simon Says Delete'
#       }
#     }
#
# Options:
#   title      Text for title bar of modal popup
#   body       Warning inside main content area of popup
#   password   If set, will require the user to type out this string to enable the action
#   prompt     Format string for password prompt (password inserted in place of %s)
#   ok         Label for the button that does the delete/destroy/etc.
#   cancel     Label for the button that cancels out of the action

localization_defaults =
  title: 'Are you sure?'
  body: 'This action cannot be undone.'
  password: false
  prompt: 'Type <i>%s</i> to continue:'
  ok: 'DELETE EVERYTHING'
  cancel: 'Cancel'

reveal_confirm = (element) ->

  confirm_localization = $.extend {},
    localization_defaults, window.confirm_localization

  confirm = element.data('confirm')
  message = element.data('message') || ''
  confirm_localization['ok'] = element.data('verb')

  return true unless confirm
  if typeof confirm == 'string'
    return window.confirm confirm

  modal = $ """
    <div class='reveal-modal small'>
      <h2 class='header'></h2>
      <p class='warning'></p>
      <p>#{message}</p>
      <div class='footer'>
        <a class='cancel-button secondary white button radius inline'>
          #{confirm_localization['cancel']}
        </a>
      </div>
    </div>
    """

  modal
    .find('.header')
    .html(confirm.title || confirm_localization['title'])
  modal
    .find('.warning')
    .html(confirm.body || confirm_localization['body'])

  confirm_button = if element.is('a') then element.clone() else $('<a/>')
  confirm_button
    .removeAttr('class')
    .removeAttr('data-confirm')
    .addClass('button radius red inline confirm')
    .html(confirm.ok || confirm_localization['ok'])

  if element.is('form') or element.is(':input')
    confirm_button.on 'click', ->
      element
        .closest('form')
        .removeAttr('data-confirm')
        .submit()

  modal
    .find('.cancel-button')
    .on 'click', (e) ->
      modal.foundation('reveal', 'close')
  modal
    .find('.footer')
    .append(confirm_button)

  if (password = confirm.password || confirm_localization['password'])
    confirm_label =
      (confirm.prompt || confirm_localization['prompt'])
        .replace '%s', password
    confirm_html = """
      <label>#{confirm_label}</label>
      <input class='confirm-password' type='text' />
      """
    modal
      .find('.warning')
      .after($(confirm_html))
    modal
      .find('.confirm-password')
      .on 'keyup', (e) ->
        confirm_button.toggleClass 'disabled', $(this).val() != password
    confirm_button
      .addClass('disabled')
      .on 'click', (e) ->
        return false if $(this).hasClass('disabled')

  modal
    .appendTo($('body'))
    .foundation('reveal', 'open')
    .on 'closed.fndtn.reveal', (e) ->
      modal.remove()

  return false

if $.rails

  $.rails.allowAction = reveal_confirm

else

  confirm_handler = (e) ->
    proceed = reveal_confirm $(this)
    if !proceed
      e.preventDefault()
      e.stopImmediatePropagation()
    proceed
  $(document).on 'click', 'a[data-confirm], :input[data-confirm]', confirm_handler
  $(document).on 'submit', 'form[data-confirm]', confirm_handler
