<?php namespace App;


class SQL
{

    static function getWhere($criteria, $id_field = null)
    {
        $where = '';
        if (!empty($criteria)) {
            if (is_array($criteria)) {
                $where = "WHERE " . implode(' AND ', $criteria);
            } else if (is_numeric($criteria)) {
                $where = "WHERE $id_field = $criteria";
            } else {
                $where = "WHERE $criteria";
            }
        }

        return $where;
    }

    public static function getLimit($offset, $count)
    {
        return is_numeric($offset) && $count > 0 ? "LIMIT $offset, $count" : '';
    }
}
