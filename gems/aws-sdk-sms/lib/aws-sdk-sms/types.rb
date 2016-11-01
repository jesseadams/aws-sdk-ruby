# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module SMS
    module Types

      # Object representing a Connector
      # @!attribute [rw] connector_id
      #   Unique Identifier for Connector
      #   @return [String]
      #
      # @!attribute [rw] version
      #   Connector version string
      #   @return [String]
      #
      # @!attribute [rw] status
      #   Status of on-premise Connector
      #   @return [String]
      #
      # @!attribute [rw] capability_list
      #   List of Connector Capabilities
      #   @return [Array<String>]
      #
      # @!attribute [rw] vm_manager_name
      #   VM Manager Name
      #   @return [String]
      #
      # @!attribute [rw] vm_manager_type
      #   VM Management Product
      #   @return [String]
      #
      # @!attribute [rw] vm_manager_id
      #   Unique Identifier for VM Manager
      #   @return [String]
      #
      # @!attribute [rw] ip_address
      #   Internet Protocol (IP) Address
      #   @return [String]
      #
      # @!attribute [rw] mac_address
      #   Hardware (MAC) address
      #   @return [String]
      #
      # @!attribute [rw] associated_on
      #   Timestamp of an operation
      #   @return [Time]
      class Connector < Struct.new(
        :connector_id,
        :version,
        :status,
        :capability_list,
        :vm_manager_name,
        :vm_manager_type,
        :vm_manager_id,
        :ip_address,
        :mac_address,
        :associated_on)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateReplicationJobRequest
      #   data as a hash:
      #
      #       {
      #         server_id: "ServerId", # required
      #         seed_replication_time: Time.now, # required
      #         frequency: 1, # required
      #         license_type: "AWS", # accepts AWS, BYOL
      #         role_name: "RoleName",
      #         description: "Description",
      #       }
      # @!attribute [rw] server_id
      #   Unique Identifier for a server
      #   @return [String]
      #
      # @!attribute [rw] seed_replication_time
      #   Timestamp of an operation
      #   @return [Time]
      #
      # @!attribute [rw] frequency
      #   Interval between Replication Runs. This value is specified in hours,
      #   and represents the time between consecutive Replication Runs.
      #   @return [Integer]
      #
      # @!attribute [rw] license_type
      #   The license type to be used for the Amazon Machine Image (AMI)
      #   created after a successful ReplicationRun.
      #   @return [String]
      #
      # @!attribute [rw] role_name
      #   Name of service role in customer's account to be used by SMS
      #   service.
      #   @return [String]
      #
      # @!attribute [rw] description
      #   The description for a Replication Job/Run.
      #   @return [String]
      class CreateReplicationJobRequest < Struct.new(
        :server_id,
        :seed_replication_time,
        :frequency,
        :license_type,
        :role_name,
        :description)
        include Aws::Structure
      end

      # @!attribute [rw] replication_job_id
      #   The unique identifier for a Replication Job.
      #   @return [String]
      class CreateReplicationJobResponse < Struct.new(
        :replication_job_id)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteReplicationJobRequest
      #   data as a hash:
      #
      #       {
      #         replication_job_id: "ReplicationJobId", # required
      #       }
      # @!attribute [rw] replication_job_id
      #   The unique identifier for a Replication Job.
      #   @return [String]
      class DeleteReplicationJobRequest < Struct.new(
        :replication_job_id)
        include Aws::Structure
      end

      class DeleteReplicationJobResponse < Aws::EmptyStructure; end

      # @api private
      class DeleteServerCatalogRequest < Aws::EmptyStructure; end

      class DeleteServerCatalogResponse < Aws::EmptyStructure; end

      # @note When making an API call, pass DisassociateConnectorRequest
      #   data as a hash:
      #
      #       {
      #         connector_id: "ConnectorId", # required
      #       }
      # @!attribute [rw] connector_id
      #   Unique Identifier for Connector
      #   @return [String]
      class DisassociateConnectorRequest < Struct.new(
        :connector_id)
        include Aws::Structure
      end

      class DisassociateConnectorResponse < Aws::EmptyStructure; end

      # @note When making an API call, pass GetConnectorsRequest
      #   data as a hash:
      #
      #       {
      #         next_token: "NextToken",
      #         max_results: 1,
      #       }
      # @!attribute [rw] next_token
      #   Pagination token to pass as input to API call
      #   @return [String]
      #
      # @!attribute [rw] max_results
      #   The maximum number of results to return in one API call. If left
      #   empty, this will default to 50.
      #   @return [Integer]
      class GetConnectorsRequest < Struct.new(
        :next_token,
        :max_results)
        include Aws::Structure
      end

      # @!attribute [rw] connector_list
      #   List of connectors
      #   @return [Array<Types::Connector>]
      #
      # @!attribute [rw] next_token
      #   Pagination token to pass as input to API call
      #   @return [String]
      class GetConnectorsResponse < Struct.new(
        :connector_list,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass GetReplicationJobsRequest
      #   data as a hash:
      #
      #       {
      #         replication_job_id: "ReplicationJobId",
      #         next_token: "NextToken",
      #         max_results: 1,
      #       }
      # @!attribute [rw] replication_job_id
      #   The unique identifier for a Replication Job.
      #   @return [String]
      #
      # @!attribute [rw] next_token
      #   Pagination token to pass as input to API call
      #   @return [String]
      #
      # @!attribute [rw] max_results
      #   The maximum number of results to return in one API call. If left
      #   empty, this will default to 50.
      #   @return [Integer]
      class GetReplicationJobsRequest < Struct.new(
        :replication_job_id,
        :next_token,
        :max_results)
        include Aws::Structure
      end

      # @!attribute [rw] replication_job_list
      #   List of Replication Jobs
      #   @return [Array<Types::ReplicationJob>]
      #
      # @!attribute [rw] next_token
      #   Pagination token to pass as input to API call
      #   @return [String]
      class GetReplicationJobsResponse < Struct.new(
        :replication_job_list,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass GetReplicationRunsRequest
      #   data as a hash:
      #
      #       {
      #         replication_job_id: "ReplicationJobId", # required
      #         next_token: "NextToken",
      #         max_results: 1,
      #       }
      # @!attribute [rw] replication_job_id
      #   The unique identifier for a Replication Job.
      #   @return [String]
      #
      # @!attribute [rw] next_token
      #   Pagination token to pass as input to API call
      #   @return [String]
      #
      # @!attribute [rw] max_results
      #   The maximum number of results to return in one API call. If left
      #   empty, this will default to 50.
      #   @return [Integer]
      class GetReplicationRunsRequest < Struct.new(
        :replication_job_id,
        :next_token,
        :max_results)
        include Aws::Structure
      end

      # @!attribute [rw] replication_job
      #   Object representing a Replication Job
      #   @return [Types::ReplicationJob]
      #
      # @!attribute [rw] replication_run_list
      #   List of Replication Runs
      #   @return [Array<Types::ReplicationRun>]
      #
      # @!attribute [rw] next_token
      #   Pagination token to pass as input to API call
      #   @return [String]
      class GetReplicationRunsResponse < Struct.new(
        :replication_job,
        :replication_run_list,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass GetServersRequest
      #   data as a hash:
      #
      #       {
      #         next_token: "NextToken",
      #         max_results: 1,
      #       }
      # @!attribute [rw] next_token
      #   Pagination token to pass as input to API call
      #   @return [String]
      #
      # @!attribute [rw] max_results
      #   The maximum number of results to return in one API call. If left
      #   empty, this will default to 50.
      #   @return [Integer]
      class GetServersRequest < Struct.new(
        :next_token,
        :max_results)
        include Aws::Structure
      end

      # @!attribute [rw] last_modified_on
      #   Timestamp of an operation
      #   @return [Time]
      #
      # @!attribute [rw] server_catalog_status
      #   Status of Server catalog
      #   @return [String]
      #
      # @!attribute [rw] server_list
      #   List of servers from catalog
      #   @return [Array<Types::Server>]
      #
      # @!attribute [rw] next_token
      #   Pagination token to pass as input to API call
      #   @return [String]
      class GetServersResponse < Struct.new(
        :last_modified_on,
        :server_catalog_status,
        :server_list,
        :next_token)
        include Aws::Structure
      end

      # @api private
      class ImportServerCatalogRequest < Aws::EmptyStructure; end

      class ImportServerCatalogResponse < Aws::EmptyStructure; end

      # Object representing a Replication Job
      # @!attribute [rw] replication_job_id
      #   The unique identifier for a Replication Job.
      #   @return [String]
      #
      # @!attribute [rw] server_id
      #   Unique Identifier for a server
      #   @return [String]
      #
      # @!attribute [rw] server_type
      #   Type of server.
      #   @return [String]
      #
      # @!attribute [rw] vm_server
      #   Object representing a VM server
      #   @return [Types::VmServer]
      #
      # @!attribute [rw] seed_replication_time
      #   Timestamp of an operation
      #   @return [Time]
      #
      # @!attribute [rw] frequency
      #   Interval between Replication Runs. This value is specified in hours,
      #   and represents the time between consecutive Replication Runs.
      #   @return [Integer]
      #
      # @!attribute [rw] next_replication_run_start_time
      #   Timestamp of an operation
      #   @return [Time]
      #
      # @!attribute [rw] license_type
      #   The license type to be used for the Amazon Machine Image (AMI)
      #   created after a successful ReplicationRun.
      #   @return [String]
      #
      # @!attribute [rw] role_name
      #   Name of service role in customer's account to be used by SMS
      #   service.
      #   @return [String]
      #
      # @!attribute [rw] latest_ami_id
      #   The AMI id for the image resulting from a Replication Run.
      #   @return [String]
      #
      # @!attribute [rw] state
      #   Current state of Replication Job
      #   @return [String]
      #
      # @!attribute [rw] status_message
      #   String describing current status of Replication Job
      #   @return [String]
      #
      # @!attribute [rw] description
      #   The description for a Replication Job/Run.
      #   @return [String]
      #
      # @!attribute [rw] replication_run_list
      #   List of Replication Runs
      #   @return [Array<Types::ReplicationRun>]
      class ReplicationJob < Struct.new(
        :replication_job_id,
        :server_id,
        :server_type,
        :vm_server,
        :seed_replication_time,
        :frequency,
        :next_replication_run_start_time,
        :license_type,
        :role_name,
        :latest_ami_id,
        :state,
        :status_message,
        :description,
        :replication_run_list)
        include Aws::Structure
      end

      # Object representing a Replication Run
      # @!attribute [rw] replication_run_id
      #   The unique identifier for a Replication Run.
      #   @return [String]
      #
      # @!attribute [rw] state
      #   Current state of Replication Run
      #   @return [String]
      #
      # @!attribute [rw] type
      #   Type of Replication Run
      #   @return [String]
      #
      # @!attribute [rw] status_message
      #   String describing current status of Replication Run
      #   @return [String]
      #
      # @!attribute [rw] ami_id
      #   The AMI id for the image resulting from a Replication Run.
      #   @return [String]
      #
      # @!attribute [rw] scheduled_start_time
      #   Timestamp of an operation
      #   @return [Time]
      #
      # @!attribute [rw] completed_time
      #   Timestamp of an operation
      #   @return [Time]
      #
      # @!attribute [rw] description
      #   The description for a Replication Job/Run.
      #   @return [String]
      class ReplicationRun < Struct.new(
        :replication_run_id,
        :state,
        :type,
        :status_message,
        :ami_id,
        :scheduled_start_time,
        :completed_time,
        :description)
        include Aws::Structure
      end

      # Object representing a server
      # @!attribute [rw] server_id
      #   Unique Identifier for a server
      #   @return [String]
      #
      # @!attribute [rw] server_type
      #   Type of server.
      #   @return [String]
      #
      # @!attribute [rw] vm_server
      #   Object representing a VM server
      #   @return [Types::VmServer]
      #
      # @!attribute [rw] replication_job_id
      #   The unique identifier for a Replication Job.
      #   @return [String]
      #
      # @!attribute [rw] replication_job_terminated
      #   An indicator of the Replication Job being deleted or failed.
      #   @return [Boolean]
      class Server < Struct.new(
        :server_id,
        :server_type,
        :vm_server,
        :replication_job_id,
        :replication_job_terminated)
        include Aws::Structure
      end

      # @note When making an API call, pass StartOnDemandReplicationRunRequest
      #   data as a hash:
      #
      #       {
      #         replication_job_id: "ReplicationJobId", # required
      #         description: "Description",
      #       }
      # @!attribute [rw] replication_job_id
      #   The unique identifier for a Replication Job.
      #   @return [String]
      #
      # @!attribute [rw] description
      #   The description for a Replication Job/Run.
      #   @return [String]
      class StartOnDemandReplicationRunRequest < Struct.new(
        :replication_job_id,
        :description)
        include Aws::Structure
      end

      # @!attribute [rw] replication_run_id
      #   The unique identifier for a Replication Run.
      #   @return [String]
      class StartOnDemandReplicationRunResponse < Struct.new(
        :replication_run_id)
        include Aws::Structure
      end

      # @note When making an API call, pass UpdateReplicationJobRequest
      #   data as a hash:
      #
      #       {
      #         replication_job_id: "ReplicationJobId", # required
      #         frequency: 1,
      #         next_replication_run_start_time: Time.now,
      #         license_type: "AWS", # accepts AWS, BYOL
      #         role_name: "RoleName",
      #         description: "Description",
      #       }
      # @!attribute [rw] replication_job_id
      #   The unique identifier for a Replication Job.
      #   @return [String]
      #
      # @!attribute [rw] frequency
      #   Interval between Replication Runs. This value is specified in hours,
      #   and represents the time between consecutive Replication Runs.
      #   @return [Integer]
      #
      # @!attribute [rw] next_replication_run_start_time
      #   Timestamp of an operation
      #   @return [Time]
      #
      # @!attribute [rw] license_type
      #   The license type to be used for the Amazon Machine Image (AMI)
      #   created after a successful ReplicationRun.
      #   @return [String]
      #
      # @!attribute [rw] role_name
      #   Name of service role in customer's account to be used by SMS
      #   service.
      #   @return [String]
      #
      # @!attribute [rw] description
      #   The description for a Replication Job/Run.
      #   @return [String]
      class UpdateReplicationJobRequest < Struct.new(
        :replication_job_id,
        :frequency,
        :next_replication_run_start_time,
        :license_type,
        :role_name,
        :description)
        include Aws::Structure
      end

      class UpdateReplicationJobResponse < Aws::EmptyStructure; end

      # Object representing a VM server
      # @!attribute [rw] vm_server_address
      #   Object representing a server's location
      #   @return [Types::VmServerAddress]
      #
      # @!attribute [rw] vm_name
      #   Name of Virtual Machine
      #   @return [String]
      #
      # @!attribute [rw] vm_manager_name
      #   VM Manager Name
      #   @return [String]
      #
      # @!attribute [rw] vm_manager_type
      #   VM Management Product
      #   @return [String]
      #
      # @!attribute [rw] vm_path
      #   Path to VM
      #   @return [String]
      class VmServer < Struct.new(
        :vm_server_address,
        :vm_name,
        :vm_manager_name,
        :vm_manager_type,
        :vm_path)
        include Aws::Structure
      end

      # Object representing a server's location
      # @!attribute [rw] vm_manager_id
      #   Unique Identifier for VM Manager
      #   @return [String]
      #
      # @!attribute [rw] vm_id
      #   Unique Identifier for a VM
      #   @return [String]
      class VmServerAddress < Struct.new(
        :vm_manager_id,
        :vm_id)
        include Aws::Structure
      end

    end
  end
end
