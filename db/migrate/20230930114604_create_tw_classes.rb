class CreateTwClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :tw_classes do |t|
      t.string :code
      t.string :tw_class

      t.timestamps
    end
  end
end
