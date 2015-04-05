require 'spec_helper'

module QingCloud
    module SDK

        RSpec.describe Client::Service  do

            # it 'check_api_key', do
            #     c = Connector.init_with_config_file
            #     i = Component::Interface.new c
            #     puts i.check_api_keys
            # end
            #
            # it 'can DescribeZones' do
            #
            #     c = Connector.init_with_config_file
            #     i = Component::Interface.new c
            #     i.describe_zones [], status=['active']
            #     puts i.response
            #     expect(i.response['action'] == 'DescribeZonesResponse').to be true
            # end
            #
            # it 'can DescribeJobs' do
            #
            #     c = Connector.init_with_config_file
            #     i = Component::Interface.new c
            #     i.describe_jobs 'pek2', [], [], nil, nil, nil, nil
            #     puts i.response
            #     expect(i.response['action'] == 'DescribeJobsResponse').to be true
            # end
            #
            # it 'can DescribeInstances' do
            #
            #     c = Connector.init_with_config_file
            #     i = Component::Interface.new c
            #     i.describe_instances 'pek2', [], [], [], [], nil, nil, nil, nil
            #     puts i.response
            #     expect(i.response['action'] == 'DescribeInstancesResponse').to be true
            # end

        end

    end
end