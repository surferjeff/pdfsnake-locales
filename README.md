# pdfsnake-locales

Localized messages for [pdfsnake.app](https://pdfsnake.app).

# How to add your support for your language to [pdfsnake.app](https://pdfsnake.app).

1.  Find a page like [www.prepressure.com](https://www.prepressure.com/prepress/imposition) in your language.  Study and learn the correct terms for printing and imposition in your language.
    They won't always translate directly.  For example, I'd be surprised if the term
    for print "bleed" is related to blood in any language except English.

2.  Fork this repository.

3.  Copy the files `messages/en.json` to a file name for your
    [language code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes).

4.  Translate all the English values in *your-lang*.json.

    - **Translate only the values in *your-lang*.json.**  Don't translate the keys.  For example, translate

        ```    "signIn": "Sign In",```

        into

        ```    "signIn": "Fazer login",```

        Notice how the key `signIn` wasn't translated.

    - **Preserve product names.**  For example, `PDF Snake` should be preserved.  Don't translate it into
    `PDF serpiente`.

    - **Preserve {placeholders}.**  Some values have placeholders surrounded by curly braces.  Preserve the contents of those placeholders.  For example, translate:

        ```    "privacy": "Read our {link}.",```

        into

        ```    "privacy": "Lea nuestro {link}.",```

        Notice how the placeholder `link` wasn't translated.

    - **Use HTML sparingly.**  A handful of keys have the suffix `Html` like this:

        ```    "bookletHtml": "<b>Booklet</b> reorders and imposes pages 2-up so the result can be printed, stacked, and folded in half.",```

        Only use html tags for bold or italic when suitable for your language.  Never add links, javascript, or any other HTML tags.
        Only keys with the suffix `Html` are interpreted as HTML.

5.  Copy the files `search/en.json` to a file name for your
    [language code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes).

6.  Translate the search terms in *your-lang*.json.  There may 

6.  Create a pull request on this repository.

