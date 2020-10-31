<?php namespace App;

class welcome extends Controller
{

    function index()
    {

        //Tahvel::updateGroups();
        Tahvel::updateTimetableEvents();
        Tahvel::updateJournals();

        // Timetable data
        $rows = get_all("
            SELECT 
                date,
                journals.studentGroups groupName,
                journals.nameEt subjectName,
                cast(sum((time_to_sec(timeEnd) - time_to_sec(timeStart)) / 60 / 45) AS SIGNED) AS hourCount,
                SUM(journals.capacityMAHT_aplanned) plannedAcademicHours,
                SUM(journals.capacityMAHT_pplanned) plannedPracticalHours,
                SUM(journals.capacityMAHT_iplanned) plannedIndependentHours,
                SUM(journals.capacityMAHT_iused) usedIndependentHours
            FROM timetableEvents
                LEFT JOIN journals ON timetableEvents.journalId = journals.id
            GROUP BY date, groupName, subjectName
            ORDER BY groupName, subjectName, timetableEvents.date");

        foreach ($rows as $row) {
            $data['subjects']["$row[groupName] - $row[subjectName]"]['groupName'] = $row['groupName'];
            $data['subjects']["$row[groupName] - $row[subjectName]"]['subjectName'] = $row['subjectName'];
            $data['subjects']["$row[groupName] - $row[subjectName]"]['entries'][$row['date']]['timetableHours'] = $row['hourCount'];
            $data['subjects']["$row[groupName] - $row[subjectName]"]['plannedAcademicHours'] = $row['plannedAcademicHours'];
            $data['subjects']["$row[groupName] - $row[subjectName]"]['plannedPracticalHours'] = $row['plannedPracticalHours'];
            $data['subjects']["$row[groupName] - $row[subjectName]"]['plannedIndependentHours'] = $row['plannedIndependentHours'];
            $data['subjects']["$row[groupName] - $row[subjectName]"]['usedIndependentHours'] = $row['usedIndependentHours'];

            // Suppress errors due to timetableHoursTotal initially not existing
            @$data['subjects']["$row[groupName] - $row[subjectName]"]['timetableHoursTotal'] += $row['hourCount'];
            @$data['timetableHoursTotal'] += $row['hourCount'];
        }

        // Journal data
        $rows = get_all("
            SELECT 
                entryDate date,
                journals.studentGroups groupName,
                journals.nameEt subjectName,
                sum(lessons) AS hourCount,
                SUM(journals.capacityMAHT_aplanned) plannedAcademicHours,
                SUM(journals.capacityMAHT_pplanned) plannedPracticalHours,
                SUM(journals.capacityMAHT_iplanned) plannedIndependentHours,
                SUM(journals.capacityMAHT_iused) usedIndependentHours
            FROM journalEntries
                LEFT JOIN journals ON journalEntries.journalId = journals.id
            WHERE entryType = 'SISSEKANNE_T' OR entryType = 'SISSEKANNE_P'
            GROUP BY date, groupName, subjectName
            ORDER BY groupName, subjectName, date");

        foreach ($rows as $row) {
            $data['subjects']["$row[groupName] - $row[subjectName]"]['groupName'] = $row['groupName'];
            $data['subjects']["$row[groupName] - $row[subjectName]"]['subjectName'] = $row['subjectName'];
            $data['subjects']["$row[groupName] - $row[subjectName]"]['entries'][$row['date']]['journalHours'] = $row['hourCount'];
            $data['subjects']["$row[groupName] - $row[subjectName]"]['plannedAcademicHours'] = $row['plannedAcademicHours'];
            $data['subjects']["$row[groupName] - $row[subjectName]"]['plannedPracticalHours'] = $row['plannedPracticalHours'];
            $data['subjects']["$row[groupName] - $row[subjectName]"]['plannedIndependentHours'] = $row['plannedIndependentHours'];
            $data['subjects']["$row[groupName] - $row[subjectName]"]['usedIndependentHours'] = $row['usedIndependentHours'];

            // Suppress errors due to journalHoursTotal initially not existing
            @$data['subjects']["$row[groupName] - $row[subjectName]"]['journalHoursTotal'] += $row['hourCount'];
            @$data['journalHoursTotal'] += $row['hourCount'];
        }

        $this->data = $data;
    }
}