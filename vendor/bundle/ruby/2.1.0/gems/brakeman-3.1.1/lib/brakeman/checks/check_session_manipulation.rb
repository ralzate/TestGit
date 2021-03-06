require 'brakeman/checks/base_check'

class Brakeman::CheckSessionManipulation < Brakeman::BaseCheck
  Brakeman::Checks.add self

  @description = "Check for user input in session keys"

  def run_check
    tracker.find_call(:method => :[]=, :target => :session).each do |result|
      process_result result
    end
  end

  def process_result result
    return if duplicate? result or result[:call].original_line
    add_result result

    index = result[:call].first_arg

    if input = has_immediate_user_input?(index)
      if params? index
        confidence = CONFIDENCE[:high]
      else
        confidence = CONFIDENCE[:med]
      end

      warn :result => result,
        :warning_type => "Session Manipulation",
        :warning_code => :session_key_manipulation,
        :message => "#{friendly_type_of(input).capitalize} used as key in session hash",
        :code => result[:call],
        :user_input => input.match,
        :confidence => confidence
    end
  end
end
