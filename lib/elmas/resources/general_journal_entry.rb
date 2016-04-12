module Elmas
  class GeneralJournalEntry
    # An sales_invoice usually has multiple sales_invoice lines
    # It should also have a journal id and a contact id who ordered it
    include Elmas::Resource

    def base_path
      "generaljournalentry/GeneralJournalEntries"
    end

    def mandatory_attributes
      [:journal_code]
    end

    def other_attributes
      [
        :currency, :entry_number, :exchange_rate, :financial_period, :financial_year, :reversal, :general_journal_entry_lines
      ]
    end
  end
end
