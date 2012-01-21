# Introducing book-store #
## Recommend  your favorite books to your friends ##
hosting your own book-store, you and your friends can tag and share your favorite books.  Everyone has that critical resources that represence the difference between understanding and confusion: now you can reference your friends' recommendations right on their profile pages using the included imbeddable widget


## Dependencies ##
Current server-side dependencies are
* mongodb
* sinatra
* json

## API ##
depending on your preferred access format

     '/json'
     '/xml' # not implemented

the general form for accessing the API

     '/:type/:object/:method' 

objects will include:

* user
    * create
    * read
    * update
    * delete
    * promote
    * demote
    * verify
    * books # returns full book records, per user, unless specified
    * tags #returns tagnames for user, including book counts

* book
    * create # returns a handle for the book (_id)
    * read(id) # will display the book, title, ISBN and a list ([]) of tags for the book
    * update(id) # adds/removes tags, modifies associated tag counts
    * delete(id) # deletes the book, and reduces associated tag counts

* tag (not exposed in the web-based api)
    * create
    * read
    * update
    * delete


  



