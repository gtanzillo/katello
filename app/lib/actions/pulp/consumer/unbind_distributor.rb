#
# Copyright 2014 Red Hat, Inc.
#
# This software is licensed to you under the GNU General Public
# License as published by the Free Software Foundation; either version
# 2 of the License (GPLv2) or (at your option) any later version.
# There is NO WARRANTY for this software, express or implied,
# including the implied warranties of MERCHANTABILITY,
# NON-INFRINGEMENT, or FITNESS FOR A PARTICULAR PURPOSE. You should
# have received a copy of GPLv2 along with this software; if not, see
# http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.

module Actions
  module Pulp
    module Consumer
      class UnbindDistributor < Pulp::AbstractAsyncTask

        input_format do
          param :consumer_uuid, String
          param :repo_id, String
          param :distributor_id, String
        end

        def invoke_external_task
          pulp_resources.consumer.unbind(input[:consumer_uuid],
                                         input[:repo_id],
                                         input[:distributor_id])
        end

      end
    end
  end
end
