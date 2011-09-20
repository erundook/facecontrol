class Action < ActiveRecord::Base
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
 
  validates :default_type,
    :uniqueness => {:scope => [:subject_type, :subject_id]}
end
