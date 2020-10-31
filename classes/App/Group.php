<?php namespace App;

/**
 * Created by PhpStorm.
 * User: henno
 * Date: 29/10/16
 * Time: 22:24
 */
class Group
{
    static function getAll($key = 'groupId')
    {
        $result = [];
        $rows = get_all("SELECT * FROM studentGroups");
        foreach ($rows as $row) {
            $result[$row[$key]]['groupId'] = $row['groupId'];
            $result[$row[$key]]['groupCode'] = $row['groupCode'];
        }
        return $result;
    }


}