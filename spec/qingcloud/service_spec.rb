require 'spec_helper'

module QingCloud
    module SDK

        RSpec.describe IaaS::Service do

            it 'check_api_key', focus: true do
                c = IaaS::Connector.init_with_config_file
                s = IaaS::Service.new c
                puts s.check_api_keys
            end
            
            it 'can DescribeZones' do
            
                c = IaaS::Connector.init_with_config_file
                s = IaaS::Service.new c
                s.describe_zones status_N: ['active']
                expect(s.response['action'] == 'DescribeZonesResponse').to be true
            end
            
            it 'can DescribeJobs' do
            
                c = IaaS::Connector.init_with_config_file
                s = IaaS::Service.new c
                s.describe_jobs zone: 'ap1'
                expect(s.response['action'] == 'DescribeJobsResponse').to be true
            end
            
            it 'can DescribeInstances' do
            
                c = IaaS::Connector.init_with_config_file
                s = IaaS::Service.new c
                s.describe_instances zone: 'ap1'
                expect(s.response['action'] == 'DescribeInstancesResponse').to be true
            end

        end

    end
end