<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Concerns;
use App\Models\Concern_History;
use Illuminate\Support\Facades\Auth;
use PHPMailer\PHPMailer\PHPMailer;
use \ConvertApi\ConvertApi;
use Illuminate\Support\Facades\Validator;


class Concern extends Controller
{
    public function submit_concern(Request $request)
    {

        $validateUser = Validator::make(
            $request->all(),
            [
                'g-recaptcha-response' => 'required|captcha',
            ]
        );

        if ($validateUser->fails()) {

            // return response()->json([
            //     'status' => false,
            //     'message' => 'validation error',
            //     'errors' => $validateUser->errors()
            // ], 401);

            $data = [
                'success' => false,
                'message' => "Please verify that you are not a robot.",
            ];

            return response()->json($data);

        }

        if ($request->file('file')) {
            $file_front = $request->file('file');
            $filename = $request->resident_id . '_' . "concern " . date("Y-m-d-H-i-s") . "." . $file_front->getClientOriginalExtension();
            $file_front->move(public_path('/concerns'), $filename);
        } else {
            $filename = "";
        }

        do {
            $random_number = mt_rand(1000000, 9999999);
            $formatted_number = sprintf("%07d", $random_number);
            $reference_key =  "CONCERN-" . $formatted_number;
            $count = Concerns::where('reference_key', $reference_key)->count();
        } while ($count != 0);



        Concerns::create([
            'reference_key' => $reference_key,
            'concern_type' => $request->concern_type,
            'resident_id' => $request->resident_id,
            'concern_title' => $request->concern_title,
            'concern_description' => $request->concern_description,
            'concern_photo' => $filename,
            'concern_status' => "PENDING"
        ]);
        Concern_History::create([
            'concern' => Concerns::where('resident_id', $request->resident_id)->get()->last()->concern_id,
            'concern_update_status' => "PENDING",

        ]);

        require base_path("vendor/autoload.php");
        $mail = new PHPMailer(true);     // Passing true enables exceptions

        //email to
        $emailSendTo = User::where('id', $request->resident_id)->first();
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

                <h3 class="mb-4">ONLINE CONCERN CONFIRMATION</h3>
                <p >
                    Hi <strong>' . $emailSendTo->first_name . " " . $emailSendTo->last_name . " " . $emailSendTo->suffix . '</strong> , we are glad to inform
                    you that your submiited concern has been submitted.<br><br>
                    <hr>
                    <h3>' . $request->concern_title . '</h3>
                    <p>' . $request->concern_description . '</p>
                    <hr>
                    This is your concern
                    tracking number:
                </p>
                <h4><strong>' . $reference_key . '</strong></h4>
                <p>
                    Track your CONCERN <a href="http://127.0.0.1:8000/track" class="text-decoration-none">here</a> or go to your user resident accout.
                </p>
                <br>
                <h5 style="font-style: italic; color: gray;">This is a system generated message. Please DO NOT REPLY to this email.</h5>


            </div>
        </body>
     </html>';


        $mail->isHTML(true);                // Set email content format to HTML

        $mail->Subject = "BARANGAY SOUTH SIGNAL VILLAGE ONLINE CONCERN SERVICE";
        $mail->Body    = $message;

        // $mail->AltBody = plain text version of email body;

        if (!$mail->send()) {
            return back()->with("failed", "Email not sent.")->withErrors($mail->ErrorInfo);
        }
        $message = '<p>Your concern reference key:</p><hr>
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

    public function denyconcern(Request $request)
    {
        $password_correct = password_verify($request->password, Auth::user()->password);
        if ($password_correct) {
            $transactions = Concerns::join('users', 'users.id', '=', 'concern.resident_id')->select('users.*', 'concern.*', 'concern.created_at as concern_created_at')->where('concern_id', $request->id)->get()->first();
            Concerns::where('concern_id', $request->id)->update([
                'concern_status' => 'DENIED',
                'concern_message' => $request->note
            ]);
            Concern_History::create([
                'concern' => $request->id,
                "concern_update_status" => "DENIED",
                "employee_name" =>  $transactions->concern_processed_by,
                'concern_update_title' => "DENIED CONCERN",
                'concern_update_description' => $request->note

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
            
                        <h3 class="mb-4">SUBMITTED CONCERN DENIED</h3>
                        <p>Dear ' . $emailSendTo  . ',</p>
                        <p>We regret to inform you that your <strong> SUBMITTED CONCERN </strong> with the reference key
                            of <STRONG>' . $transactions->reference_key . '</STRONG> has been denied. The reason for this denial: </p>
                            <p><strong><em>' . $request->note . '</em> </strong> </p>
                        <p>Please ensure that all submitted concerns and your information are valid and up-to-date before 
                            submitting future concerns. If you have any
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

            $mail->Subject = "Concern Denied: " . $transactions->refrence_key;
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
    public function updateConcern(Request $request)
    {
        $password_correct = password_verify($request->password, Auth::user()->password);
        if ($password_correct) {
            $transactions = Concerns::join('users', 'users.id', '=', 'concern.resident_id')->select('users.*', 'concern.*', 'concern.created_at as concern_created_at')->where('concern_id', $request->id)->get()->first();
            Concern_History::create([
                'concern' => $request->id,
                "concern_update_status" => "UPDATE",
                "employee_name" =>  $transactions->concern_processed_by,
                'concern_update_title' => $request->title,
                'concern_update_description' => $request->details
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
                <style>
                body{
                    height: 100vh;display: flex;justify-content: center;align-items: center;background: linear-gradient(45deg,#e43a15,#e65245)}.card{width: 400px;padding: 80px 50px;position: relative;border-radius: 20px;box-shadow: 0 5px 25px rgba(0,0,0,0.2)}.card h3{color: #111;margin-bottom: 50px;border-left: 5px solid red;padding-left: 10px;line-height: 1em}.inputbox{margin-bottom: 50px}.inputbox input{position:absolute;width: 300px;background:transparent}.inputbox input:focus{color: #495057;background-color: #fff;border-color: #e54b38;outline: 0;box-shadow: none}.inputbox span{position: relative;top: 7px;left: 1px;padding-left: 10px;display: inline-block;transition: 0.5s}.inputbox input:focus ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}.inputbox input:valid ~ span{transform: translateX(-10px) translateY(-32px);font-size: 12px}</style>
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
        
                    <h3 class="mb-4">SUBMITTED CONCERN UPDATED</h3>
                    <p>Dear ' . $emailSendTo  . ',</p>
                    <p>We are glad to inform you that your <strong> SUBMITTED CONCERN </strong> with the reference key
                        of <STRONG>' . $transactions->reference_key . '</STRONG> has been updated. The update: </p>
                        <p><strong><em>' . $request->title . '</em> </strong> </p>
                        <p>' . $request->details . '</p>
                   <p>We will surely update you immediately with your concern.</p>
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

            $mail->Subject = "Concern Update: " . $transactions->refrence_key;
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

    public function closeConcern(Request $request)
    {
        $password_correct = password_verify($request->password, Auth::user()->password);
        if ($password_correct) {
            $transactions = Concerns::join('users', 'users.id', '=', 'concern.resident_id')->select('users.*', 'concern.*', 'concern.created_at as concern_created_at')->where('concern_id', $request->id)->get()->first();

            Concerns::where('concern_id', $request->id)->update([
                'concern_status' => 'DONE',
                'concern_message' => $request->note
            ]);
            Concern_History::create([
                'concern' => $request->id,
                "concern_update_status" => "DONE",
                "employee_name" =>  $transactions->concern_processed_by,
                'concern_update_title' => $request->title,
                'concern_update_description' => $request->details
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
        
                    <h3 class="mb-4">SUBMITTED CONCERN UPDATED</h3>
                    <p>Dear ' . $emailSendTo  . ',</p>
                    <p>We are glad to inform you that your <strong> SUBMITTED CONCERN </strong> with the reference key
                        of <STRONG>' . $transactions->reference_key . '</STRONG> is now CLOSED(Resolved). The update: </p>
                        <p><strong><em>' . $request->title . '</em> </strong> </p>
                        
                        <p>' . $request->details . '</p>
                    <p>Thank you for submitting your concern to us.</p>
                    <p>Best regards,</p>
                    <p>Barangay South Signal Village</p>
                    <br>
                    <P style="font-style: italic; color: gray;">This is a system
                        generated message. Please DO NOT REPLY to this email.</P>
                </div>
            </body>
        </html>';

            $mail->isHTML(true);                // Set email content format to HTML

            $mail->Subject = "Concern Update: " . $transactions->refrence_key;
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
}
