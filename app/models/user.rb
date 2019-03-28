class User < ApplicationRecord
  after_create :add_task
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :assigments         
  has_many :tasks, through: :assigments

  def add_task

	Task.all.each do |t|
	   self.assigments.build(task: t)
	   self.save 
	end

  end
 
end
