<?php require_once("../../includes/initialize.php"); ?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>dts-Doc MGMT</title>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/Data-Table.css">
    <link rel="stylesheet" href="../assets/css/Data-Table2.css">
    <link rel="stylesheet" href="../assets/css/Footer-Basic.css">
    <link rel="stylesheet" href="../assets/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
</head>

<body style="height:650px;">
    <div style="height:50px;">
        <nav class="navbar navbar-light navbar-expand-md navigation-clean-button" style="height:38px;background-color:rgb(255,0,0);padding:0px;">
            <div class="container"><a class="navbar-brand" href="#" style="color:rgba(255,255,255,0.9);">sl-dts</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div
                    class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav mr-auto">
                        <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" style="color:rgb(255,255,255);">Documents</a>
                            <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="add_document.html">Add Document</a><a class="dropdown-item" role="presentation" href="docs_on_hand.html">Process Document</a><a class="dropdown-item" role="presentation" href="track_doc.html">Track Document</a>
                                <a
                                    class="dropdown-item" role="presentation" href="mgmt/doc_mgmt.html">Document List</a>
                            </div>
                        </li>
                        <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" style="color:rgb(255,255,255);">Key Elements</a>
                            <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="mastermind/user_mgmt.html">User Mgmt</a><a class="dropdown-item" role="presentation" href="mastermind/dept_mgmt.html">Dept Mgmt</a></div>
                        </li>
                        <li class="nav-item" role="presentation"><a class="nav-link active" href="#" style="color:rgb(255,255,255);">Analytics</a></li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li class="dropdown"><a class="dropdown-toggle nav-link text-white dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" data-id="<?php echo $_SESSION['user_id']?>" data-utype="<?php echo $_SESSION['usertype']?>" data-dept="<?php echo $_SESSION['dept_id']?>" id="usernameHolder" style="color:rgb(255,255,255);"><i class="fa fa-user"></i>&nbsp; 
                        <?php echo $_SESSION['username']; ?> 
                        </a>
                            <div class="dropdown-menu dropdown-menu-right"
                                role="menu"><a class="dropdown-item" role="presentation" href="#" id="changePassword" data-target="#editPassword" data-toggle="modal">Change Password</a><a class="dropdown-item" role="presentation" href="../logout.php">Logout</a></div>
                        </li>
                    </ul>
            </div>
    </div>
    </nav>
    </div>
    <div style="font-size:10px;">
        <div class="container">
            <div class="row" style="padding:0px;margin:7px;">
                <div class="col">
                    <h4 style="color:rgb(134,142,150);">Document Management</h4>
                </div>
            </div>
            <div class="row" style="padding:0px;margin:7px;height:50px;">
                <div class="col-2"><input class="visible" type="text" name="doc_search" placeholder="Search Documents" style="width:150px;height:35px;font-size:12px;"></div>
                <div class="col"><select class="form-control-sm" id="viewSelect" style="font-size:12px;height:33px;"><optgroup label="View Options"><option value="12" selected="">View Requests Only</option><option value="13">View Submissions Only</option><option value="14">View For Processing Only</option></optgroup></select></div>
            </div>
            <div class="row no-gutters" style="width:1107px;">
                <div class="col-auto" style="margin:19px;width:1067px;">
                    <div class="table-responsive" style="font-size:12px;background-color:#ffffff;margin:0px;padding:0px;width:1055px;">
                        <table class="table table-striped table-bordered table-sm">
                            <thead>
                                <tr class="justify-content-start">
                                    <th style="width:96px;">&nbsp;Tracking Num</th>
                                    <th style="width:469px;">Document Name</th>
                                    <th class="visible" style="width:126px;">Queue Time</th>
                                    <th class="visible" style="width:126px;">Document Owner</th>
                                    <th style="width:89px;">Location</th>
                                    <th style="width:92px;">Status</th>
                                    <th style="width:112px;">Process</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr style="height:35px;">
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">180809010</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">SALARY DIFFERENTIAL OF STA CRUZ NATIONAL HIGH SCHOOL</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">RECORDS</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">IN TRANSIT</td>
                                    <td style="height:18px;"><button class="btn btn-success active btn-sm" type="button" style="height:20px;padding:0;font-size:10px;margin:0px 2px;width:90px;">Track Document</button></td>
                                </tr>
                                <tr style="height:35px;">
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">180809010</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">SALARY DIFFERENTIAL OF STA CRUZ NATIONAL HIGH SCHOOL</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">RECORDS</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">IN TRANSIT</td>
                                    <td style="height:18px;"><button class="btn btn-success active btn-sm" type="button" style="height:20px;padding:0;font-size:10px;margin:0px 2px;width:90px;">Track Document</button></td>
                                </tr>
                                <tr style="height:35px;">
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">180809010</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">SALARY DIFFERENTIAL OF STA CRUZ NATIONAL HIGH SCHOOL</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">RECORDS</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">IN TRANSIT</td>
                                    <td style="height:18px;"><button class="btn btn-success active btn-sm" type="button" style="height:20px;padding:0;font-size:10px;margin:0px 2px;width:90px;">Track Document</button></td>
                                </tr>
                                <tr style="height:35px;">
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">180809010</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">SALARY DIFFERENTIAL OF STA CRUZ NATIONAL HIGH SCHOOL</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">RECORDS</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">IN TRANSIT</td>
                                    <td style="height:18px;"><button class="btn btn-success active btn-sm" type="button" style="height:20px;padding:0;font-size:10px;margin:0px 2px;width:90px;">Track Document</button></td>
                                </tr>
                                <tr style="height:35px;">
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">180809010</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">SALARY DIFFERENTIAL OF STA CRUZ NATIONAL HIGH SCHOOL</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">RECORDS</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">IN TRANSIT</td>
                                    <td style="height:18px;"><button class="btn btn-success active btn-sm" type="button" style="height:20px;padding:0;font-size:10px;margin:0px 2px;width:90px;">Track Document</button></td>
                                </tr>
                                <tr style="height:35px;">
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">180809010</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">SALARY DIFFERENTIAL OF STA CRUZ NATIONAL HIGH SCHOOL</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">RECORDS</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">IN TRANSIT</td>
                                    <td style="height:18px;"><button class="btn btn-success active btn-sm" type="button" style="height:20px;padding:0;font-size:10px;margin:0px 2px;width:90px;">Track Document</button></td>
                                </tr>
                                <tr style="height:35px;">
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">180809010</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">SALARY DIFFERENTIAL OF STA CRUZ NATIONAL HIGH SCHOOL</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">RECORDS</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">IN TRANSIT</td>
                                    <td style="height:18px;"><button class="btn btn-success active btn-sm" type="button" style="height:20px;padding:0;font-size:10px;margin:0px 2px;width:90px;">Track Document</button></td>
                                </tr>
                                <tr style="height:35px;">
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">180809010</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">SALARY DIFFERENTIAL OF STA CRUZ NATIONAL HIGH SCHOOL</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">RECORDS</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">IN TRANSIT</td>
                                    <td style="height:18px;"><button class="btn btn-success active btn-sm" type="button" style="height:20px;padding:0;font-size:10px;margin:0px 2px;width:90px;">Track Document</button></td>
                                </tr>
                                <tr style="height:35px;">
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">180809010</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">SALARY DIFFERENTIAL OF STA CRUZ NATIONAL HIGH SCHOOL</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">RECORDS</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">IN TRANSIT</td>
                                    <td style="height:18px;"><button class="btn btn-success active btn-sm" type="button" style="height:20px;padding:0;font-size:10px;margin:0px 2px;width:90px;">Track Document</button></td>
                                </tr>
                                <tr style="height:35px;">
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">180809010</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">SALARY DIFFERENTIAL OF STA CRUZ NATIONAL HIGH SCHOOL</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">STA CRUZ ES</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">RECORDS</td>
                                    <td class="align-middle" style="color:rgb(0,0,0);font-size:14px;">IN TRANSIT</td>
                                    <td style="height:18px;"><button class="btn btn-success active btn-sm" type="button" style="height:20px;padding:0;font-size:10px;margin:0px 2px;width:90px;">Track Document</button></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col" style="width:1071px;height:27px;">
                    <nav style="width:940px;height:33px;">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                            <li class="page-item"><a class="page-link">1</a></li>
                            <li class="page-item"><a class="page-link">2</a></li>
                            <li class="page-item"><a class="page-link">3</a></li>
                            <li class="page-item"><a class="page-link">4</a></li>
                            <li class="page-item"><a class="page-link">5</a></li>
                            <li class="page-item"><a class="page-link" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-basic fixed-bottom" style="height:28px;margin:0px;padding:0px 0px;background-color:rgb(255,0,0);">
        <footer>
            <p class="copyright" style="color:rgb(255,255,255);margin:3px 0px 0px;">jkiqui-dts-v1 © 2018</p>
        </footer>
    </div>

    <div class="modal fade" role="dialog" tabindex="-1" id="editPassword" style="padding:0px 0px;margin:200px 0px;">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background-color:rgb(255,0,0);width:298px;margin:0px 0px;height:30px;padding:2px 2px;">
                    <h5 class="modal-title" style="color:rgb(0,255,255);margin:-2px 4px;">Change Password</h5><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
                <div class="modal-body" style="width:273px;">
                    <div class="row">
                        <div class="col"><small style="color:rgb(255,0,0);">Password was updated successfully.</small></div>
                    </div>
                    <div class="row">
                        <div class="col-auto" style="margin:0px 0px;"><label class="col-form-label" style="font-size:12px;">Enter Password:</label><input type="password" id="mPassword1" style="font-size:12px;margin:0px 21px;"></div>
                        <div class="col-auto" style="margin:0px 0px;"><label class="col-form-label" style="font-size:12px;">Reenter Password:&nbsp;</label><input type="password" id="mPassword2" style="font-size:12px;margin:5px;"></div>
                    </div>
                </div>
                <div class="modal-footer" style="height:35px;"><button class="btn btn-light btn-sm" type="button" id="mPasswordClose" data-dismiss="modal" style="height:23px;width:50px;margin:0px 0px;padding:0px 0px;">Close</button><button class="btn btn-primary btn-sm" type="button" id="mPasswordSave"
                        style="height:23px;padding:0px 0px;margin:0px 10px;width:45px;font-size:12px;">Save</button></div>
            </div>
        </div>
    </div>

    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/js/jquery.dataTables.min.js"></script>
    <script src="../assets/js/dataTables.bootstrap.min.js"></script>
</body>

</html>