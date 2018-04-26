json.extract! instrument, :id, :name, :abbreviation, :start_date, :last_rev_date, :description, :planning, :transboundary, :appeal_proc, :descr_appeal_proc, :instruments_group_id, :created_at, :updated_at
json.url instrument_url(instrument, format: :json)
