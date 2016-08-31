---
layout: post
title: "Student Hackathon Topic 1"
date: 2016-08-22
---

<div class="border">
  <h4>Hackathon Topic 1: Extension of the existing PRAGMA Cloud Testbed site</h4>
</div>

**Description**: Setting up a node (with or without ENT) and registering the node to the PRAGMA Cloud
Scheduler. Possibly start a virtual cluster via cloud scheduler.

**Roadmap**

<h4><span class="strongword">1. Install and configure Rocks cluster frontend on a ZOTAC server.  </span></h4>

   * Using USB CD/DVD drive and a CD with Rocks 6.2 kernel ISO image install a
      cluster frontend. See the [Rocks Users Guide][1] for installation instructions:

   * For the section "Install and configure your frontend" you wil need the
     following info for your host (given to you):

     * IP address
     * Fully qualified domain name 
     * Gateway IP
     * DNS IP
     * netmask
     * for the "ksdevice" please use "eth1"

   * During the frontend install (you will be led to this screen) choose the following rolls:
 
     * kernel 
     * ganglia
     * hpc
     * web-server
     * python
     * perl
     * os
     * base
     * area51
     * kvm (this is responsible for virtualization)
     
     Kernel roll is on a CD, the rest of the rolls are installed over the network. 
     See section 3.5 of the install guide.

   * Enable Public web access to your frontend (see guide).

<h4><span class="strongword">2. Register your physical host with the PRAGMA Cloud Scheduler </span></h4>
   * Login at [Cloud Scheduler][4] with your team  user name and a password
     and register your physical host as a site. For an example registration
     see  **Responsibilities -> Resources** link. You will need to create a
     new resource. Info to edit:

         * Resource name
         * Resource Permisisons (use automatically granted)
         * Resource administrator (PRAGMA 31 students) 

     then click on "Add Resource" button. 

     In a new window provide information about **Additional Attributes**.
     Most values can be kept as the defaults that are presented in the example registration.
     Values to update:

         * Available CPUS (use 2)
         * Available Gb Memory (use 2)
         * Leave ENT-enable as "no". You can update this attribute later after configuriung ENT.
         * Provide correct  Latitude ad Longigtude  for your location.

<!--
<h4><span class="strongword">3. Create a vritual cluster</span></h4>
   * For the completion of this step you will need to install a virtual cluster
     on your physical frontend. For the virtual cluster you are given an IP
     and FQDN. A firt part of FQDN is the HOSTNAME (substitute your values in the commands below).
     Here is a set of commands to execute to create a virtual cluster:

         rocks add cluster IP 0 fe-name=HOSTNAME (creates needed info in rocks database)
         rocks set host vm HOSTNAME  mem=2048 (set 2Gb of memory for virtual frontend)
         rocks list host vm  (check that VM info is setup in the rocks database)
         rocks start host vm HOSTNAME   (start VM and its installation)

     Then start virtual maanger with :
        
         virt-manger

     In the virt-manager GUI window double click on the icon that represents
     your host name. This will open a new GUI window  and you can start
     installation similar to what you did for the physical frontend. 
     Choose all the rolls you did for the physical frontend except "kvm".
     After the installation is complete you  will see the icon with the name
	 of your virtual forntend and "Shutoff" status. 
	 
	 To start the virtual frontend after the install:

	     rocks start host vm HOSTNAME
	 
	 Once virtual frontend is jup and running and you can "ping" it,  ssh to your virtual frontend.
-->

<h4><span class="strongword">3. Install pragma_boot on the node </span></h4>

   Follow instructions in [this link][3]. When you come to the step of
   downloading virtual images, instead of emailing cloud admin use images from
   the USB drive.  The USB drive contains the repository with one virtual
   cluster image.

<h4><span class="strongword">4. Install and configure Open vSwitch on Rocks frontend </span></h4>
   * Follow instructions on [Installing Rocks6.2 cluster with Open vSwitch Roll][2]
     You will be able to execute the instructions for the physical frontend.
     Part of the instructions are for the virtual frontend that you created in
     a previous step.
   * If successfull, login at [Cloud Scheduler][1] and update your registered
     resource **ENT-enabled** attribute.


[1]: http://rocksclusters.github.io/docs/guides.html 
[2]: https://github.com/pragmagrid/pragma_ent/wiki/Installing-Rocks6.2-cluster-with-Open-vSwitch-Roll
[3]: https://github.com/pragmagrid/pragma_boot
[4]: http://fiji.rocksclusters.org/cloud-scheduler
