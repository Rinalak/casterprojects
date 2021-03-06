<?php
class model_blog extends model
{
  public function sel_data($data = null)
  {
    require_once 'model_employees.php';
    $model_employees = new model_employees();

    $id = isset($data, $data['id']) ? $data['id'] : -1;
    $result = self::open('{call sel_blog (?, ?, ?)}', array($id, -1, 1));
    try
    {
      $blog = array();
      
      while($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC))
      {
        $blog[$row['id']] = $row;
      }
    }
    finally
    {
      self::close($result);
    }
    
    $data = array();    
    $data['blog'] = $blog;
    $data['employees'] = $model_employees->sel_data();
    
    return $data;
  }
  
  public function add_data($data = null)
  {
    extract($data);
    
    $id = -1;

    if (isset($name))
    {
      $result = self::open('{call upd_blog (?, ?, ?, ?)}', array($id, $name, (isset($active) ? 1 : 0)));
      try
      {
        if ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC))
        {
          return array($row['result'], $row['message']);
        }
        else
        {
          return array(0, self::getlasterrors());
        }
      }
      finally
      {
        self::close($result);
      }
    }    
  }
  
  public function edit_data($data = null)
  {
    extract($data);

    if (isset($id, $name))
    {
      $result = self::open('{call upd_blog (?, ?, ?, ?)}', array($id, $name, (isset($active) ? 1 : 0)));
      try
      {
        if ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC))
        {
          return array($row['result'], $row['message']);
        }
        else
        {
          return array(0, self::getlasterrors());
        }
      }
      finally
      {
        self::close($result);
      }
    }    
  }

  public function delete_data($data = null)
  {
    extract($data);

    if (isset($id))
    {
      $result = self::open('{call del_blog (?)}', array($id));
      try
      {
        $row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC);
        if ($row)
        {
          return array($row['result'], $row['message']);
        }
        else
        {
          return array(0, self::getlasterrors());
        }
      }
      finally
      {
        self::close($result);
      }
    }    
  }
  
  public function clear_data($data = null)
  {
    $id = -1;    
    $result = self::open('{call del_blog (?)}', array($id));
    try
    {
      $row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC);
      if ($row)
      {
        return array($row['result'], $row['message']);
      }
      else
      {
        return array(0, self::getlasterrors());
      }
    }
    finally
    {
      self::close($result);
    }
  }
}