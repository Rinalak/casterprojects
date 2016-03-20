<?php

class Controller_Functions extends Controller
{
	function __construct()
	{
		$this->model = new Model_Functions();
		$this->view = new View();
	}
	
	function action_index()
	{
		$data = $this->model->get_data();		
		$this->view->generate('view_Functions.php', 'view_template.php', $data);
	}
}