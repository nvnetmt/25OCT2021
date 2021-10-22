#####################################################
#Script Name:   ChangeDuedate
#Description/Action: HR Can change the due dates of different tasks of performance document. 
#Manual Test Case used: ChangeDuedate
#Track/Module: Performance Managements
#Date Created:     17-Dec-2020
#Date Last Updated:
#Script Location:
#Parameters Available: Yes/No: Yes-Feature File(Refer Examples)
#Feature File Name/s used:    ChangeDuedate
#Unique Data Required or Not:    Yes - 
#Pre-Requisites (if Any)
#Automated Script to be executed as pre-req(if any): No
#Status Of script : (Dev/Review/Complete) - Dev
#Comments (if any):
#####################################################
Feature:  ChangeDuedate

Background: 
	Given Setup Reporting for ICICI 

  @HR_ChangeDuedate
  Scenario:  ChangeDuedate

Given User logs into application

#Databank parameters "DataBankSheetName", "RowNum"
 Then Input Data bank "ChangeDuedate","1"
When Click on HomeButton
Then Navigate To My Client Group Menus
Then Navigate To Performance Document page
Then Enter Required field and search the Performance Document "ReviewPeriod" "PerformanceDocument" "EmployeeNumber"
Then Change Due date and verify "DueDate"