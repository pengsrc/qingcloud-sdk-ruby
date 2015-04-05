require 'spec_helper'

module QingCloud
    module SDK

        RSpec.describe Client::Service do

            it 'check_api_key', focus: true do
                c = Client::Connector.init_with_config_file
                s = Client::Service.new c
                puts s.check_api_keys
            end
            
            it 'can DescribeZones' do
            
                c = Client::Connector.init_with_config_file
                s = Client::Service.new c
                s.describe_zones status_N: ['active']
                expect(s.response['action'] == 'DescribeZonesResponse').to be true
            end
            
            it 'can DescribeJobs' do
            
                c = Client::Connector.init_with_config_file
                s = Client::Service.new c
                s.describe_jobs zone: 'ap1'
                expect(s.response['action'] == 'DescribeJobsResponse').to be true
            end
            
            it 'can DescribeInstances' do
            
                c = Client::Connector.init_with_config_file
                s = Client::Service.new c
                s.describe_instances zone: 'ap1'
                expect(s.response['action'] == 'DescribeInstancesResponse').to be true
            end

        end

    end
end