
Instructions for making edits for PRAGMA meeting 
=================================================

This is a summary of instructions for editing a specific PRAGMA meeting site.
Instructions here are for PRAGMA X meeting (for example, PRAGMA 33).

.. contents::

Introduction
--------------

DO NOT EDIT **_config.yaml** at the top level  This is a main jekyll layout file 
for the whole PRAGMA site, has no bearing for a specific meeting layout. 

The sections below outline what needs to be a edited.
The edits can be done from the GitHub  gui via web browser. 

Site Templates
------------------

Here is where your changes can go but not all need to be edited.
The basic site is already setup and all templates are are prepared for the specific meeting
site. Most of the time these do not require any changes unless the site layout 
needs to be updated.

#. main layout file _layouts/pragma33.html

   This file  specifies the layout for the pragma meeting site. 
   Specifically, the  top level tabs under the main image file and the menu on
   the left side.

#. include file _includes/menu-pragma33.html

   This file lists the menu items with their corresponding files. The menu is
   shown on the left hand side of  each page. If changes are needed, edit this
   file and create corresponding new files in _posts/pragma33/.
   A convention for a new file name : YYYY-MM-DD-pragma33-newFileTitle.
   A file must have an extention depending on the file format. Accepted
   formats are "md" and "html". Please see existing files for a reference.

#.  CSS formatting file _sass/_pragma33.scss   

   To invoke this file, add  a line in css/main.scss (done when making templates)


Site files 
----------------

These are the files that need to be edited with the correct content.
Current files available are pace holders.

#. all images go under images/pragma33/ 

   Further division into subdirectories is up to you

#. all pages go in _posts/pragma33/

   The naming convention similar to already existing templates files there

