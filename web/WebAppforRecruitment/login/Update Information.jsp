<%--
Created by IntelliJ IDEA.
User: ADITYA
Date: 27 Jun 2018
Time: 01:18 PM
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Information</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script src="../jquery/3.3.1/jquery.min.js"></script>
    <script src="../jquery/popper.js/1.14.3/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</head>
<body>
<header>
    <nav class="navbar sticky-top navbar-light bg-light" style="border-bottom-color: #000">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">
                    <img class="img-fluid float-left" src="../Images/form-background.png"
                         style="margin-left: 5rem;max-width: 7%; height: auto">
                    <img class="img-fluid " src="../Images/mnnit%20name.png"
                         style="margin-left: 3rem;max-width: 80%;height: auto">
                </a>
            </div>
        </div>
    </nav>
    <div class="jumbotron" style="height: 10%">
        <div class="container">
            <h1>Recruitment Portal</h1>
            <div class="bg-dark rounded">
                <h3 class="text-primary" style="color: #FFF;padding: 1%;">Update Information</h3>
            </div>
        </div>
    </div>
</header>
<div class="container align-middle align-content-center align-items-center">
    <div class="row">
        <div class="col-sm-4">
            <div class="list-group" id="list-tab" role="tablist">
                <a class="list-group-item list-group-item-action active" id="list-PersonalInfo-list" data-toggle="list" href="#list-PersonalInfo" role="tab" aria-controls="Personal Information">Personal Information</a>
                <a class="list-group-item list-group-item-action " id="list-Publication-list" data-toggle="list" href="#list-Publication" role="tab" aria-controls="Publication">Publications</a>
                <a class="list-group-item list-group-item-action " id="list-Patent-list" data-toggle="list" href="#list-Patent" role="tab" aria-controls="Patent">Patent</a>
                <a class="list-group-item list-group-item-action " id="list-PhDSupervision-list" data-toggle="list" href="#list-PhDSupervision" role="tab" aria-controls="PhD Supervision">Ph.D Supervision</a>
                <a class="list-group-item list-group-item-action " id="list-PGSupervision-list" data-toggle="list" href="#list-PGSupervision" role="tab" aria-controls="PG Supervision">PG Supervision</a>
                <a class="list-group-item list-group-item-action " id="list-BTechProjectGuided-list" data-toggle="list" href="#list-BTechProjectGuided" role="tab" aria-controls="BTech Project">B.Tech Project Guided</a>
                <a class="list-group-item list-group-item-action " id="list-ActedAsReviewer-list" data-toggle="list" href="#list-ActedAsReviewer" role="tab" aria-controls="Reviewer">Acted As A Reviewer</a>
                <a class="list-group-item list-group-item-action " id="list-ExpertInvitedLecture-list" data-toggle="list" href="#list-ExpertInvitedLecture" role="tab" aria-controls="Invited Lecture">Expert/Invited Lecture Delivered</a>
                <a class="list-group-item list-group-item-action " id="list-ResearchProjectInvestigated-list" data-toggle="list" href="#list-ResearchProjectInvestigated" role="tab" aria-controls="Research Project Guided">Research Project Investigated</a>
                <a class="list-group-item list-group-item-action " id="list-AwardsHonourReceived-list" data-toggle="list" href="#list-AwardsHonourReceived" role="tab" aria-controls="Awards and Honour">Award/Honour Received</a>
                <a class="list-group-item list-group-item-action " id="list-EventAttended-list" data-toggle="list" href="#list-EventAttended" role="tab" aria-controls="Events Attended">Event Attended</a>
                <a class="list-group-item list-group-item-action " id="list-ExpertLectureOrganized-list" data-toggle="list" href="#list-ExpertLectureOrganized" role="tab" aria-controls="Expert Lecture Organized">Expert Lecture Organized</a>
                <a class="list-group-item list-group-item-action " id="list-ConsultancyProvided-list" data-toggle="list" href="#list-ConsultancyProvided" role="tab" aria-controls="Consultancy Provided">Consultancy Provided</a>
            </div>
        </div>
        <div class="col-sm-8">
            <div class="tab-content" id="nav-tabContent">
                <!--------------Personal Information-------------->
                <div class="tab-pane fade show active" id="list-PersonalInfo" role="tabpanel" aria-labelledby="list-PersonalInfo-list">
                    <ul class="nav nav-pills mb-3" id="Personal-Information-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Contact</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">...</div>
                        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">...</div>
                        <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">...</div>
                    </div>
                </div>
                <!--------------Publication-------------->
                <div class="tab-pane fade" id="list-Publication" role="tabpanel" aria-labelledby="list-Publication-list">
                    <%@include file="\WebAppforRecruitment\Forms\Publications.html"%>
                </div>
                <!--------------Patent-------------->
                <div class="tab-pane fade" id="list-Patent" role="tabpanel" aria-labelledby="list-Patent-list">
                    <%--
                    @include file="Forms"
                    --%>
                </div>
                <!--------------PhDSupervision-------------->
                <div class="tab-pane fade" id="list-PhDSupervision" role="tabpanel" aria-labelledby="list-PhDSupervision-list">
                    Phd Supervision
                </div>
                <!--------------PGSupervision-------------->
                <div class="tab-pane fade" id="list-PGSupervision" role="tabpanel" aria-labelledby="list-PGSupervision-list">
                    PG Supervision
                </div>
                <!--------------Btech Project guided-------------->
                <div class="tab-pane fade" id="list-BTechProjectGuided" role="tabpanel" aria-labelledby="list-BTechProjectGuided-list">
                    Btech Project Guided
                </div>
                <!--------------Acted As Reviewer-------------->
                <div class="tab-pane fade" id="list-ActedAsReviewer" role="tabpanel" aria-labelledby="list-ActedAsReviewer-list">
                    Acted As A Reviewer
                </div>
                <!--------------ExpertInvited Lecture-------------->
                <div class="tab-pane fade" id="list-ExpertInvitedLecture" role="tabpanel" aria-labelledby="list-ExpertInvitedLecture-list">
                    Expert Invited Lecture
                </div>
                <!--------------Research Project Investigated-------------->
                <div class="tab-pane fade" id="list-ResearchProjectInvestigated" role="tabpanel" aria-labelledby="list-ResearchProjectInvestigated-list">
                    Research Project Investigated
                </div>
                <!--------------Awards Honour Received-------------->
                <div class="tab-pane fade" id="list-AwardsHonourReceived" role="tabpanel" aria-labelledby="list-AwardsHonourReceived-list">
                    Awards Honour Received
                </div>
                <!--------------Event Attended-------------->
                <div class="tab-pane fade" id="list-EventAttended" role="tabpanel" aria-labelledby="list-EventAttended-list">
                    Event Attended
                </div>
                <!--------------Expert Lecture Organized-------------->
                <div class="tab-pane fade" id="list-ExpertLectureOrganized" role="tabpanel" aria-labelledby="list-ExpertLectureOrganized-list">
                    Expert Lecture Organized
                </div>
                <!--------------Consultancy Provided-------------->
                <div class="tab-pane fade" id="list-ConsultancyProvided" role="tabpanel" aria-labelledby="list-ConsultancyProvided-list">
                    Consultancy Provided
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card-footer align-bottom mt-2" style="background-color: #c4c4c4">
    <div class="container text-muted text-center rounded">This is footer</div>
</div>

</body>
</html>