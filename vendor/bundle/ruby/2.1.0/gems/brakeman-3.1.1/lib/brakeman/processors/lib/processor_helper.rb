#Contains a couple shared methods for Processors.
module Brakeman::ProcessorHelper
  def process_all exp
    exp.each_sexp do |e|
      process e
    end
    exp
  end

  def process_all! exp
    exp.map! do |e|
      if sexp? e
        process e
      else
        e
      end
    end

    exp
  end

  #Process the arguments of a method call. Does not store results.
  #
  #This method is used because Sexp#args and Sexp#arglist create new objects.
  def process_call_args exp
    exp.each_arg do |a|
      process a if sexp? a
    end

    exp
  end

  def process_class exp
    current_class = @current_class
    @current_class = class_name exp[1]
    process_all exp.body
    @current_class = current_class
    exp
  end

  #Sets the current module.
  def process_module exp
    module_name = class_name(exp.class_name).to_s
    prev_module = @current_module

    if prev_module
      @current_module = "#{prev_module}::#{module_name}"
    else
      @current_module = module_name
    end

    if block_given?
      yield
    else
      process_all exp.body
    end

    @current_module = prev_module

    exp
  end
end
