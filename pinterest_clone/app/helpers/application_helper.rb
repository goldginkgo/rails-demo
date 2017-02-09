module ApplicationHelper
  def bootstrap_class_for(flash_type)
    hash = HashWithIndifferentAccess.new(
      success: 'alert-success',
      error:   'alert-danger',
      alert:   'alert-warning',
      notice:  'alert-info'
    )
    hash[flash_type] || flash_type.to_s
  end
end
