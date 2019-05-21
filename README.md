# ASW 2018-2019 Q2

Try it here: [https://asw-issue.herokuapp.com/](https://asw-issue.herokuapp.com/)

Authors:
- Maurici Abad
- Sandra Flores
- Xavier Font
- Raimon Mercé

## How to run

### First time

```bash
bundle install
sudo apt-get install libmagickwand-dev
sudo apt-get update
sudo apt-get install imagemagick --fix-missing
```

### To test the API

1. Change in [/swagger/v1/swagger.json](/swagger/v1/swagger.json): `"schemes": "https"` to `"schemes": "http"`.
2. Run `rails s`
3. Browse to: [http://localhost:3000/api-docs](http://localhost:3000/api-docs)
