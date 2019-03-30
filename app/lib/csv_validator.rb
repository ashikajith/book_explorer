class CsvValidator
  def initialize(row_hash)
    @row = row_hash
  end

  def validate_fields
    @row.value? nil
  end
end
