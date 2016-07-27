RSpec::Matchers.define :match_date do |expected|
  match do |actual|
    format_date(actual) == expected
  end

  def format_date date
    "%d-%02d-%02d" % [date.year, date.month, date.day]
  end


  failure_message do |actual|
    "expected that  ' #{form_date(actual)} ' would match ' #{form_date(expected)} ' "
  end

  failure_message_when_negated do |actual|
    "expected that '#{form_date(actual)}' would not be a precise multiple of '#{expected}'"
  end

  description do
    "be a date match of #{expected}"
  end

end