module Fog
  module Compute
    class Google
      class Mock
        def get_target_instance(_target_name, _zone)
          Fog::Mock.not_implemented
        end
      end

      class Real
        def get_target_instance(target_name, zone)
          zone = zone.split("/")[-1] if zone.start_with? "http"
          @compute.get_target_instance(@project, zone, target_name)
        end
      end
    end
  end
end
