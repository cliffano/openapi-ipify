# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Ipify.Api.Default do
  @moduledoc """
  API calls for all endpoints tagged `Default`.
  """

  alias Ipify.Connection
  import Ipify.RequestBuilder


  @doc """
  Get your public IP address

  ## Parameters

  - connection (Ipify.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :format (String.t): Response format
    - :callback (String.t): JSONP callback function name
  ## Returns

  {:ok, %Ipify.Model.Object{}} on success
  {:error, info} on failure
  """
  @spec get_ip(Tesla.Env.client, keyword()) :: {:ok, Ipify.Model.Object.t} | {:error, Tesla.Env.t}
  def get_ip(connection, opts \\ []) do
    optional_params = %{
      :"format" => :query,
      :"callback" => :query
    }
    %{}
    |> method(:get)
    |> url("/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Ipify.Model.Object{})
  end
end
