class CreatePostlmges < ActiveRecord::Migration[6.1]
  def change
    create_table :postlmges do |t|

      t.timestamps
    end
  end
end
