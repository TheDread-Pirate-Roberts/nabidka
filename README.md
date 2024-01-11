# Nabidka
A safe and simple approach to offers. My plan was to use a generic out of the box approach.

I was able to get away with just
- PG
- Devise
- Tailwind

### Setup 
```
bundle install
```

For the following, PG needs to be running. I'm using brew services.
```
rails db:create
```

```
rails db:migrate
```

```
rails db:seed
```

```
rails assets:precompile
```

```
foreman start
```

### Tests
I added a few tests. Nothing fancy, just some basic spot checks along the way.
```
rails test
```

##### Random
Does anyone else feel like they are contributing to a time capsule when they write in a readme?
