<?php namespace App;

class welcome extends Controller
{

    /**
     * This is a normal action which will be called when user visits /welcome/index URL. Since index is the default
     * action name, it may be omitted (URL can be /welcome). Since welcome is by default the default controller, it may
     * be omitted (URL can be /). After calling the action, a view from views/controller-name/controller-name_action-name.php
     * is loaded (it must exist, unless the function ends with stop() call.
     */
    function index()
    {

        //Tahvel::updateGroups();
        Tahvel::updateJournals();


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
            @$data['subjects']["$row[groupName] - $row[subjectName]"]['timetableHoursTotal'] += $row['hourCount'];
            @$data['timetableHoursTotal'] += $row['hourCount'];
        }

        $rows = get_all("
            SELECT 
                entryDate date,
                journals.studentGroups groupName,
                journals.nameEt subjectName,
                SUM(journals.capacityMAHT_aplanned) plannedAcademicHours,
                SUM(journals.capacityMAHT_pplanned) plannedPracticalHours,
                SUM(journals.capacityMAHT_iplanned) plannedIndependentHours,
                SUM(journals.capacityMAHT_iused) usedIndependentHours,
                sum(lessons) AS hourCount
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
            @$data['subjects']["$row[groupName] - $row[subjectName]"]['journalHoursTotal'] += $row['hourCount'];
            @$data['journalHoursTotal'] += $row['hourCount'];
        }


        $this->data = $data;

    }

    /**
     * This function will only be ran in case of an AJAX request. No view will be attempted to load after this function.
     */
    function AJAX_success()
    {


        stop(201, 'Everything is awesome');
    }

    /**
     * This function will only be ran in case of an AJAX request. No view will be attempted to load after this function.
     */
    function AJAX_error()
    {

        // Test sending emails
        Mail::send(DEVELOPER_EMAIL, 'test', 'test');

        echo "This text comes from the server and will be shown only in development environment for debugging purposes. ";
        echo "Here is a nice exception for you to debug:";

        // Generate error for testing
        throw new \Exception('This is a test');


    }
}