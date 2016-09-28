class User < ApplicationRecord
  has_secure_password

  def self.find_for_session(session)
    u = find_or_create_by(ex_id: session["id"]) do |user|
      user.first_name = session["first_name"]
      user.last_name = session["last_name"]
    end

    session["role_name"] = session["role"]

    (session.keys-["id", "role"]).each do |key|
      value = session[key]
      u.singleton_class.class_eval { attr_accessor key }
      u.instance_variable_set("@#{key}".to_sym, value)
    end if u
    u
  end
end
