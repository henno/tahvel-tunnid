<?php namespace App;

/**
 * Created by PhpStorm.
 * User: henno
 * Date: 29/10/16
 * Time: 22:24
 */
class Journal
{
    static function getAll($key = 'id')
    {
        $result = [];
        $rows = get_all("SELECT * FROM journals");
        foreach ($rows as $row) {
            $result[$row[$key]] = $row;
        }
        return $result;
    }


}