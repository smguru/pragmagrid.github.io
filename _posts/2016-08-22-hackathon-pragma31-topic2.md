---
layout: post
title: "Student Hackathon Topic 2"
date: 2016-08-22
---

<div class="border">
  <h4>Hackathon Topic 2: Add more visibility and analytical ability to PRAGMA
  Cloud Testbed services </h4>
</div>

**Possible projects**: 

* An API for querying the Cloud Scheduler database for registered sites and 
  real-time visualizations of the results for PRAGMA Testbed sites. The
  visualization can be a google map (or other map) that shows PRAGMA sites
  geolocated.  Hint: each site has Latitude, Longitude, Name, ENT-enabled attributes
  that will need to be used. The result of this visualization should be viewed
  in the browser

* New visualization that monitors current bookings (each booking is a running virtual cluster).
  Each PRAGMA site information includes :

      * CPU available (total)
      * Memory available (total)
      * Name 
      * ENT-enabled or not

  Each reservationion information includes :

      * resource where it runs
      * CPU used
      * memory used
      * VC name (virtual cluster disk image name)

  You can choose to present site remaiing capacity, types of running bookings,
  etc. from using information about sites and runnign bookings. 
  The result of this visualizatio should be viewed in the browser.

**Resources**:

  * Original Booked software used as a basis for the Cloud Scheduler, see [website][1]
    In the Booked website in **Help -> Contributions** there is a link to already
    written [API client][2] (PHP). This API may be used as a basis, or rewritten 
    using any other languge of your choice. If you choose this API, note:

      * one of the files has a bug. The fix is easy and will be evident from the PHP errors. 
      * for the configuration file of this API you will need to set the correct address for BOOKEDWEBSERVICESURL:<br>
        ``const BOOKEDWEBSERVICESURL = 'http://fiji.rocksclusters.org/cloud-scheduler/Web/Services/index.php';``<br>
        and a time zone.
      * Example script using  PHP API:<br>

        ```php
        <?php
        session_start();
        require_once 'bookedapi.php';
        $username = 'youraccount';
        $password = 'yourpassword';
        $bookedApiUrl =
        'http://fiji.rocksclusters.org/cloud-scheduler/Web/Services/index.php';
        $bookedapiclient = new bookedapiclient($username, $password);
        $bookedapiclient-> authenticate(true);
  
        // get user information given user id 
        function GetUser($bookedapiclient, $userid) {
            &nbsp;&nbsp;&nbsp;  $userInfo = $bookedapiclient->getUser($userid);
            &nbsp;&nbsp;&nbsp;  print_r($userInfo);
        }
        GetUser($bookedapiclient, 1);
        ?>
        ``` 

  * PRAGMA installation of cloud scheduler and its [website][3] 
  * PRAGMA installation Booked scheduler [API documentation][4]
  * Use your user registration given to you for the cloud scheduler [website][3]
    and the API  access because because one needs to be a user
    to be able to use API and the database queries. 

[1]: http://www.bookedscheduler.com 
[2]: https://github.com/TrueSerenity/booked-php-api-client 
[3]: http://fiji.rocksclusters.org/cloud-scheduler   
[4]: http://fiji.rocksclusters.org/cloud-scheduler/Web/Services
