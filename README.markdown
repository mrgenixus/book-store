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

### Implemented Routes ###
> *assume prepended '/:type'*

**Authentication**

*Loggin in*

    /auth/create
    /auth/login

*POST*

    {
        username: "mrgenixus"
        password: "Sekrit Password"
    }

