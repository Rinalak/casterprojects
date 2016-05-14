<?php
class controller_employeepositions extends controller
{
  function __construct()
  {
    parent::__construct();
    $this->model = new model_employeepositions();
  }

  function action_add()
  {
    $data = $this->model->sel_data($_POST);
    $this->view->generate('view_employeepositions_add.php', 'view_template.php', $data);
  }

  function action_edit()
  {
    if (isset($_POST['id']))
    {
      $data = $this->model->sel_data($_POST);
      $this->view->generate('view_employeepositions_edit.php', 'view_template.php', $data);
    }
    else
    {
      header('location:/employeepositions/');
    }
  }

  function action_delete()
  {
    if (isset($_POST['id']))
    {
      $data = $this->model->sel_data($_POST);
      $this->view->generate('view_employeepositions_delete.php', 'view_template.php', $data);
    }
    else
    {
      header('location:/employeepositions/');
    }
  }

  function action_clear()
  {
    $data = $this->model->sel_data();
    $this->view->generate('view_employeepositions_clear.php', 'view_template.php', $data);
  }
}