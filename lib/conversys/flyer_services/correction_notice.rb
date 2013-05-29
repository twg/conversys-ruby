module Conversys
  module FlyerServices
    module CorrectionNotice
      # GET correctionnotice/publicationid/{publicationId}
      def get_correction_notice_by_publication_id(publication_id)
        get "/correctionnotice/publicationid/#{publication_id}"
      end

      # GET correctionnotice/{lognumber}
      def get_correction_notice_by_log_number(log_number)
        get "/correctionnotice/#{log_number}"
      end
    end
  end
end
