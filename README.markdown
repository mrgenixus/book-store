# Introducing book-store #
## Recommend  your favorite books to your friends ##
hosting your own book-store, you and your friends can tag and share your favorite books.  Everyone has that critical resources that represence the difference between understanding and confusion: now you can reference your friends' recommendations right on their profile pages using the included imbeddable widget


## Dependencies ##
Current server-side dependencies are
* mongodb
* sinatra
* json

## API ##
### Access methods ###
depending on your preferred access format

    '/json'
    '/xml' # not implemented

the general form for accessing the API

    '/:type/:object/:method' 

some parameters must be sent as a post; parameters specified as (get) can be sent as either get or post, but get paramters will be post-pended in the 'directory heirarchy.'

    '/auth/verify/adf15624bgd4123481138816134118342354'

### Interfaces ###

* auth
    * create | login

    > **params**
    >    * username (post)
    >    * password (post)

    > returns 

        {_session:token;error:null|"invalid"|"unverified"}

    * verify 

    > **params**
    >     * token (get)

    * delete | logout #  ... should be self-explanitory

    * api_login # not implemented

        > **params**
        >    * token (get)

    * generate_api_token # not implemented

* user
    * create

    > **params**
    >    * username (post)
    >    * password (post)
    >    * email (post)

    > returns 

        {
            _id:mongo_id|null, 
            error:null|"user exists"|"access denied"
        }

    * read

    > **params**

    >    * method # list of strings (POSTED) from list: 
    >    * opts_hash (post)

        {
            username:[
               "mrgenixus",
               "book-store"
            ],
            email:[
                "mrgenixus@gmail.com"
            ]
        }

    return json-string

        [
            {
                _id: mongo_id,
                name: "Sinatra: Up and Running",
                ISBN-10: 1449304230,
                ISBN-13: 978-1449304232,
                tags: "Sinatra Ruby Web-Programming"
            }
        ]

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


## Features not implemented ##
* but under consideration *

* privacy settings
* twitter login
* openid login
* comments




