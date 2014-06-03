class Thermostat < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  has_many :history_thermostats
  has_many :issues
  has_many :planners
  has_one :alarm

  validates :serial,uniqueness: {case_sensitive: false, :message => "Este termostato ya fue registrado"}	
  validates :serial, presence: {:message => "Es un campo obligatorio"}
  validates :serial, length: {minimum: 5, maximum: 10, :message => "El serial debe tener minimo 5 y maximo 10 caracteres"}
  validates :serial, format: {with: /\A[A-Z0-9]+\z/, message: "Solo ingresar letras mayusculas y numeros"}
end
