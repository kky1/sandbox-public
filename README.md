# sql-queries-shared
Queries for PSU Research team

A repository of commonly-used queries to share amongst colleagues.

You can also find these files [here](https://psu.app.box.com/folder/128933181789)

## Prerequistes
1. Install Git [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) on your desktop
2. Create a [GitHub](https://github.com/) Account online
3. Install [Visual Studio Code](https://code.visualstudio.com/download) (VSC) or [Azure Data Studio](https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15) (ADS).

    >* Whether downloading VSC or ADS, you'll want to choose the User Installer option for Windows.
    >* For VSC, specify the 64 bit download.
    >* Since VSC is white-listed by Penn State, it doesn't require IT admin credentials to install.
    >* For ADS, you'll need to email DDAR support to ask them to use IT admin credentials to finish the install after downloading.

## Getting Started
*Note: These instructions were made using Azure Data Studio (ADS) as opposed to Visual Studio Code (VSC); however, the interfaces are similar. VSC requires you to first download SQL extension before you can use it.* 
1. Install VSC or ADS. If installing ADS, you will need to close the program and reboot your machine after installation in order to access the warehouse servers.
2. Connect ADS to the warehouse "adis" server. On the ADS welcome screen, choose to create a connection to open the Connection dialogue pop-up screen. 
3. In the Connection Details screen at the bottom, complete with the following info:

    >* Connection type: Microsoft SQL Server
    >* Server: d5-inet-db.ad.psu.edu
    >* Authentication type: Windows Authentication
    >* User name: (This field will be grayed out)
    >* Password: (This field will be grayed out)
    >* Database: adis
    >* Server group: <Default>
    >* Name (optional): *Here you could enter a custom name for this server*
    >* You do not need to use the “advanced options” screen.

    Note: You can repeat this process to **create a 2nd connection to the "analytics" server**. Just choose the **Database: anaytics** from the drop down.

## Navigating Visual Studio Code or Azure Data Studio
The vertical bar on the left contains six icons to help you navigate. Starting from the top:

 >* Connections - this is where you can find the warehouse tables & views on the server to which you are connected. This is helpful to look up field names or table content. See snippet below.
 >* Search - not used routinely for our purposes
 >* Notebook - not used routinely for our purposes
 >* Explorer - this is where your queries are stored. We do not have the permissions to create functions or stored procedures. We are also not able to insert or alter live tables; however, we can create temp tables and alter them (just as we did in Access).
 >* Source Control - this is where you commit (or update) the queries you have built in Git on your machine. You must commit queries before you can push (or send them to be updated online) to Github.
  >* Extensions - VSC and ADS allows you to download extensions. In VSC, you must do this before getting started. In ADS, you can skip this step. Some extensions allow for the visualization of your list results into charts, etc.

## Screenshots
[![Connections Icon](https://github.com/kky1/sql-queries-shared/blob/main/screenshots/ADS%20navigation.JPG)]



## Helpful Resources

1. [Introduction to Using Git and GitHub](https://docs.microsoft.com/en-us/learn/modules/introduction-to-github/). Composed of 5 modules, the complete training is about an hour long. 
2. [How to Integrate Git to your GitHub online account](https://www.sqlshack.com/integrating-azure-data-studio-with-git-and-github/). This page provides step-by-step screenshots on the process, including how to create a respository and then link it to your Git in Azure Data Studio (or Visual Studio Code-same process) using GitHub.

