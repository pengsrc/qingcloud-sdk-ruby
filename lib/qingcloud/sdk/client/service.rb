module QingCloud
    module Cli
        module Client

            class Service < Foundation

                def check_api_keys
                    begin
                        eval(build_fetch_match)
                    rescue Error::APIError
                        false
                        self.response['ret_code'] == 1200 ? false : true
                    end
                end

                def describe_zones(
                    zones = [],
                    status = []) eval(build_fetch_match)
                end

                def describe_jobs(
                    zone,
                    jobs = [],
                    status = [],
                    job_action = nil,
                    verbose = nil,
                    offset = nil,
                    limit = nil) eval(build_fetch_match)
                end

                def describe_instances(
                    zone,
                    instances = [],
                    image_id = [],
                    instance_type = [],
                    status = [],
                    search_word = nil,
                    verbose = nil,
                    offset = nil,
                    limit = nil)eval(build_fetch_match)
                end

                def run_instances(
                    zone,
                    image_id,
                    login_mode,
                    instance_type = nil,
                    cpu = nil,
                    memory = nil,
                    count = 1,
                    instance_name = nil,
                    login_keypair = nil,
                    login_passwd = nil,
                    vxnets = [],
                    security_group = nil,
                    volumes = [],
                    need_newsid = nil,
                    need_userdata = nil,
                    userdata_type = nil,
                    userdata_value = nil,
                    userdata_path = nil)eval(build_fetch_match)
                end

                def terminate_instances(
                    instances,
                    zone)eval(build_fetch_match)
                end
            end

        end
    end
end