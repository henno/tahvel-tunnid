<?php namespace App;

/**
 * Created by PhpStorm.
 * User: henno
 * Date: 29/10/16
 * Time: 22:24
 */
class Year
{
    static function getAll($key = 'id')
    {
        $result = [];
        $rows = get_all("SELECT * FROM studyYears");
        foreach ($rows as $row) {
            $result[$row[$key]] = $row;
        }
        return $result;
    }

    public static function get(array $criteria = null)
    {
        $where = SQL::getWhere($criteria, "id");
        return get_first("SELECT * FROM studyYears $where");

    }

    public static function getCurrentYear()
    {


        // Get year from GET
        $selectedYear = empty($_GET['studyYear']) ? null : Year::get(['id = ' . (int)$_GET['studyYear']]);


        // or get current year
        if (empty($selectedYear)) {


            $date = new \DateTime();

            if ($date->format('m') < 9)
                $y = $date->format('Y') - 1;

            else
                $y = $date->format('Y');

            $startYear = $y;
            $endYear = (int)$y + 1;
            $season = "$startYear/$endYear";

            $selectedYear = self::get(["nameEt = '$season'"]);
        }

        // Or get latest available year
        $selectedYear = empty($selectedYear) ? get_first("SELECT * FROM studyYears ORDER BY id DESC") : $selectedYear;

        return $selectedYear;

    }


}