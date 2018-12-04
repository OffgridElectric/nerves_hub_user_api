defmodule NervesHubCore.User do
  @moduledoc """
  Manage NervesHub users

  Path: /users
  """

  alias NervesHubCore.Auth

  # Certificate protected
  @doc """
  Returns information about the user.

  Verb: GET
  Path: /users/me
  """
  @spec me(NervesHubCore.Auth.t()) :: {:error, any()} | {:ok, any()}
  def me(%Auth{} = auth) do
    NervesHubCore.request(:get, "users/me", "", auth)
  end

  # Username / Password protected endpoints
  @doc """
  Register a new user.

  Verb: POST
  Path: /users/register
  """
  @spec register(binary(), binary(), binary()) :: {:error, any()} | {:ok, any()}
  def register(username, email, password) do
    params = %{username: username, email: email, password: password}
    NervesHubCore.request(:post, "users/register", params)
  end

  @doc """
  Validate authtication of an existing user.

  Verb: POST
  Path: /users/auth
  """
  @spec auth(binary(), binary()) :: {:error, any()} | {:ok, any()}
  def auth(email, password) do
    params = %{email: email, password: password}
    NervesHubCore.request(:post, "users/auth", params)
  end

  @doc """
  Sign a user certificate for an existing user.

  Verb: POST
  Path: /users/sign
  """
  @spec sign(binary(), binary(), binary(), binary()) :: {:error, any()} | {:ok, any()}
  def sign(email, password, csr, description) do
    params = %{email: email, password: password, csr: csr, description: description}
    NervesHubCore.request(:post, "users/sign", params)
  end
end
