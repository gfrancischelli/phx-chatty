# WORKLOG

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

### Thoughts

Read [An upcoming authentication solution for Phoenix](https://dashbit.co/blog/a-new-authentication-solution-for-phoenix) by José Valim, great writing as usual.
There I've found the [original pull request](https://github.com/dashbitco/mix_phx_gen_auth_demo/pull/1/files), really informative discussions.
One link that got my attention was [Password breach lookup and other password validation rules](https://powauth.com/guides/2019-09-14-password-breach-lookup-and-other-password-validation-rules.html), in example it cites rejecting "passwords obtained from previous data breaches". Neat stuff.

Configuring tailwind was a breeze, and the pomodoro is working really well in keeping me focused.
