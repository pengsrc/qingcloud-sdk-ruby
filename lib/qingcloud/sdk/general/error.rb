module QingCloud
    module SDK
        module Error

            class CommonError < StandardError
                def initialize(message=nil)
                    super "Encounter Error: #{message || 'Unknown'}."
                end
            end

            class NetworkError < StandardError
                def message
                    'Network Error, please check your internet connection.'
                end
            end

            class AnalyseError < StandardError
                def initialize(something)
                    super "Analyse Error when \"#{something}\"."
                end
            end

            class ParameterError < StandardError
                def initialize(something)
                    super "Parameter Error when \"#{something}\"."
                end
            end

            class ServerError < StandardError
                def initialize(code)
                    super "Server Response with Error Code \"#{code}\"."
                end
            end

            class APIError < StandardError
                def initialize(something)
                    super "API Error: \"#{something}\"."
                end
            end
        end
    end
end