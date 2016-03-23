<?php
class controller_cosignatories extends controller
{
  function __construct()
  {
    $this->model = new model_cosignatories();
    $this->view = new view();
  }

  function action_add()
  {
    $data = $this->model->sel_data($_POST);
    $this->view->generate('view_cosignatories_add.php', 'view_template.php', $data);
  }
  
  function action_edit()
  {
    if (isset($_POST['id']))
    {
      $data = $this->model->sel_data($_POST);
      $this->view->generate('view_cosignatories_edit.php', 'view_template.php', $data);
    }
    else
    {
      header('location:/cosignatories/');
    }
  }

  function action_delete()
  {
    if (isset($_POST['id']))
    {
      $data = $this->model->sel_data($_POST);
      $this->view->generate('view_cosignatories_delete.php', 'view_template.php', $data);
    }
    else
    {
      header('location:/cosignatories/');
    }
  }

  function action_clear()
  {
    $data = $this->model->sel_data();
    $this->view->generate('view_cosignatories_clear.php', 'view_template.php', $data);
  }
}