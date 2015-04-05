module QingCloud
    module SDK
        module Contract

            CONFIG_FILE_DIRECTORY = "#{Dir.home}/.qingcloud"
            CONFIG_FILE_NAME = 'qingcloud.json'
            CONFIG_FILE_PATH = "#{CONFIG_FILE_DIRECTORY}/#{CONFIG_FILE_NAME}"

            LOG_FILE_DIRECTORY = CONFIG_FILE_DIRECTORY
            LOG_FILE_NAME = 'qingcloud.log'
            LOG_FILE_PATH = "#{LOG_FILE_DIRECTORY}/#{LOG_FILE_NAME}"

            API_URL = 'https://api.qingcloud.com/iaas/?'

        end
    end
end