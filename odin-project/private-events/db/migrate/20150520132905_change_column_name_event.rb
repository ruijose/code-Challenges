Create a new event</h1>
  def change
    rename_column :events, :body, :location
  end
end
