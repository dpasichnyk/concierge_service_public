class Listing < ApplicationRecord
  belongs_to :inquiry

  enum :manufacturer, [
    "Alfa Romeo",
    "Auburn",
    "Barkas",
    "Colani",
    "DB",
    "De Lorean",
    "Dixi",
    "Ford (GB)",
    "Frazer Nash",
    "Goliath",
    "Innocenti",
    "Intermeccanica",
    "Isuzu",
    "Kaiser",
    "Lada (VAZ)",
    "Lancia",
    "Lombardi",
    "Mercury",
    "Morris",
    "Opel",
    "Rover",
    "Saab",
    "Singer",
    "Steyr",
    "Veritas",
    "Victoria",
    "Salmson",
    "Eunos",
    "Autokraft",
    "Ford (F)"
  ]
end
