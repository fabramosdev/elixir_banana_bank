defmodule BananaBankWeb.UsersJSON do
  alias BananaBank.Users.User

  def create(%{user: user}) do
    %{
      data: data(user),
      message: "User #{user.name} created successfully"
    }
  end

  def get(%{user: user}) do
    %{
      data: data(user),
      message: "User #{user.name} found"
    }
  end

  defp data(%User{} = user) do
    %{
      id: user.id,
      name: user.name,
      email: user.email,
      cep: user.cep
    }
  end
end
