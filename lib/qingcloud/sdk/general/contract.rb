module QingCloud
    module SDK
        module Contract

            SUPPORT_DIRECTORY = "#{Dir.home}/.qingcloud"
            CONFIG_FILE_NAME = 'qingcloud.json'
            CONFIG_FILE_PATH = "#{SUPPORT_DIRECTORY}/#{CONFIG_FILE_NAME}"
            LOG_FILE_NAME = 'qingcloud.log'
            LOG_FILE_PATH = "#{SUPPORT_DIRECTORY}/#{LOG_FILE_NAME}"

            TEMPLATE_DIRECTORY = Gem::Specification.find_by_name('qingcloud-sdk').gem_dir + '/lib/qingcloud/sdk/template'
            TEMPLATE_CONFIG_FILE_NAME = 'qingcloud.json'
            TEMPLATE_CONFIG_FILE_PATH = "#{TEMPLATE_DIRECTORY}/#{TEMPLATE_CONFIG_FILE_NAME}"

            API_URL = 'https://api.qingcloud.com/iaas/?'

        end
    end
end