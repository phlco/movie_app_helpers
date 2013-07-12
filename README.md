# Helpers
[Numbers](http://api.rubyonrails.org/classes/ActionView/Helpers/NumberHelper.html#method-i-number_to_phone)

[Text](http://api.rubyonrails.org/classes/ActionView/Helpers/TextHelper.html#method-i-truncate)

[Date](http://api.rubyonrails.org/classes/ActionView/Helpers/DateHelper.html#method-i-distance_of_time_in_words)

- Create a view helper in the movies view helper to format imdb's movie.length as "1 hour and 55 minutes"
- for each search result display the first 50 characters of the plot
- display rating as a percentage
- remove some of your logic in your views into view helpers
- show when the last time a movie was voted on, faved or saved
- show number of search results as "85 search results" for both IMDB and your own DB

## bonus tip! to test out helpers in rails console try the following

fire up rails console

```bash
$ rails c
```

if you call it in your view with ``` <%= pluralize(3, person') %>```

you can test it out in rails console with the helper object

```bash
[2] pry(main)> helper.pluralize(3, 'amigo')
=> "3 amigos"
[3] pry(main)> helper.pluralize(3, 'person')
=> "3 people"
```
