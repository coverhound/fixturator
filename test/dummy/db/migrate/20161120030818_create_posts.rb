superclass = ActiveRecord::Migration
# TODO: Inherit from the 5.0 Migration class directly when we drop support for Rails 4.
superclass = ActiveRecord::Migration[5.0] if superclass.respond_to?(:[])

class CreatePosts < superclass
  def change
    create_table :posts do |t|
      t.string :title

      t.timestamps
    end
  end
end
