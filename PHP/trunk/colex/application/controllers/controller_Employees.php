<?php
class controller_employees extends controller
{
  function __construct()
  {
    $this->model = new model_employees();
    $this->view = new view();
  }

  function action_add()
  {
    $data = $this->model->sel_data($_POST);
    $this->view->generate('view_employees_add.php', 'view_template.php', $data);
  }
  
  function action_edit()
  {
    if (isset($_POST['id']))
    {
      $data = $this->model->sel_data($_POST);
      $this->view->generate('view_employees_edit.php', 'view_template.php', $data);
    }
    else
    {
      header('location:/employees/');
    }
  }

  function action_delete()
  {
    if (isset($_POST['id']))
    {
      $data = $this->model->sel_data($_POST);
      $this->view->generate('view_employees_delete.php', 'view_template.php', $data);
    }
    else
    {
      header('location:/employees/');
    }
  }

  function action_clear()
  {
    $data = $this->model->sel_data();
    $this->view->generate('view_employees_clear.php', 'view_template.php', $data);
  }
}