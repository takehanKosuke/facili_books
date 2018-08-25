class Init < ActiveRecord::Migration[5.2]
  def change
    create_table :faculties do |t|
      t.string :name, null: false
    end

    create_table :departments do |t|
      t.string :name, null: false
      t.integer :faculties_id, null: false
    end

    create_table :greads do |t|
      t.integer :gread, null: false

      t.timestamps
    end

    create_table :teachers do |t|
      t.string :name, null: false
      t.integer :department_id, null: false

      t.timestamps
    end

    create_table :lessons do |t|
      t.integer :code, null: false
      t.text :contents
      t.text :plan
      t.string :name, null: false
      t.integer :period, null: false
      t.integer :wday, null: false
      t.integer :term, null: false
      t.integer :year, null: false
      t.boolean :is_classification

      t.integer :department_id
      t.integer :gread_id
      t.integer :teacher_id

      t.timestamps
    end

    create_table :books do |t|
      t.text :name, null: false
      t.text :author
      t.integer :price
      t.text :url

      t.timestamps
    end

    create_table :lesson_users do |t|
      t.integer :lesson_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end

    create_table :lesson_teachers do |t|
      t.integer :lesson_id, null: false
      t.integer :teacher_id, null: false

      t.timestamps
    end

  end
end
