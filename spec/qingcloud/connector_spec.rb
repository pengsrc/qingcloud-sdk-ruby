require 'spec_helper'

module QingCloud
    module SDK

        RSpec.describe IaaS::Connector do

            it 'can connect' do

                c = IaaS::Connector.init_with_config_file
            end

        end

    end
end