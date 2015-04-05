require 'spec_helper'

module QingCloud
    module SDK

        RSpec.describe Utility do

            it 'has logger' do
                # Utility.logger.info 'Information'
                # Utility.logger.debug 'Debug'
                # Utility.logger.error 'Error'
                expect(Utility.logger).not_to be nil
                expect(Utility.logger.class).to eql Logger
            end

            it 'has file manager', focus: true do
                # Utility.file_manager.write_config_file '{ test: "test" }'
                # Utility.file_manager.read_config_file
                # Utility.file_manager.create_new_config_file
                expect(Utility.file_manager).not_to be nil
                expect(Utility.file_manager.class).to eql Utility::FileManager
            end

            it 'has json parser' do
                # puts Utility.json_parser.decode(
                #          Utility.json_parser.encode(
                #              { test: 'test'}
                #          )
                #      )
                expect(Utility.json_parser).not_to be nil
                expect(Utility.json_parser.class).to eql Utility::JsonParser
            end
        end

    end
end