class Action < ActiveRecord::Base

  belongs_to :parent, :class_name => 'Action'
  belongs_to :subject, :polymorphic => true
  has_many :conditions, :dependent => :destroy
  has_many :character_actions, :dependent => :destroy

  has_many :children,
  	:class_name => 'Action',
  	:foreign_key => 'parent_id'
    
  has_many :disabling_actions,
  	:class_name => 'Action',
  	:foreign_key => 'disabler_action_id'
  	
  belongs_to :action_group
  belongs_to :disabler_action,
  	:class_name => 'Action',
  	:foreign_key => 'disabler_action_id'

  scope :by_place, lambda {|place_id|
    where :subject_id => place_id, :subject_type => 'Place'
  }

  scope :post_rumor, :conditions => {:default_type => 'post_rumor'}
  scope :post_question, :conditions => {:default_type => 'post_question'}
  scope :post_reply, :conditions => {:default_type => 'post_reply'}

  def dto
    PropertiesDTO.new self
  end
 
  # validates :default_type,
  #   :uniqueness => {:scope => [:subject_type, :subject_id]}
end
