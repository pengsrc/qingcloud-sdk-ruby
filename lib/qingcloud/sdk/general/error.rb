module QingCloud
    module SDK
        module Error

            class SDKError < StandardError
            end

            class NetworkError < SDKError
                def message
                    'Network Error, please check your internet connection.'
                end
            end

            class ServerError < SDKError
                def initialize(code)
                    super "Server Response with Error Code \"#{code}\"."
                end
            end

            class ParameterError < SDKError
                def initialize(something)
                    super "Parameter Error when \"#{something}\"."
                end
            end

            class APIError < SDKError
                def initialize(something)
                    super "API Error: \"#{something}\"."
                end
            end

            class AnalyseError < SDKError
                def initialize(something)
                    super "Analyse Error when \"#{something}\"."
                end
            end
        end
    end
end