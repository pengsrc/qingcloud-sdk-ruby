require 'spec_helper'

module QingCloud
    module SDK

        RSpec.describe Client::Connector do

            it 'can connect' do

                c = Client::Connector.init_with_config_file
            end

        end

    end
end