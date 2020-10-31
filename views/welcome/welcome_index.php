<style>
    .discrepancy {
        background-color: pink !important;
    }

    tr.header-row {
        height: 100px !important;
    }
    tr.header-row th{
        vertical-align: bottom !important;
        padding:0;

    }
    tr.header-row div {
        background-color: #b6b8d9 !important;
        padding: 10px;
    }
    .border-left, .border-right {
        border-left: 1px solid gray;
        border-right: 1px solid gray;
    }
    .summary-row{
        background-color: #f3f3f3 !important;
    }
</style>
<table class="table table-nonfluid" id="resultTable" onkeyup="myFunction()">
    <thead>
    <tr>
        <th>Kuupäev</th>
        <th>Tunniplaanis tunde</th>
        <th>Päevikus tunde</th>
    </tr>
    </thead>
    <tbody id="myTable">
    <?php //var_dump($data)?>
    <?php foreach ($data['subjects'] as $subjectName => $subject): ?>
        <tr class="header-row">
            <th colspan="3"><div><span class="badge badge-danger"><?= $subject['groupName'] ?></span> <?= $subject['subjectName'] ?> <br>
                    <sup>
                        Plaanitud akadeemilisi: <?=$subject['plannedAcademicHours']?>,
                        Plaanitud praktilisi: <?=$subject['plannedPracticalHours']?>,
                        plaanitud/kasutatud iseseisvat: <?=$subject['plannedIndependentHours']?>/<?=$subject['usedIndependentHours']?>
                    </sup>
                </div></th>
        </tr>
        <?php foreach ($subject['entries'] as $date => $entry): ?>
            <tr class="<?= $entry['timetableHours'] != $entry['journalHours'] ? 'discrepancy' : '' ?>">
                <td class="border-left"><?= $date ?></td>
                <td><?= $entry['timetableHours'] ?></td>
                <td class="border-right"><?= $entry['journalHours'] ?></td>
            </tr>
        <?php endforeach ?>

        <tr class="summary-row">
            <td class="border-left">Kokku:</td>
            <th><?= $subject['timetableHoursTotal'] ?></th>
            <th class="border-right"><?= $subject['journalHoursTotal'] ?></th>
        </tr>
    <?php endforeach ?>
    </tbody>
    <tfoot>
    <tr>
        <th colspan="3">&nbsp;</th>
    </tr>
    <tr>
        <th>Kõik kokku:</th>
        <th><?=$data['timetableHoursTotal']?></th>
        <th><?=$data['journalHoursTotal']?></th>
    </tr>
    </tfoot>
</table>

