class ConnectionsController < ApplicationController
  def new
    email = params[:connection][:email]
    password = params[:connection][:password]
    token = Kindara::Account.authenticate(email, password)
    connection = Connection.create do |record|
      Kindara::Day.pull(client).each do |day|
        record.days << Day.create(day.to_hash)
      end
    end

  end

end
