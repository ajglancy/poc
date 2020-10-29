# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2020_08_01_preview
  module Models
    #
    # The blob service properties for blob restore policy
    #
    class RestorePolicyProperties

      include MsRestAzure

      # @return [Boolean] Blob restore is enabled if set to true.
      attr_accessor :enabled

      # @return [Integer] how long this blob can be restored. It should be
      # great than zero and less than DeleteRetentionPolicy.days.
      attr_accessor :days

      # @return [DateTime] Deprecated in favor of minRestoreTime property.
      attr_accessor :last_enabled_time

      # @return [DateTime] Returns the minimum date and time that the restore
      # can be started.
      attr_accessor :min_restore_time


      #
      # Mapper for RestorePolicyProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RestorePolicyProperties',
          type: {
            name: 'Composite',
            class_name: 'RestorePolicyProperties',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'days',
                constraints: {
                  InclusiveMaximum: 365,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              last_enabled_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastEnabledTime',
                type: {
                  name: 'DateTime'
                }
              },
              min_restore_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'minRestoreTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
