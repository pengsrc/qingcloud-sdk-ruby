module QingCloud
    module SDK
        module Client

            class Foundation

                ERROR_CODE_MAP = {
                    1100 => 'Request Format Invalid',
                    1200 => 'Authentication Failed',
                    1300 => 'Request Expired',
                    1400 => 'Request Denied',
                    2100 => 'Resource Not Found',
                    2400 => 'Balance Insufficient',
                    2500 => 'Over Quota',
                    5000 => 'Internal Error',
                    5100 => 'Server Busy',
                    5200 => 'Resources Inadequate',
                    5300 => 'Server Updating',
                }

                attr_accessor :response

                def initialize(connector)
                    @connector = connector
                end

                private

                def fetch_response(action, params={})

                    params.map { |key, value|
                        params.delete key unless (value.is_a? Numeric) || (value && value.length > 0)
                    }

                    response_body = @connector.fetch action, params

                    raise Error::APIError, 'No Response Data Received' unless response_body['ret_code']

                    self.response = response_body

                    if response_body['ret_code'] != 0
                        raise Error::APIError, response_body['message'] || ERROR_CODE_MAP[response_body['ret_code']]
                    end
                end

                def merge_maps(maps)
                    final = {}
                    maps.map { |map| final.merge! map }
                    final
                end

                def build_fetch(action_name)
                    "
                    fetch_response(
                        \"#{action_name}\",
                        eval('merge_maps(method(__method__).parameters.map { |_, p| {p.to_sym => eval(p.to_s)} })')
                    )
                    "
                end

                def build_fetch_match
                    "
                    fetch_response(
                        __method__.to_s.split('_').map{ |w| w.capitalize! }.join,
                        eval('merge_maps(method(__method__).parameters.map { |_, p| {p.to_sym => eval(p.to_s)} })')
                    )
                    "
                end
            end

        end
    end
end