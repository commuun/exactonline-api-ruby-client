module Elmas
  class GeneralJournalEntryLine
    # An sales_invoice_line should always have a reference to an item and to an sales_invoice.
    include Elmas::Resource

    def base_path
      "generaljournalentry/GeneralJournalEntryLines"
    end

    def mandatory_attributes
      [:entry_ID, :GL_account]
    end

    def other_attributes
      [
        :ID, :account, :amount_FC, :amount_VATFC, :asset, :cost_center, :cost_unit, :date, :description,
        :document, :notes, :offset_ID, :our_ref, :project, :quantity, :VAT_code, :VAT_percentage
      ]
    end
  end
end
