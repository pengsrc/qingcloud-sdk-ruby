require 'json'

module QingCloud
    module SDK
        module Utility

            def self.json_parser
                unless self.class_variable_defined? '@@json_parser'
                    @@json_parser = JsonParser.new
                end
                @@json_parser
            end

            class JsonParser

                def encode(object)
                    guarantee(Proc.new do; JSON.generate object; end)
                end

                def encode_prettily(object)
                    guarantee(Proc.new do; JSON.pretty_generate object; end)
                end

                def decode(string)
                    guarantee(Proc.new do; JSON.parse string; end)
                end

                private

                def guarantee(proc)
                    begin
                        proc.call
                    rescue JSON::ParserError
                        raise Error::AnalyseError, 'Parse Json'
                    end
                end

            end
        end
    end
end