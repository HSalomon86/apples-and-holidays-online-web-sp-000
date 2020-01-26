require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, hash|
    if season == :winter
      hash.each do |holiday, items|
        items << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, hash|
    if season == :spring
      hash.each do |holiday, items|
        items << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
hash = {holiday_name => supply_array}
holiday_hash[season] = hash
  # remember to return the updated hash
holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
supplies = []
  holiday_hash.each do |season, hash|
    if season == :winter
      hash.each do |holiday, items|
        supplies << items
      end
    end
  end
      return supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do |season,holidays|
  period = season.to_s
  period.capitalize!
  puts "#{period}:"
    holidays.each do |holiday, items|
      holly = holiday.to_s
      array = holly.split("_")
      new_array = array.collect { |x| x.capitalize}
      holly = new_array.join(" ")
      puts "  #{holly}: #{items.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.map do |season, holidays|
    holidays.map { |e|  } do |holiday, items|
      if items.include?("BBQ")
        array << holiday
      end
    end
  end
  array
end
