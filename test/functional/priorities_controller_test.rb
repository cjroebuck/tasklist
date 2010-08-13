require 'test_helper'

class PrioritiesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Priority.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Priority.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Priority.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to priority_url(assigns(:priority))
  end
  
  def test_edit
    get :edit, :id => Priority.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Priority.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Priority.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Priority.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Priority.first
    assert_redirected_to priority_url(assigns(:priority))
  end
  
  def test_destroy
    priority = Priority.first
    delete :destroy, :id => priority
    assert_redirected_to priorities_url
    assert !Priority.exists?(priority.id)
  end
end
