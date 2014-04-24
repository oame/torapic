module API
  module ErrorFormatter
    def self.call message, backtrace, options, env
      { error: {code: options[:default_status]} }.to_json
    end
  end
end
