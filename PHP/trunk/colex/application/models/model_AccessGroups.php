<?php

class Model_AccessGroups extends Model
{
  public function get_data()
  {
    $result = self::Open("{CALL colex_sel_AccessGroups (?, ?)}", array(-1, 1));
    try
    {
      $data = array();
      
      while($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC))
      {
        $data[] = $row;
      }
    }
    finally
    {
      self::Close($result);
    }
    return $data;
  }

}