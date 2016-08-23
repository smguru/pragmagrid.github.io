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
  real-time visualizations of the results  for PRAGMA Testbed sites. The
  visualization can be a google map (or other map) with PRAGMA sites
  geolocated.
* New visualization that monitors current bookings (running virtual clusters),
  on what sites, and what is remaining site availability. Possibly name of a
  virtual cluster (type of disk image requested. This info is specified in the
  booking request)

**Resources**:

  * Original Booked software used as a basis for the Cloud Scheduler, see [website][1]
    In the Booked website in **Help -> Contributions** there is a link to already
    written [API client][2] (PHP). This API may be used as a basis, or rewritten 
    using any other languge of your choice. If you choose this API, note:
      * one of the files has a bug. The fix is easy and will be evident from the PHP errors. 
      * for the configuration file of this API you will need to set the correct address for BOOKEDWEBSERVICESURL:<br>
        <code>const BOOKEDWEBSERVICESURL =
        'http://fiji.rocksclusters.org/cloud-scheduler/Web/Services/index.php';</code><br>
        and a time zone.
      * Example script using  PHP API:<br>
        <code>
        &lt;?php<br>
        session_start();<br>
        require_once 'bookedapi.php';<br>
        $username = 'youraccount';<br>
        $password = 'yourpassword';<br>
        $bookedApiUrl =<br>
        'http://fiji.rocksclusters.org/cloud-scheduler/Web/Services/index.php';<br>
        $bookedapiclient = new bookedapiclient($username, $password);<br>
        $bookedapiclient-> authenticate(true);<br>
        // get user information given user id <br>
        function GetUser($bookedapiclient, $userid) {<br>
            $userInfo = $bookedapiclient->getUser($userid);<br>
            print_r($userInfo);<br>
        }<br>
        GetUser($bookedapiclient, 1);<br>
		?&gt;<br>
        </code>

  * PRAGMA installation of cloud scheduler and its [website][3] 
  * PRAGMA installation Booked scheduler [API documentation][4]
  * Use your user registration given to you for the cloud scheduler [website][3]
    and the API  access because because one needs to be a user
    to be able to use API and the database queries. 

[1]: http://www.bookedscheduler.com 
[2]: https://github.com/TrueSerenity/booked-php-api-client 
[3]: http://fiji.rocksclusters.org/cloud-scheduler   
[4]: http://fiji.rocksclusters.org/cloud-scheduler/Web/Services
