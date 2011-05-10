RandomPasswordGenerator
=============

`Backmark` gem can be used to mark pages with labels that can be linked back from future pages as back links.
Also remembers the last accessed non Create/Update/Delete page (as in CRUD).
For instance, a user is viewing items index, and navigates to 'new item' page.
Once he is done with the creation of the item (i.e., POST to items/create),
it would be nice if the user is taken to the index page rather than the 'new'
page, which was the LAST VISITED page. Hence, such CUD actions are `not_remembered`.

Installation
------------

    gem install back_mark

Usage
-----

`back_mark` marks the current url with the given label.
Invoke from an action with a meaningful label, if you want that page to be linked back from future pages

## Arguments:

- `label` :: label for the back mark
- `url_to_mark` :: the url to remember instead of the current request url. Default is `request.url`
- `mark_now` :: Mark the location so that the back link can be rendered in the current action. Default is `false`

## Examples:

    back_mark("Inbox")
    back_mark("Home")
    back_mark("Login", '/Login', true)

The request can be redirected to the back link stored in the session or the default url passed by invoking the method `redirect_to_back_mark_or_default`.
The argument is the url to be redirected to incase there is no back link.
Please note that we redirect back to the url stored by the filter. Not the last back_marked url.

    redirect_to_back_mark_or_default(`default_url`)

For example:

    redirect_to_back_mark_or_default(users_path)

The back_marking can be made easy by adding `back_mark_pages` as a `before_filter` to the action in the controller.

    before_filter :back_mark_pages


Author
------

B V Satyaram <[bvsatyaram.com](http://bvsatyaram.com)>
Inspired by back mark plugin authored by Vikram Venkatesan