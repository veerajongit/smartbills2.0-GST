<?php
include "session.php";
include "db.php";
if (!isset($_REQUEST['billno'])) {
    echo "Something went wrong please try again.";
    exit;
}
function numtoword($number) {
    $no = round($number);
    $point = round($number - $no, 2) * 100;
    $hundred = null;
    $digits_1 = strlen($no);
    $i = 0;
    $str = array();
    $words = array('0' => '', '1' => 'One', '2' => 'Two',
        '3' => 'Three', '4' => 'Four', '5' => 'Five', '6' => 'Six',
        '7' => 'Seven', '8' => 'Eight', '9' => 'Nine',
        '10' => 'Ten', '11' => 'Eleven', '12' => 'Twelve',
        '13' => 'Thirteen', '14' => 'Fourteen',
        '15' => 'Fifteen', '16' => 'Sixteen', '17' => 'Seventeen',
        '18' => 'Eighteen', '19' => 'Nineteen', '20' => 'Twenty',
        '30' => 'Thirty', '40' => 'Forty', '50' => 'Fifty',
        '60' => 'Sixty', '70' => 'Seventy',
        '80' => 'Eighty', '90' => 'Ninety');
    $digits = array('', 'Hundred', 'Thousand', 'Lakh', 'Crore');
    while ($i < $digits_1) {
        $divider = ($i == 2) ? 10 : 100;
        $number = floor($no % $divider);
        $no = floor($no / $divider);
        $i += ($divider == 10) ? 1 : 2;
        if ($number) {
            $plural = (($counter = count($str)) && $number > 9) ? 's' : null;
            $hundred = ($counter == 1 && $str[0]) ? ' and ' : null;
            $str [] = ($number < 21) ? $words[$number] .
                " " . $digits[$counter] . $plural . " " . $hundred
                :
                $words[floor($number / 10) * 10]
                . " " . $words[$number % 10] . " "
                . $digits[$counter] . $plural . " " . $hundred;
        } else $str[] = null;
    }
    $str = array_reverse($str);
    $result = implode('', $str);
    $points = ($point) ?
        "." . $words[$point / 10] . " " .
        $words[$point = $point % 10] : '';
    return $result . "Rupees  ";
}

$sql = "SELECT * FROM company_details WHERE companyname='" . $_SESSION['work'] . "' AND isdelete IS NULL";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc()) {
        $companyname = $row['fullname'];
        $companyaddr = $row['companyaddress'];
        $vat = $row['vat'];
        $cst = $row['cst'];
        $gst = "GSTIN / UIN Number : " . $row["gstno"];
    }
} else {
    echo "Invalid Session. Please logout and login to print bill";
    exit;
}

$sql = "SELECT * FROM " . $_SESSION['work'] . "_bill WHERE srno=" . $_REQUEST['billno'];
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc()) {
        $billno = $row['bill_no'];
        $srnbno = $row["srno"];
        $date = date('d-m-Y', strtotime($row['sell_date']));
        $buyername = $row['buyer_name'];
        $buyeraddress = $row['buyer_address'];
        $buyersgst = $row["buyer_gst"];
        $amount = $row['amount'];
        $amountvat = $row['cgst'] + $row['sgst'];
        $othercharges = $row['other_charges'];
        $total = (($row['amount'] + $row['other_charges']) * ($row['cgst'] / 100)) + (($row['amount'] + $row['other_charges']) * ($row['sgst'] / 100)) + ($row['amount'] + $row['other_charges']);
        $ctotal = round($total);
    }
} else {
    echo "Something went wrong. Please go back and try again.";
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>SmartBills - Past Bills</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href='css/opensans.css' rel='stylesheet' type='text/css'>
    <style type="text/css">
        @media print {
            body {
                -webkit-print-color-adjust: exact !important;
            }
        }

        body {
            font-family: 'Open Sans';
            line-height: 5px;
            border: 1px solid black
        }

        td{
            margin: 0px !important;
            padding: 2px !important;
            text-align: center;
        }

        .table td{
            border-left: black solid 0.5px !important;
            border-right: black solid 0.5px !important;
        }


        /*
        @page {
            size: A4;
            margin: 0;
        }
        @media print {
            html, body {
                height: 210mm;
                width: 297mm;
            }
            /* ... the rest of the rules ... */
        }
    </style>
</head>
<body style="height: 184mm !important;margin-left: 25px;">

<div style="margin-left: 15px; margin-right: 15px; margin-top: 15px;">
    <div class="text-center">
        <h5 style="margin: 0px !important; padding: 0px !important;">TAX INVOICE</h5>
        <h3 style="margin: 5px !important;padding: 0px;color: darkgreen"><b><?= $companyname ?></b></h3>
        <p><?= explode("<br>", $companyaddr)[0] . explode("<br>", $companyaddr)[1] . explode("<br>", $companyaddr)[2] ?></p>
    </div>
    <table class="table table-bordered">
        <tr>
            <td width="450px" style="border: 0.5px solid black !important; text-align: left" rowspan="2"><b>M/s : </b><?= $buyername ?><br><b>Address : </b><?= $buyeraddress ?><br><?= "<b>GSTIN / UIN Number : </b>" .$buyersgst ?></td>
            <td style="text-align: left; width: 200px; border: 0.5px solid black !important;">
                <b>Challan No :</b> <?= $billno ?><br><b>Date :</b> <?= $date ?>
            <td style="text-align: left; border: 0.5px solid black !important;" rowspan="2">
                <b>Transportation Mode : </b> By Road<br>
                <b>Vehicle No : </b><br>
                <b>Date & Time of Removal : </b><?= $date ?><br>
                <b>Place of supply & State : </b><br>
            </td>
        </tr>
        <tr>
            <td style="border: 0.5px solid black !important;text-align: left; width: 200px;">
                <b>Invoice No :</b> <?= $billno ?><br><b>Date :</b> <?= $date ?>
            </td>
        </tr>
    </table>
    <table class="table table-bordered">
        <tr style="font-weight: bold; text-align: center" height="20px">
            <td style="border: 0.5px solid black !important;">S<br>N</td>
            <td style="border: 0.5px solid black !important; width: 30%; text-align: center">PARTICULARS</td>
            <td style="border: 0.5px solid black !important;">HSN<br>SAC<br>Code</td>
            <td style="border: 0.5px solid black !important;">Nos</td>
            <td style="border: 0.5px solid black !important;">Rate</td>
            <td style="border: 0.5px solid black !important;">Wgt</td>
            <td style="border: 0.5px solid black !important;">Total<br>Amount</td>

            <td style="border: 0.5px solid black !important;">Abt</td>
            <td style="border: 0.5px solid black !important;">Taxable<br>Value</td>
            <td style="border: 0.5px solid black !important;">CGST<br>Rate</td>
            <td style="border: 0.5px solid black !important;">CGST<br>Amt</td>
            <td style="border: 0.5px solid black !important;">SGST<br>UTGST<br>Rate</td>
            <td style="border: 0.5px solid black !important;">SGST<br>UTGST<br>Amt</td>
<!--            <td>IGST<br>Rate</td>-->
<!--            <td>IGST<br>Amt</td>-->

        </tr>
        <?php
        $i = 0;
        $sql2 = "SELECT * FROM " . $table_name . "_description WHERE billno=" . $srnbno . ' ORDER BY item_name';
        $result2 = $conn->query($sql2);

        $totalqty = 0;
        $totalrate = 0;
        $totalweight = 0;
        $totalprice = 0;
        $totallabour = 0;

        if ($result2->num_rows > 0) {
            // output data of each row
            while ($row2 = $result2->fetch_assoc()) {
                $i = $i + 1;
                $totalqty = $totalqty + $row2['quantity'];
                $totalrate = $totalrate + $row2['item_rate'];
                $totalweight = $totalweight + $row2['weight'];
                $totalprice = $totalprice + ($row2['quantity'] * $row2['item_rate']);
                $totallabour = $totallabour + $row2['labour'];

                ?>
                <tr height="20px">
                    <td><?= $i ?></td>
                    <td style="text-align: left"><?= $row2['item_name'] ?></td>
                    <td style="text-align: center"><?=($row2["hsn_sac_code"] == '')?'-':$row2["hsn_sac_code"]?></td>
                    <td style="text-align: right"><?= $row2['quantity'] ?></td>
                    <td style="text-align: right"><?= number_format((float)$row2['item_rate'], 2, '.', '') ?></td>
                    <td style="text-align: right"><?= number_format($row2['weight'], 3, '.', '') ?></td>
                    <td style="text-align: right"><?= number_format((float)($row2['quantity'] * $row2['item_rate']), 2, '.', '') ?></td>
                    <!--<td><?= $row2['labour'] ?></td>-->

                    <td>-</td>
                    <td style="text-align: right"><?= number_format((float)($row2['quantity'] * $row2['item_rate']), 2, '.', '') ?></td>
                    <td style="text-align: right"><?= $amountvat / 2 ?>%</td>
                    <td style="text-align: right"><?= number_format(((((float)($row2['quantity'] * $row2['item_rate'])))*($amountvat / 2))/100, 2, '.', '') ?></td>
                    <td style="text-align: right"><?= $amountvat / 2 ?>%</td>
                    <td style="text-align: right"><?= number_format(((((float)($row2['quantity'] * $row2['item_rate'])))*($amountvat / 2))/100, 2, '.', '') ?></td>
<!--                    <td>-</td>-->
<!--                    <td>-</td>-->
                </tr>
                <?php
            }
        }
        ?>
        <tr height="20px">
            <td><?= $i+1 ?></td>
            <td style="text-align: left">P & F</td>
            <td>-</td>
            <td>-</td>
            <td style="text-align: right"><?= number_format((float)$othercharges, 0, '.', '') ?></td>
            <td>-</td>
            <td style="text-align: right"><?= number_format((float)$othercharges, 2, '.', '') ?></td>
            <td>-</td>
            <td style="text-align: right"><?= number_format((float)$othercharges, 2, '.', '') ?></td>
            <td style="text-align: right"><?= $amountvat / 2 ?>%</td>
            <td style="text-align: right"><?= number_format((float)($othercharges*$amountvat / 200), 2, '.', '') ?></td>
            <td style="text-align: right"><?= $amountvat / 2 ?>%</td>
            <td style="text-align: right"><?= number_format((float)($othercharges*$amountvat / 200), 2, '.', '') ?></td>
<!--            <td>-</td>-->
<!--            <td>-</td>-->
        </tr>
        <?php
        for (; $i <= 8; $i++) { ?>
            <tr height="20px">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
<!--                <td></td>-->
<!--                <td></td>-->
            </tr>
            <?php
        }

        ?>
        <tr height="20px">
            <td style="border-bottom: 0.5px solid black !important;"></td>
            <td style="border-bottom: 0.5px solid black !important;"></td>
            <td style="border-bottom: 0.5px solid black !important;"></td>
            <td style="border-bottom: 0.5px solid black !important;"></td>
            <td style="border-bottom: 0.5px solid black !important;"></td>
            <td style="border-bottom: 0.5px solid black !important;"></td>
            <td style="border-bottom: 0.5px solid black !important;"></td>
            <td style="border-bottom: 0.5px solid black !important;"></td>
            <td style="border-bottom: 0.5px solid black !important;"></td>
            <td style="border-bottom: 0.5px solid black !important;"></td>
            <td style="border-bottom: 0.5px solid black !important;"></td>
            <td style="border-bottom: 0.5px solid black !important;"></td>
            <td style="border-bottom: 0.5px solid black !important;"></td>
            <!--                <td></td>-->
            <!--                <td></td>-->
        </tr>

        <tr>
            <td colspan="6" style="border: 0.5px solid black !important;text-align: left"><?=$gst?></td>
            <td style="border: 0.5px solid black !important; text-align: left" colspan="2"><b>Total</b></td>
            <td style="border: 0.5px solid black !important; text-align: right"><?= number_format(((float)$amount + (float)$othercharges), 2, '.', '') ?></td>
            <td style="border: 0.5px solid black !important; text-align: right"><?= $amountvat / 2 ?>%</td>
            <td style="border: 0.5px solid black !important; text-align: right"><?= number_format((float)(((float)$amount + (float)$othercharges)*($amountvat/200)), 2, '.', '') ?></td>
            <td style="border: 0.5px solid black !important; text-align: right"><?= $amountvat / 2 ?>%</td>
            <td style="border: 0.5px solid black !important; text-align: right"><?= number_format((float)(((float)$amount + (float)$othercharges)*($amountvat/200)), 2, '.', '') ?></td>
<!--            <td>-</td>-->
<!--            <td>-</td>-->
        </tr>

        <tr height="35px">
            <td colspan="8" style="border: 0.5px solid black !important;text-align: left"> <b>Grand Total (in words) :</b> <?= numtoword($ctotal) ?></td>
            <td style="border: 0.5px solid black !important;"><b>Invoice Total</b></td>
            <td colspan="4" style="border: 0.5px solid black !important;text-align: center; vertical-align: middle">Rs <?=number_format(round(((float)$amount + (float)$othercharges) + (float)(((float)$amount + (float)$othercharges)*($amountvat/200)) + (float)(((float)$amount + (float)$othercharges)*($amountvat/200))),2, '.', '')?></td>
<!--            <td>Total</td>-->
<!--            <td></td>-->
<!--            <td style="text-align: right">--><?//= number_format((float)$amount, 2, '.', '') ?><!--</td>-->
        </tr>
<!--        <tr height="35px">-->
<!--            <td>P & F</td>-->
<!--            <td></td>-->
<!--            <td style="text-align: right">--><?//= number_format((float)$othercharges, 2, '.', '') ?><!--</td>-->
<!--        </tr>-->
<!--        <tr height="35px">-->
<!--            <td rowspan="2" colspan="12">--><?//= $gst ?><!--<br></td>-->
<!--            <td>CGST --><?//= $amountvat / 2 ?><!--%<br>SGST --><?//= $amountvat / 2 ?><!--%</td>-->
<!--            <td></td>-->
<!--            <td style="text-align: right">--><?//= number_format((float)((($amount + $othercharges) * ($amountvat / 100)) / 2), 2, '.', '') ?><!--<br>-->
<!--                --><?//= number_format((float)((($amount + $othercharges) * ($amountvat / 100)) / 2), 2, '.', '') ?>
<!--            </td>-->
<!--        </tr>-->
<!--        <tr height="35px">-->
<!--            <td>Grand Total:</td>-->
<!--            <td></td>-->
<!--            <td style="text-align: right">--><?//= number_format((float)$ctotal, 2, '.', '') ?><!--</td>-->
<!--        </tr>-->
    </table>
    <div class="row" style="padding-left: 10px; padding-right: 10px">
        <div class="col-xs-10">
            <p style="display: none">I/We hereby certify that my/our registration certificate under the Mahrashtra Value
                Added Tax Act 2002 is in force on the date on which the sale of the goods specified in this tax
                tax invoice is made by me/us and that the transaction of sale covered by this tax invoice
                has been effected by me/us it shall be accounted or in the turnover of sales while filling
                of return and the due tax, if any, payable on the sale has been paid or shall be paid*</p>
        </div>
    </div>
    <div style="color: darkgreen; text-align: right">
        For <?=($_SESSION["work"] == "fine")?"Fine Contacts":"Precision Press Component"?>
    </div>

</div>
<script type="text/javascript">
    window.print();
    setTimeout(function () {
        window.close();
    }, 100);
</script>
</body>
</html>
