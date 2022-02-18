alias Blogger.Repo
alias Blogger.Users.Role

roles = ~w(Administrator Moderator Editor User Guest)

Enum.each(roles, fn name ->
  Repo.insert!(%Role{name: name})
end)
