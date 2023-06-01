<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Request_type;
use App\Models\Requests;
use App\Models\Request_History;
use Illuminate\Support\Facades\Auth;
use PHPMailer\PHPMailer\PHPMailer;
use \ConvertApi\ConvertApi;



class RequestController extends Controller
{

    public function submit_request(Request $request)
    {

        //email to
        $emailSendTo = User::where('id', $request->resident_id)->first();
        do {
            $random_number = mt_rand(1000000, 9999999);
            $formatted_number = sprintf("%07d", $random_number);
            $reference_key =  $request->request_type_name . "-" . $formatted_number;
            $count = Requests::where('reference_key', $reference_key)->count();
        } while ($count != 0);

        require base_path("vendor/autoload.php");
        $mail = new PHPMailer(true);     // Passing true enables exceptions


        // Email server settings
        $mail->SMTPDebug = 0;
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';             //  smtp host
        $mail->SMTPAuth = true;
        $mail->Username = 'jakersonbermudo98@gmail.com';   //  sender username
        $mail->Password = 'pupszejyyuypahsb';       // sender password
        $mail->SMTPSecure = 'tls';                  // encryption - ssl/tls
        $mail->Port = 587;                          // port - 587/465

        $mail->setFrom($mail->Username, 'Barangay South Signal Village');
        $mail->addAddress($emailSendTo->email);

        $message  = '<html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <style>body{height: 100vh;display: flex;justify-content: center;align-items: center;background: linear-gradient(45deg,#e43a15,#e65245)}.card{width: 400px;padding: 80px 50px;position: relative;border-radius: 20px;box-shadow: 0 5px 25px rgba(0,0,0,0.2)}.card h3{color: #111;margin-bottom: 50px;border-left: 5px solid red;padding-left: 10px;line-height: 1em}.inputbox{margin-bottom: 50px}.inputbox input{position:absolute;width: 300px;background:transparent}.inputbox input:focus{color: #495057;background-color: #fff;border-color: #e54b38;outline: 0;box-shadow: none}.inputbox span{position: relative;top: 7px;left: 1px;padding-left: 10px;display: inline-block;transition: 0.5s}.inputbox input:focus ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}.inputbox input:valid ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}</style>
        </head>
        <body>
        <link
                href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
                rel="stylesheet"
                integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                crossorigin="anonymous">
            <script
                src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
                crossorigin="anonymous"></script>
            <div class="card">
            <img src="https://th.bing.com/th/id/OIP.7mLt__Duzbo-CN0xL3JT9gHaHa?pid=ImgDet&rs=1" alt="Barangay South SIgnal Village Logo"  class="rounded float-start" alt="southsignal" style="width: 125px ;">

                <h3 class="mb-4">ONLINE REQUEST CONFIRMED</h3>
                <p >
                    Hi <strong>' . $emailSendTo->first_name . " " . $emailSendTo->last_name . " " . $emailSendTo->suffix . '</strong> , we are glad to inform
                    you that your
                    requested <strong>' . Request_type::where('request_type_id', $request->request_type_id)->get()->first()->request_type_name . ' (' . $request->request_description . ')</strong> has been submitted.<br><br>
                    This is your request
                    tracking number:
                </p>
                <h4><strong>' . $reference_key . '</strong></h4>
                <p>
                    Track your request <a href="https://projects.apc.edu.ph/barangay/track" class="text-decoration-none">here</a> or go to your user resident accout.
                </p>
                <br>
                <h5 style="font-style: italic; color: gray;">This is a system generated message. Please DO NOT REPLY to this email.</h5>


            </div>
        </body>
     </html>';


        $mail->isHTML(true);                // Set email content format to HTML

        $mail->Subject = "BARANGAY SOUTH SIGNAL VILLAGE ONLINE REQUEST SERVICE";
        $mail->Body    = $message;

        // $mail->AltBody = plain text version of email body;

        if (!$mail->send()) {
            return back()->with("failed", "Email not sent.")->withErrors($mail->ErrorInfo);
        } else {
            if ($request->file('file')) {
                $file_front = $request->file('file');
                $filename = $request->resident_id . '_' . $reference_key . $file_front->getClientOriginalExtension();
                $file_front->move(public_path('/images'), $filename);
            } else {
                $filename = "";
            }

            Requests::create([
                "request_type_id" => $request->request_type_id,
                "resident_id" => $request->resident_id,
                "request_status" => "PENDING",
                "reference_key" =>   $reference_key,
                "request_description" => $request->request_description,
                "request_purpose" => $request->request_purpose,
                "live_relatives" => $request->live_relatives,
                'residency_type' => $request->residency_type,
                "price" => $request->price,
                "file" => $filename,
            ]);

            Request_History::create([
                'request_id' => Requests::where('reference_key',  $reference_key)->first()->request_id,
                "request_status" => "PENDING",
            ]);

            $message = '<p>Your ' . Request_type::where('request_type_id', $request->request_type_id)->first()->request_type_name . ' request reference key:</p><hr>
                           <h5>' . $reference_key . '</h5>
                           <hr>
                       <p>Use this reference key to track your request.</p>';


            // Alert::html('<h4>YOUR REQUEST IS SUCCESSFULY SUBMITTED</h4>', $message, 'success')->showConfirmButton('Confirm', '#AA0F0A');
            // // Alert::success('REQUEST SUCCESSFULY SENT', $message)->showConfirmButton('Confirm', '#AA0F0A');
            // return redirect()->route("userDashboard");


            // Pass a variable through the response
            $data = [
                'success' => true,
                'message' => $message,
            ];

            return response()->json($data);
        }
    }
    public function submit_business_request(Request $request)
    {

        //email to
        $emailSendTo = User::where('id', $request->resident_id)->first();
        do {
            $random_number = mt_rand(1000000, 9999999);
            $formatted_number = sprintf("%07d", $random_number);
            $reference_key =  $request->request_type_name . "-" . $formatted_number;
            $count = Requests::where('reference_key', $reference_key)->count();
        } while ($count != 0);

        require base_path("vendor/autoload.php");
        $mail = new PHPMailer(true);     // Passing true enables exceptions


        // Email server settings
        $mail->SMTPDebug = 0;
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';             //  smtp host
        $mail->SMTPAuth = true;
        $mail->Username = 'jakersonbermudo98@gmail.com';   //  sender username
        $mail->Password = 'pupszejyyuypahsb';       // sender password
        $mail->SMTPSecure = 'tls';                  // encryption - ssl/tls
        $mail->Port = 587;                          // port - 587/465

        $mail->setFrom($mail->Username, 'Barangay South Signal Village');
        $mail->addAddress($emailSendTo->email);

        $message  = '<html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <style>body{height: 100vh;display: flex;justify-content: center;align-items: center;background: linear-gradient(45deg,#e43a15,#e65245)}.card{width: 400px;padding: 80px 50px;position: relative;border-radius: 20px;box-shadow: 0 5px 25px rgba(0,0,0,0.2)}.card h3{color: #111;margin-bottom: 50px;border-left: 5px solid red;padding-left: 10px;line-height: 1em}.inputbox{margin-bottom: 50px}.inputbox input{position:absolute;width: 300px;background:transparent}.inputbox input:focus{color: #495057;background-color: #fff;border-color: #e54b38;outline: 0;box-shadow: none}.inputbox span{position: relative;top: 7px;left: 1px;padding-left: 10px;display: inline-block;transition: 0.5s}.inputbox input:focus ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}.inputbox input:valid ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}</style>
        </head>
        <body>
        <link
                href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
                rel="stylesheet"
                integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                crossorigin="anonymous">
            <script
                src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
                crossorigin="anonymous"></script>
            <div class="card">
            <img src="https://scontent.fmnl8-3.fna.fbcdn.net/v/t39.30808-6/308200005_139218178841776_6598204255648135685_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHCmpLcoXfudang8eMpXLFs7YU6kOGKADXthTqQ4YoANYoF5yYT6yGiACHGMHSvtQ1R2i3utQhaYasMOszztmP4&_nc_ohc=2-PYcU2zltoAX-DFEmA&_nc_zt=23&_nc_ht=scontent.fmnl8-3.fna&oh=00_AfB5qwI02EhCmOdl7_9yEtZFpXc70_Hh3jjhQV0m3iOTtw&oe=63C5040E" alt="Barangay South SIgnal Village Logo"  class="rounded float-start" alt="southsignal" style="width: 125px ;">

                <h3 class="mb-4">ONLINE REQUEST CONFIRMED</h3>
                <p >
                    Hi <strong>' . $emailSendTo->first_name . " " . $emailSendTo->last_name . " " . $emailSendTo->suffix . '</strong> , we are glad to inform
                    you that your
                    requested <strong>' . Request_type::where('request_type_id', $request->request_type_id)->get()->first()->request_type_name . ' (' . $request->request_description . ')</strong> has been submitted.<br><br>
                    This is your request
                    tracking number:
                </p>
                <h4><strong>' . $reference_key . '</strong></h4>
                <p>
                    Track your request <a href="https://projects.apc.edu.ph/barangay/track" class="text-decoration-none">here</a> or go to your user resident accout.
                </p>
                <br>
                <h5 style="font-style: italic; color: gray;">This is a system generated message. Please DO NOT REPLY to this email.</h5>


            </div>
        </body>
    </html>';


        $mail->isHTML(true);                // Set email content format to HTML

        $mail->Subject = "BARANGAY SOUTH SIGNAL VILLAGE ONLINE REQUEST SERVICE";
        $mail->Body    = $message;

        // $mail->AltBody = plain text version of email body;

        if (!$mail->send()) {
            return back()->with("failed", "Email not sent.")->withErrors($mail->ErrorInfo);
        } else {
            if ($request->file('file')) {
                $file_front = $request->file('file');
                $filename = $request->resident_id . '_' . $reference_key . ".".$file_front->getClientOriginalExtension();
                $file_front->move(public_path('/images'), $filename);
            } else {
                $filename = "";
            }


            Requests::create([
                "request_type_id" => $request->request_type_id,
                "resident_id" => $request->resident_id,
                "request_status" => "PENDING",
                "reference_key" =>   $reference_key,
                "request_description" => $request->request_description,
                "request_purpose" => $request->request_purpose,
                "business_address" => $request->business_address,
                'business_name' => $request->business_name,
                "price" => $request->price,
                "file" => $filename,
            ]);


            Request_History::create([
                'request_id' => Requests::where('reference_key',  $reference_key)->first()->request_id,
                "request_status" => "PENDING",
            ]);
            $message = '<p>Your ' . Request_type::where('request_type_id', $request->request_type_id)->first()->request_type_name . ' request reference key:</p><hr>
                           <h5>' . $reference_key . '</h5>
                           <hr>
                       <p>Use this reference key to track your request.</p>';


            $data = [
                'success' => true,
                'message' => $message,
            ];

            return response()->json($data);
        }
    }
    public function denyrequest(Request $request)
    {

        $password_correct = password_verify($request->password, Auth::user()->password);
        if ($password_correct) {
            $transactions = Requests::join('users', 'users.id', '=', 'requests.resident_id')
                ->join('request_type', 'request_type.request_type_id', '=', 'requests.request_type_id')->select('users.*', 'requests.*', 'request_type.*', 'requests.created_at as request_date')->where('request_id', $request->id)->get()->first();



            Requests::where('request_id', $request->id)->update([
                'request_status' => 'DENIED',
                'request_message' => $request->note
            ]);
            Request_History::create([
                'request_id' => $request->id,
                "request_status" => "DENIED",
                "processed_by" =>  $transactions->employee_name,
            ]);


            $emailSendTo =  $transactions->first_name . " " . $transactions->last_name;
            require base_path("vendor/autoload.php");
            $mail = new PHPMailer(true);     // Passing true enables exceptions


            // Email server settings
            $mail->SMTPDebug = 0;
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';             //  smtp host
            $mail->SMTPAuth = true;
            $mail->Username = 'jakersonbermudo98@gmail.com';   //  sender username
            $mail->Password = 'pupszejyyuypahsb';       // sender password
            $mail->SMTPSecure = 'tls';                  // encryption - ssl/tls
            $mail->Port = 587;                          // port - 587/465

            $mail->setFrom($mail->Username, 'Barangay South Signal Village');
            $mail->addAddress($transactions->email);

            $message = '<!DOCTYPE html>
            <html lang="en">
                <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Document</title>
                    <style>body{height: 100vh;display: flex;justify-content: center;align-items: center;background: linear-gradient(45deg,#e43a15,#e65245)}.card{width: 400px;padding: 80px 50px;position: relative;border-radius: 20px;box-shadow: 0 5px 25px rgba(0,0,0,0.2)}.card h3{color: #111;margin-bottom: 50px;border-left: 5px solid red;padding-left: 10px;line-height: 1em}.inputbox{margin-bottom: 50px}.inputbox input{position:absolute;width: 300px;background:transparent}.inputbox input:focus{color: #495057;background-color: #fff;border-color: #e54b38;outline: 0;box-shadow: none}.inputbox span{position: relative;top: 7px;left: 1px;padding-left: 10px;display: inline-block;transition: 0.5s}.inputbox input:focus ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}.inputbox input:valid ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}</style>
                </head>
                <body>
                    <link
                        href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
                        rel="stylesheet"
                        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                        crossorigin="anonymous">
                    <script
                        src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
                        crossorigin="anonymous"></script>
                    <div class="card">
                        <img
                            src="https://th.bing.com/th/id/OIP.7mLt__Duzbo-CN0xL3JT9gHaHa?pid=ImgDet&rs=1"
                            alt="Barangay South SIgnal Village Logo" class="rounded
                            float-start" alt="southsignal" style="width: 125px ;">
            
                        <h3 class="mb-4">ONLINE REQUEST DENIED</h3>
                        <p>Dear ' . $emailSendTo  . ',</p>
                        <p>We regret to inform you that your request <strong>' . $transactions->request_type_name . '</strong> with the reference key
                            of <STRONG>' . $transactions->reference_key . '</STRONG> has been denied. The reason for this denial: </p>
                            <p><strong><em>' . $request->note . '</em> </strong> </p>
                        <p>Please ensure that all submitted documents and your information are valid and up-to-date before 
                            submitting future requests. If you have any
                            questions or concerns, please do not hesitate to contact us.</p>
                        <p>Thank you for your understanding.</p>
                        <p>Best regards,</p>
                        <p>Barangay South Signal Village</p>
                        <br>
                        <P style="font-style: italic; color: gray;">This is a system
                            generated message. Please DO NOT REPLY to this email.</P>
                    </div>
                </body>
            </html>';

            $mail->isHTML(true);                // Set email content format to HTML

            $mail->Subject = "Request Denied: " . $transactions->refrence_key;
            $mail->Body    = $message;
            if (!$mail->send()) {
                alert('error');
            }
            $data = [
                'success' => true,
                'message' => 'Correct',
                'content' =>  $transactions,
            ];
        } else {
            $data = [
                'success' => false,
                'message' => 'Incorrect',
            ];
        }

        return response()->json($data);
    }

    public function acceptrequest(Request $request)
    {
        $password_correct = password_verify($request->password, Auth::user()->password);
        if ($password_correct) {
            $transactions = Requests::join('users', 'users.id', '=', 'requests.resident_id')
                ->join('request_type', 'request_type.request_type_id', '=', 'requests.request_type_id')->select('users.*', 'requests.*', 'request_type.*', 'requests.created_at as request_date')->where('request_id', $request->id)->get()->first();


            $dateString = $request->daterange;
            $dateArray = explode(" - ", $dateString);
            $formattedDates = array_map(function ($date) {
                return date("M. d, Y", strtotime($date));
            }, $dateArray);
            $formattedDateString = implode(" - ", $formattedDates);

            Requests::where('request_id', $request->id)->update([
                'request_status' => 'READY FOR PAYMENT',
                'request_message' => $request->reason,
                'date_claim' => $formattedDateString
            ]);
            Request_History::create([
                'request_id' => $request->id,
                "request_status" => "READY FOR PAYMENT",
                "processed_by" =>  $transactions->employee_name,
            ]);


            $emailSendTo =  $transactions->first_name . " " . $transactions->last_name;
            require base_path("vendor/autoload.php");
            $mail = new PHPMailer(true);     // Passing true enables exceptions


            // Email server settings
            $mail->SMTPDebug = 0;
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';             //  smtp host
            $mail->SMTPAuth = true;
            $mail->Username = 'jakersonbermudo98@gmail.com';   //  sender username
            $mail->Password = 'pupszejyyuypahsb';       // sender password
            $mail->SMTPSecure = 'tls';                  // encryption - ssl/tls
            $mail->Port = 587;                          // port - 587/465

            $mail->setFrom($mail->Username, 'Barangay South Signal Village');
            $mail->addAddress($transactions->email);

            $message = '<!DOCTYPE html>
            <html lang="en">
                <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Document</title>
                    <style>body{height: 100vh;display: flex;justify-content: center;align-items: center;background: linear-gradient(45deg,#e43a15,#e65245)}.card{width: 400px;padding: 80px 50px;position: relative;border-radius: 20px;box-shadow: 0 5px 25px rgba(0,0,0,0.2)}.card h3{color: #111;margin-bottom: 50px;border-left: 5px solid red;padding-left: 10px;line-height: 1em}.inputbox{margin-bottom: 50px}.inputbox input{position:absolute;width: 300px;background:transparent}.inputbox input:focus{color: #495057;background-color: #fff;border-color: #e54b38;outline: 0;box-shadow: none}.inputbox span{position: relative;top: 7px;left: 1px;padding-left: 10px;display: inline-block;transition: 0.5s}.inputbox input:focus ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}.inputbox input:valid ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}</style>
                </head>
                <body>
                    <link
                        href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
                        rel="stylesheet"
                        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                        crossorigin="anonymous">
                    <script
                        src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
                        crossorigin="anonymous"></script>
                    <div class="card">
                        <img
                            src="https://th.bing.com/th/id/OIP.7mLt__Duzbo-CN0xL3JT9gHaHa?pid=ImgDet&rs=1"
                            alt="Barangay South SIgnal Village Logo" class="rounded
                            float-start" alt="southsignal" style="width: 125px ;">
            
                        <h3 class="mb-4">ONLINE REQUEST ACCEPTED</h3>
                        <p>Dear ' . $emailSendTo  . ',</p>
                        <p>We are pleased to inform you that your request for a <strong>' . $transactions->request_type_name . '</strong> with the reference key
                            of <STRONG>' . $transactions->reference_key . '</STRONG> has been approved.  The status of your request has been changed to <strong>"READY FOR PAYMENT"</strong>.</p>
                            <hr>
                        <h5>Note:</h5>
                        <p>Document can be process from <br><strong>' . $formattedDateString . '</strong> during the office hours.</p>
                        <p>' . $request->reason . '</p>
                        <hr>
                            <p>Please proceed to the barangay office to present valid requirements and make the necessary payment for the document upon pickup. To check for the necessary information about the requirements, click the link <a href="http://127.0.0.1:8000/requirements">here</a>.</p>
                                <p>Thank you for your understanding.</p>
                        <p>Best regards,</p>
                        <p>Barangay South Signal Village</p>
                        <br>
                        <P style="font-style: italic; color: gray;">This is a system
                            generated message. Please DO NOT REPLY to this email.</P>
                    </div>
                </body>
            </html>';

            $mail->isHTML(true);                // Set email content format to HTML

            $mail->Subject = "Request Approved: " . $transactions->refrence_key;
            $mail->Body    = $message;
            if (!$mail->send()) {
                alert('error');
            }
            $data = [
                'success' => true,
                'message' => 'Correct',
                'content' =>  $transactions,
            ];
        } else {
            $data = [
                'success' => false,
                'message' => 'Incorrect',
            ];
        }

        return response()->json($data);
    }



    public function file()
    {

        // Load the Word document as a template
        $file = public_path('wordsDocsFormat\BAR_CLEARANCE _MOCK.docx');
        $template = new \PhpOffice\PhpWord\TemplateProcessor($file);

        // Replace variables with values
        $template->setValue('full_name', 'Jake Doe');


        $template->saveAs(public_path('wordsDocsFormat\hello.docx'));

        ConvertApi::setApiSecret('0lUjg4mpIjRhXbE9');
        $result = ConvertApi::convert(
            'pdf',
            [
                'File' => public_path('wordsDocsFormat\hello.docx'),
            ],
            'doc'
        );
        unlink(public_path('wordsDocsFormat\hello.docx'));
        $result->saveFiles(public_path('wordsDocsFormat'));
    }

    public function readyToClaim(Request $request)
    {
        $password_correct = password_verify($request->password, Auth::user()->password);
        if ($password_correct) {
            $transactions = Requests::join('users', 'users.id', '=', 'requests.resident_id')
                ->join('request_type', 'request_type.request_type_id', '=', 'requests.request_type_id')->select('users.*', 'requests.*', 'request_type.*', 'requests.created_at as request_date')->where('request_id', $request->id)->get()->first();
            $dateString = $request->daterange;
            $dateArray = explode(" - ", $dateString);
            $formattedDates = array_map(function ($date) {
                return date("M. d, Y", strtotime($date));
            }, $dateArray);
            $formattedDateString = implode(" - ", $formattedDates);

            // for barangay clearance
            if ($transactions->request_type_id == 3) {

                // Load the Word document as a template
                $file = public_path('wordsDocsFormat\BAR_CLEARANCE _MOCK.docx');
                $template = new \PhpOffice\PhpWord\TemplateProcessor($file);

                // Replace variables with values
                $template->setValue('full_name', ucwords(strtolower($transactions->first_name) . " " . strtolower($transactions->middle_name) . " " . strtolower($transactions->last_name)));
                $template->setValue('complete_address', ucwords(strtolower($transactions->address_unitNo)) . ' ' . ucwords(strtolower($transactions->address_houseNo)) . ' ' . ucwords(strtolower($transactions->address_street)) . ' ' . ucwords(strtolower($transactions->address_purok)) . ' Barangay South Signal Village Taguig City');
                $template->setValue('dob', $transactions->birthdate);
                $template->setValue('place_birth', $transactions->place_birth);
                $template->setValue('citizenship', $transactions->nationality);
                $template->setValue('residency', $transactions->residency_type);
                $template->setValue('purpose', $transactions->request_description);
                $template->setValue('employee_name', ucwords(strtolower($transactions->employee_name)));
                $template->setValue('ref', $request->ref);
                $template->setValue('or', $request->or);
                $template->setValue('ctc', $request->ctc);
                $template->setValue('issue_on', $request->issue_on);
                $template->setValue('expiration', date('Y-m-d', strtotime($request->issue_on. ' +1 year')));

                $file_directory = "wordsDocsFormat\'" . $transactions->reference_key . ".docx";
                $template->saveAs(public_path($file_directory));

                ConvertApi::setApiSecret('0lUjg4mpIjRhXbE9');
                $result = ConvertApi::convert(
                    'pdf',
                    [
                        'File' => public_path($file_directory),
                    ],
                    'doc'
                );
                unlink(public_path($file_directory));
                $result->saveFiles(public_path('wordsDocsFormat'));


                Requests::where('request_id', $request->id)->update([
                    'request_status' => 'DONE',
                    'pdf_file' => $transactions->reference_key . ".pdf",
                    'issue_on' =>  $request->issue_on,
                    'ref' => $request->ref,
                    'or_num' => $request->or,
                    'ctc' => $request->ctc,

                ]);
                Request_History::create([
                    'request_id' => $request->id,
                    "request_status" => "DONE",
                    "processed_by" =>  $transactions->employee_name,
                ]);


                $emailSendTo =  $transactions->first_name . " " . $transactions->last_name;
                require base_path("vendor/autoload.php");
                $mail = new PHPMailer(true);     // Passing true enables exceptions


                // Email server settings
                $mail->SMTPDebug = 0;
                $mail->isSMTP();
                $mail->Host = 'smtp.gmail.com';             //  smtp host
                $mail->SMTPAuth = true;
                $mail->Username = 'jakersonbermudo98@gmail.com';   //  sender username
                $mail->Password = 'pupszejyyuypahsb';       // sender password
                $mail->SMTPSecure = 'tls';                  // encryption - ssl/tls
                $mail->Port = 587;                          // port - 587/465

                $mail->setFrom($mail->Username, 'Barangay South Signal Village');
                $mail->addAddress($transactions->email);

                $message = '<!DOCTYPE html>
                    <html lang="en">
                    <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Document</title>
                    <style>body{height: 100vh;display: flex;justify-content: center;align-items: center;background: linear-gradient(45deg,#e43a15,#e65245)}.card{width: 400px;padding: 80px 50px;position: relative;border-radius: 20px;box-shadow: 0 5px 25px rgba(0,0,0,0.2)}.card h3{color: #111;margin-bottom: 50px;border-left: 5px solid red;padding-left: 10px;line-height: 1em}.inputbox{margin-bottom: 50px}.inputbox input{position:absolute;width: 300px;background:transparent}.inputbox input:focus{color: #495057;background-color: #fff;border-color: #e54b38;outline: 0;box-shadow: none}.inputbox span{position: relative;top: 7px;left: 1px;padding-left: 10px;display: inline-block;transition: 0.5s}.inputbox input:focus ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}.inputbox input:valid ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}</style>
                    </head>
                    <body>
                    <link
                        href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
                        rel="stylesheet"
                        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                        crossorigin="anonymous">
                    <script
                        src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
                        crossorigin="anonymous"></script>
                    <div class="card">
                        <img
                            src="https://th.bing.com/th/id/OIP.7mLt__Duzbo-CN0xL3JT9gHaHa?pid=ImgDet&rs=1"
                            alt="Barangay South SIgnal Village Logo" class="rounded
                            float-start" alt="southsignal" style="width: 125px ;">
            
                        <h3 class="mb-4">ONLINE REQUEST DONE</h3>
                        <p>Dear ' . $emailSendTo  . ',</p>
                        <p>We are pleased to inform you that your request for a <strong>' . $transactions->request_type_name . '</strong> with the reference key
                            of <STRONG>' . $transactions->reference_key . '</STRONG> has been completed and the status of your request has been changed to <strong>"DONE"</strong>.</p>

                            
                            <p>Attached to this email, you will find a PDF copy of your requested document, which you may print and use for your needs.</p>
                                <p>Thank you for trusting us.</p>
                        <p>Best regards,</p>
                        <p>Barangay South Signal Village</p>
                        <br>
                        <P style="font-style: italic; color: gray;">This is a system
                            generated message. Please DO NOT REPLY to this email.</P>
                    </div>
                </body>
                </html>';

                $mail->isHTML(true);                // Set email content format to HTML
                // $mail->addAttachment(public_path($file_directory), "Attachment.docx");

                $mail->addAttachment(public_path("wordsDocsFormat\\" . $transactions->reference_key . ".pdf"));
                $mail->Subject = "Request Done: " . $transactions->refrence_key;
                $mail->Body    = $message;

                if (!$mail->send()) {
                    alert('error');
                }
            } 
            // for barangay ID and CEDULA
            else if ($transactions->request_type_id == 1 || $transactions->request_type_id == 2) {
                Requests::where('request_id', $request->id)->update([
                    'request_status' => 'DONE',
                    'issue_on' =>  $request->issue_on,
                    'ref' => $request->ref,
                    'or_num' => $request->or,
                    'ctc' => $request->ctc,

                ]);
                Request_History::create([
                    'request_id' => $request->id,
                    "request_status" => "DONE",
                    "processed_by" =>  $transactions->employee_name,
                ]);

                $emailSendTo =  $transactions->first_name . " " . $transactions->last_name;
                require base_path("vendor/autoload.php");
                $mail = new PHPMailer(true);     // Passing true enables exceptions


                // Email server settings
                $mail->SMTPDebug = 0;
                $mail->isSMTP();
                $mail->Host = 'smtp.gmail.com';             //  smtp host
                $mail->SMTPAuth = true;
                $mail->Username = 'jakersonbermudo98@gmail.com';   //  sender username
                $mail->Password = 'pupszejyyuypahsb';       // sender password
                $mail->SMTPSecure = 'tls';                  // encryption - ssl/tls
                $mail->Port = 587;                          // port - 587/465

                $mail->setFrom($mail->Username, 'Barangay South Signal Village');
                $mail->addAddress($transactions->email);

                $message = '<!DOCTYPE html>
                    <html lang="en">
                    <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Document</title>
                    <style>body{height: 100vh;display: flex;justify-content: center;align-items: center;background: linear-gradient(45deg,#e43a15,#e65245)}.card{width: 400px;padding: 80px 50px;position: relative;border-radius: 20px;box-shadow: 0 5px 25px rgba(0,0,0,0.2)}.card h3{color: #111;margin-bottom: 50px;border-left: 5px solid red;padding-left: 10px;line-height: 1em}.inputbox{margin-bottom: 50px}.inputbox input{position:absolute;width: 300px;background:transparent}.inputbox input:focus{color: #495057;background-color: #fff;border-color: #e54b38;outline: 0;box-shadow: none}.inputbox span{position: relative;top: 7px;left: 1px;padding-left: 10px;display: inline-block;transition: 0.5s}.inputbox input:focus ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}.inputbox input:valid ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}</style>
                    </head>
                    <body>
                    <link
                        href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
                        rel="stylesheet"
                        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                        crossorigin="anonymous">
                    <script
                        src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
                        crossorigin="anonymous"></script>
                    <div class="card">
                        <img
                            src="https://th.bing.com/th/id/OIP.7mLt__Duzbo-CN0xL3JT9gHaHa?pid=ImgDet&rs=1"
                            alt="Barangay South SIgnal Village Logo" class="rounded
                            float-start" alt="southsignal" style="width: 125px ;">
            
                        <h3 class="mb-4">ONLINE REQUEST DONE</h3>
                        <p>Dear ' . $emailSendTo  . ',</p>
                        <p>We are pleased to inform you that your request for a <strong>' . $transactions->request_type_name . '</strong> with the reference key
                            of <STRONG>' . $transactions->reference_key . '</STRONG> has been completed and the status of your request has been changed to <strong>"DONE"</strong>.</p>

                                <p>Thank you for trusting us.</p>
                        <p>Best regards,</p>
                        <p>Barangay South Signal Village</p>
                        <br>
                        <P style="font-style: italic; color: gray;">This is a system
                            generated message. Please DO NOT REPLY to this email.</P>
                    </div>
                </body>
                </html>';

                $mail->isHTML(true);                // Set email content format to HTML
                // $mail->addAttachment(public_path($file_directory), "Attachment.docx");

                $mail->Subject = "Request Done: " . $transactions->refrence_key;
                $mail->Body    = $message;

                if (!$mail->send()) {
                    alert('error');
                }
            } 
            // for business clearance
            else if ($transactions->request_type_id == 5) {
                // Load the Word document as a template
                $file = public_path('wordsDocsFormat\BUS_CLEAR _MOCK.docx');
                $template = new \PhpOffice\PhpWord\TemplateProcessor($file);

                $date_String = '2023-02-16';
                $date_ = date_create($date_String);
                // Extract month
                $month = date_format($date_, 'F');

                // Extract day
                $day = date_format($date_, 'jS');

                // Extract year
                $year = date_format($date_, 'Y');

                // Replace variables with values
                $template->setValue('name', ucwords(strtolower($transactions->first_name) . " " . strtolower($transactions->middle_name) . " " . strtolower($transactions->last_name)));
                $template->setValue('address', ucwords(strtolower($transactions->address_unitNo)) . ' ' . ucwords(strtolower($transactions->address_houseNo)) . ' ' . ucwords(strtolower($transactions->address_street)) . ' ' . ucwords(strtolower($transactions->address_purok)) . ' Barangay South Signal Village Taguig City');
                $template->setValue('purpose', "BUSINESS CLEARANCE for ".$transactions->request_description);
                $template->setValue('business_name', strtoupper($transactions->business_name));
                $template->setValue('business_address', ucwords(strtolower($transactions->business_address)));
                $template->setValue('employee_name', ucwords(strtolower($transactions->employee_name)));
                $template->setValue('ref', $request->ref);
                $template->setValue('or', $request->or);
                $template->setValue('ctc', $request->ctc);
                $template->setValue('issue_on', $request->issue_on);
                $template->setValue('day', $day);
                $template->setValue('month', $month);
                $template->setValue('year', $year);
                $template->setValue('expiration', date('Y-m-d', strtotime($request->issue_on. ' +1 year')));

                $file_directory = "wordsDocsFormat\'" . $transactions->reference_key . ".docx";
                $template->saveAs(public_path($file_directory));

                ConvertApi::setApiSecret('0lUjg4mpIjRhXbE9');
                $result = ConvertApi::convert(
                    'pdf',
                    [
                        'File' => public_path($file_directory),
                    ],
                    'doc'
                );
                unlink(public_path($file_directory));
                $result->saveFiles(public_path('wordsDocsFormat'));


                Requests::where('request_id', $request->id)->update([
                    'request_status' => 'DONE',
                    'pdf_file' => $transactions->reference_key . ".pdf",
                    'issue_on' =>  $request->issue_on,
                    'ref' => $request->ref,
                    'or_num' => $request->or,
                    'ctc' => $request->ctc,

                ]);
                Request_History::create([
                    'request_id' => $request->id,
                    "request_status" => "DONE",
                    "processed_by" =>  $transactions->employee_name,
                ]);


                $emailSendTo =  $transactions->first_name . " " . $transactions->last_name;
                require base_path("vendor/autoload.php");
                $mail = new PHPMailer(true);     // Passing true enables exceptions


                // Email server settings
                $mail->SMTPDebug = 0;
                $mail->isSMTP();
                $mail->Host = 'smtp.gmail.com';             //  smtp host
                $mail->SMTPAuth = true;
                $mail->Username = 'jakersonbermudo98@gmail.com';   //  sender username
                $mail->Password = 'pupszejyyuypahsb';       // sender password
                $mail->SMTPSecure = 'tls';                  // encryption - ssl/tls
                $mail->Port = 587;                          // port - 587/465

                $mail->setFrom($mail->Username, 'Barangay South Signal Village');
                $mail->addAddress($transactions->email);

                $message = '<!DOCTYPE html> <html lang="en"> <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Document</title>
                    <style>body{height: 100vh;display: flex;justify-content: center;align-items: center;background: linear-gradient(45deg,#e43a15,#e65245)}.card{width: 400px;padding: 80px 50px;position: relative;border-radius: 20px;box-shadow: 0 5px 25px rgba(0,0,0,0.2)}.card h3{color: #111;margin-bottom: 50px;border-left: 5px solid red;padding-left: 10px;line-height: 1em}.inputbox{margin-bottom: 50px}.inputbox input{position:absolute;width: 300px;background:transparent}.inputbox input:focus{color: #495057;background-color: #fff;border-color: #e54b38;outline: 0;box-shadow: none}.inputbox span{position: relative;top: 7px;left: 1px;padding-left: 10px;display: inline-block;transition: 0.5s}.inputbox input:focus ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}.inputbox input:valid ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}</style>
                    </head>
                    <body>
                    <link
                        href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
                        rel="stylesheet"
                        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                        crossorigin="anonymous">
                    <script
                        src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
                        crossorigin="anonymous"></script>
                    <div class="card">
                        <img
                            src="https://th.bing.com/th/id/OIP.7mLt__Duzbo-CN0xL3JT9gHaHa?pid=ImgDet&rs=1"
                            alt="Barangay South SIgnal Village Logo" class="rounded
                            float-start" alt="southsignal" style="width: 125px ;">

                        <h3 class="mb-4">ONLINE REQUEST DONE</h3>
                        <p>Dear ' . $emailSendTo  . ',</p>
                        <p>We are pleased to inform you that your request for a <strong>' . $transactions->request_type_name . '</strong> with the reference key
                            of <STRONG>' . $transactions->reference_key . '</STRONG> has been completed and the status of your request has been changed to <strong>"DONE"</strong>.</p>

                            
                            <p>Attached to this email, you will find a PDF copy of your requested document, which you may print and use for your needs.</p>
                                <p>Thank you for trusting us.</p>
                        <p>Best regards,</p>
                        <p>Barangay South Signal Village</p>
                        <br>
                        <P style="font-style: italic; color: gray;">This is a system
                            generated message. Please DO NOT REPLY to this email.</P>
                    </div>
                </body>
                </html>';

                $mail->isHTML(true);                // Set email content format to HTML
                // $mail->addAttachment(public_path($file_directory), "Attachment.docx");

                $mail->addAttachment(public_path("wordsDocsFormat\\" . $transactions->reference_key . ".pdf"));
                $mail->Subject = "Request Done: " . $transactions->refrence_key;
                $mail->Body    = $message;

                if (!$mail->send()) {
                    alert('error');
                }
            }


            $data = [
                'success' => true,
                'message' => 'Correct',
                'content' =>  $transactions,
                'key' => $transactions->reference_key
            ];
        } else {
            $data = [
                'success' => false,
                'message' => 'Incorrect',
            ];
        }

        return response()->json($data);
    }
}
