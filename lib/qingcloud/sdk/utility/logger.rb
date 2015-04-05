require 'logger'

module QingCloud
    module SDK
        module Utility

            def self.logger
                unless self.class_variable_defined? '@@logger'
                    # @@logger = Logger.new(STDOUT)
                    @@logger = Logger.new(Contract::LOG_FILE_PATH)
                end
                @@logger
            end

        end
    end
end