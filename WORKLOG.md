# WORKLOG

## 17/02/2021

### Learnings

- Ecto `fetch_change` is useful for doing something only if a value changed.
- It is a very good thing to be able to change how data enters the system without having to touch the controllers, using callbacks and any other indirections.
- Phoenix has a `Phoenix.Param` protocol that allows route generation to extract `id`s from structs. Protocols can be defined any time anywhere, and it is beautiful that we can change how phoenix get params without changing phoenix or our modules.

## 16/02/2021

### Learnings

- Ecto Sandbox wraps each test in a transaction to isolate tests. What wasn't clear to me is that is even enable concurrent tests within the same database. Neat.
- Testing Phoenix controllers fully exercise the router and pipelines because we call the controller the same way phoenix does.
- As with most "boilerplate" files, `Example.ConnCase` is just a foundation that can be personalized. I love how the framework creates extensibility, everything is explicit.
- Tags are passed to the test context. Alongside setup and describe tags are very useful.

## 15/02/2021

Oh boy, I just recovered from COVID. Not a great experience. Been studying for three days. After having trouble inserting an SVG, I decided to read **Programming Phoenix**. Understanding better the templates motivated me. Looking back, I think I should've started this way since there is no hurry on finishing this project.

Should've written my findings on the book sooner. Better late than even later.

### Learnings

- Ecto provides great constraint tools like `assoc_constraint()` and `unique_constraint()` to create human readable error messages
- Ecto migration `references()` accepts `:on_delete` option, good to configure after a `has_many` or `belongs_to` association
- Letting the application crash is a good call when the user can't do anything about it. Error messages are not relevant in this case.
  `"Using changeset constraints only makes sense if the error message can be something the user can take action on."`
- An additional benefit of testing is the context having to satisfy many clients, the controller an the tests. That should make a good sanity test if our api design is correct

## 28/01/2021

## Intentions

- Learn more about testing, I want to be sure I'm not writing "untestable" code.

## Log

- Keep in mind Ecto `put_change` skips any validation.
- `@subject App.MyModule` is a nice way to indicate we are testing this module
- Using `assert` isn't mandatory but yields better errors messages.
- Another Ecto win: testing changeset is decoupled from database operations, resulting in side-effect free tests.
- `Mox` is a lib for mocks without global state aligned with the Elixir philosophy of explicitness (by requiring explicit contracts through behaviours)
- `Ecto.Adapters.SQL.Sandbox` pool adapter wraps each connection to the db in a transaction allowing safe concurrent tests that hit the db. It is usually configured as `:manual` mode on `test_helper.exs`, which means we have to manually handle the connection on each test.
- Losing a lot of time because my migrations are not updating the test database, even after dropping it and creating again. Sad :c

## 27/01/2021

## Intentions

- Continue reading about `Ecto` on Mastering Elixir

## Log

- `Ecto` migration `change` op is capable of figuring out how to revert the change. Should look up how the macro does this later.
- todo: add tests to channel-owner association s

## 26/01/2021

### Intentions

- Start working with Channels crud
- Learn more about Ecto

## Log

- TIL about [KSUID](https://segment.com/blog/a-brief-history-of-the-uuid/) in [Mastering Elixir](https://www.packtpub.com/product/mastering-elixir/9781788472678). They are safe, cheap, sortable by generation time unique identifiers.
- In the same book, remembered that is a good idea to simulate password_hash checking so we protect our system against timing attacks.
- The book works on an example where the `Accounts` context owns the `User` schema. A different context, `Storage` needs to interact with users but can't since it is already on the `Accounts` ctx. The solution is to write an `Owner` schema on the `Storage` ctx **backed by the same `users` table**. Organizing things around bounded contexts helps us avoid managing huge schemas that must satisfy every need of different parts of our application. Each context with it's own perspective on what that resource is. That's what I call _neat_.

## 25/01/2021

### Intentions

- Setting up phx.gen.auth
- Start learning/using liveview
- Style the authentication pages

### Log

- I've setup the authentication with `phx.gen.auth`. Now I'm creating the frontend with LiveView
- Started doing the authentication frontend using `LiveView`. Nearly the end, I discovered it [isn't a good ideia](https://elixirforum.com/t/how-to-manage-session-state-with-live-view/21196/17), since the session can't be edited from `handle_events()`
- Using tailwindcss is really fast to make things look good. Also fun.
- Learned about the phoenix view form helpers. Neat way to deliver validation messages.
- Register and Log in pages are styled. They are _very_ similar, wonder if there is a neat way to componentize those styles so I shouldn't have to edit both files when something changes

## 24/01/2021

Yey first commit 🚀

### Intentions

- Develop this [Chat Group challenge](https://devchallenges.io/challenges/UgCqszKR7Q7oqb4kRfI0) using Phoenix LiveView
- Configure TailwindCSS on Phoenix, [using this method from Mike Clark](https://pragmaticstudio.com/tutorials/adding-tailwind-css-to-phoenix)
- Become a master testers with Elixir
- Test the upcoming Phoenix [authentication generator](https://github.com/aaronrenner/phx_gen_auth)
- Deploy to minikube early on, I want to sharpen my Helm skills
- Use pomodoro technique, I'm loving [this one for ubuntu](https://gnomepomodoro.org/). I've become an alttabber during the last few year, must break this habit

### Log

Read [An upcoming authentication solution for Phoenix](https://dashbit.co/blog/a-new-authentication-solution-for-phoenix) by José Valim, great writing as usual.
There I've found the [original pull request](https://github.com/dashbitco/mix_phx_gen_auth_demo/pull/1/files), really informative discussions.
One link that got my attention was [Password breach lookup and other password validation rules](https://powauth.com/guides/2019-09-14-password-breach-lookup-and-other-password-validation-rules.html), in example it cites rejecting "passwords obtained from previous data breaches". Neat stuff.

Configuring tailwind was a breeze, and the pomodoro is working really well in keeping me focused.
